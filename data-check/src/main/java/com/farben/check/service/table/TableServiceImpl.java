package com.farben.check.service.table;

import com.farben.check.container.DataContainer;
import com.farben.check.entity.WbMetadataSource;
import com.farben.check.entity.response.PageList;
import com.farben.check.service.BaseService;
import com.farben.check.service.IWbMetadataSourceService;
import com.farben.check.service.table.impl.ITableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * @Classname
 * @Description
 * @Date 2020/12/7 11:15
 * @Author benson
 **/
@Service
public class TableServiceImpl extends BaseService implements ITableService {
    @Autowired
    private IWbMetadataSourceService iWbMetadataSourceService;

    @Override
    public List<PageList> list(Integer dbId) throws Exception {
        //先从容器获取
        JdbcTemplate jdbcTemplate = DataContainer.JTS.getOrDefault(dbId, null);
        //如果没有去数据库查询
        if (jdbcTemplate == null) {
            WbMetadataSource db = iWbMetadataSourceService.getById(dbId);
            jdbcTemplate = getJdbcTemplate(db);
            //并将新的添加到容器
            DataContainer.JTS.put(dbId, jdbcTemplate);
        }

        String sql = "show tables";

        // 查询该库下所有表
        List<PageList> res = jdbcTemplate.query(sql, new RowMapper<PageList>() {
            @Override
            public PageList mapRow(ResultSet rs, int i) throws SQLException {
                String str = rs.getString(1);
                return PageList.builder().tableName(str).build();
            }
        });

        return res;
    }
}
