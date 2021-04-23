package com.farben.check.service.validate.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.farben.check.container.DataContainer;
import com.farben.check.entity.WbFieldRule;
import com.farben.check.entity.WbMetadataSource;
import com.farben.check.entity.WbRule;
import com.farben.check.entity.response.CheckResultVo;
import com.farben.check.entity.response.ValiTableVo;
import com.farben.check.service.BaseService;
import com.farben.check.service.IWbFieldRuleService;
import com.farben.check.service.IWbMetadataSourceService;
import com.farben.check.service.IWbRuleService;
import com.farben.check.service.validate.IValidateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.util.*;

/**
 * @Classname
 * @Description
 * @Date 2020/12/6 15:26
 * @Author benson
 **/
@Service
public class ValidateServiceImpl implements IValidateService {


    @Autowired
    private IWbRuleService iWbRuleService;

    @Autowired
    private IWbFieldRuleService iWbFieldRuleService;

    @Autowired
    private IWbMetadataSourceService iWbMetadataSourceService;

    @Autowired
    private BaseService baseService;

    @Override
    public LinkedList<CheckResultVo> validateField(WbFieldRule wbFieldRule) {

        LinkedList<CheckResultVo> ct = new LinkedList<>();

        if (wbFieldRule == null) {
            return ct;
        }
        // 获取资源的jdbcTemplate
        JdbcTemplate jdbcTemplate = DataContainer.JTS.get(wbFieldRule.getDbId());
        //拿到该字段的所有校验规则
        String[] codes = wbFieldRule.getCode().split(",");

        for (String code : codes) {
            QueryWrapper<WbRule> lw = new QueryWrapper<WbRule>();
            lw.eq("code", code);
            WbRule wbRule = iWbRuleService.getOne(lw, true);
            // 拿到sql模板
            String sql = wbRule.getValidateSql();
            // 将sql 中的 ${table} 和 ${field} 替换掉
            sql = sql.replaceAll("\\$\\{table}", wbFieldRule.getTableName())
                    .replaceAll("\\$\\{field}", wbFieldRule.getFieldName());
            Integer count = jdbcTemplate.queryForObject(sql, Integer.class);
            // todo count>0则不通过
            CheckResultVo isPass = CheckResultVo.builder().dbId(wbFieldRule.getDbId())
                    .tableName(wbFieldRule.getTableName())
                    .description(wbRule.getDescription())
                    .fieldName(wbFieldRule.getFieldName()).build();;
            if (count > 0) {
                isPass.setIsPass("不通过");
            } else {
                isPass.setIsPass("通过");
            }
            ct.add(isPass);
        }
        return ct;
    }

    @Override
    public List<ValiTableVo> valiTable(Integer dbId, String tableName) {

        // 根据dbId tablename 查出这个表下所有 的字段规则
        QueryWrapper<WbFieldRule> qw = new QueryWrapper<>();
        qw.eq("db_id",dbId).eq("table_name",tableName);
        List<WbFieldRule> list = iWbFieldRuleService.list(qw);
        List<ValiTableVo> res = new LinkedList<>();

        WbMetadataSource ms = iWbMetadataSourceService.getById(dbId);
        String[] split = ms.getUrl().split("/");
        String dbName = split[split.length - 1];
        for (WbFieldRule wbFieldRule : list) {
            LinkedList<CheckResultVo> vos = validateField(wbFieldRule);
            ValiTableVo build = ValiTableVo.builder()
                    .dbId(dbId)
                    .dbName(dbName)
                    .tableName(tableName)
                    .fieldName(wbFieldRule.getFieldName())
                    .pl(vos).build();
            res.add(build);
        }
        return res;
    }


    @Override
    public void doVali(Integer dbId, String tableName) throws Exception {

        JdbcTemplate jdbcTemplate = baseService.get(dbId);
        DataSource dataSource = jdbcTemplate.getDataSource();
        Connection connection = dataSource.getConnection();
        DatabaseMetaData metaData = connection.getMetaData();
        String dbName = baseService.getDbName(dbId);
        ResultSet columns = metaData.getColumns(null, dbName, tableName, null);

        // 存放类型，该类型对应的所有字段
        HashMap<String, List<String>> sl = new HashMap<>();

        while (columns.next()) {
            // 长度
            int columnSize = columns.getInt("COLUMN_SIZE");
            //字段名
            String fileName = columns.getString(4);
            // 类型
            String fileTypeName = columns.getString(6);
            //是否有这个类型
            List<String> orDefault = sl.getOrDefault(fileTypeName, null);

            if (orDefault == null) {
                sl.put(fileTypeName, Arrays.asList(fileName+"."+columnSize));
            }else {
                orDefault.add(fileName);
                sl.put(fileTypeName,orDefault);
            }

        }

        //跑所有字段都会进行的校验(null值校验)

        // 遍历sl，不同的类型做不同的校验，对长度小于5的做枚举值校验

        List<String> vas = Arrays.asList("STRING", "VARCHAR");

        List<String> ins = Arrays.asList("INT", "DECIMAL", "BIGINT", "DOUBLE");


        connection.close();

    }
}
