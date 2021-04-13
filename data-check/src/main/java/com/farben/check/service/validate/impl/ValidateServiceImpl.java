package com.farben.check.service.validate.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.farben.check.common.ResultVo;
import com.farben.check.container.DataContainer;
import com.farben.check.entity.WbFieldRule;
import com.farben.check.entity.WbMetadataSource;
import com.farben.check.entity.WbRule;
import com.farben.check.entity.response.CheckResultVo;
import com.farben.check.entity.response.ValiTableVo;
import com.farben.check.service.IWbFieldRuleService;
import com.farben.check.service.IWbMetadataSourceService;
import com.farben.check.service.IWbRuleService;
import com.farben.check.service.validate.IValidateService;
import org.apache.hadoop.hive.metastore.ObjectStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

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
}
