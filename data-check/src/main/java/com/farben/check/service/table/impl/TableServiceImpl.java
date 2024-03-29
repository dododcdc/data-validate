package com.farben.check.service.table.impl;

import com.farben.check.entity.WbMetadataSource;
import com.farben.check.entity.response.PageList;
import com.farben.check.service.BaseService;
import com.farben.check.service.IWbMetadataSourceService;
import com.farben.check.service.table.ITableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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

        JdbcTemplate jdbcTemplate = get(dbId);

        String sql = "show tables";

        // 查询该库下所有表
        List<String> str = jdbcTemplate.queryForList(sql,String.class);
        List<PageList> pls = new ArrayList<>();
        for (String s : str) {
            pls.add(PageList.builder().tableName(s).build());
        }
        return pls;
//        List<PageList> res = jdbcTemplate.query(sql, new RowMapper<PageList>() {
//            @Override
//            public PageList mapRow(ResultSet rs, int i) throws SQLException {
//                String str = rs.getString(1);
//                return PageList.builder().tableName(str).build();
//            }
//        });
//        return res;
    }

    @Override
    public List<PageList> listLikeTableName(Integer dbId , String tableName) throws Exception {

        JdbcTemplate jdbcTemplate = get(dbId);
        WbMetadataSource ds = iWbMetadataSourceService.getById(dbId);
        String sql ;
        if (tableName==null || tableName.isEmpty() || tableName.equals("undefined")) {
            sql = "SHOW TABLES";
        }
        else if (ds.getDriver().equals("org.apache.hive.jdbc.HiveDriver")){
            sql = "SHOW TABLES LIKE '*" + tableName + "*' ";
        } else {
            sql = "SHOW TABLES LIKE '%" + tableName + "%' ";
        }
        List<String> tables = jdbcTemplate.queryForList(sql,String.class);
        ArrayList<PageList> pageLists = new ArrayList<>();
        tables.forEach(x -> {
            pageLists.add(PageList.builder().tableName(x).build());
        });

        return pageLists;
    }

    @Override
    public Integer count(Integer dbId, String tableName) throws Exception {
        JdbcTemplate jdbcTemplate = get(dbId);

        String sql = "SELECT COUNT(*) FROM " + tableName;
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class);

        return count;
    }


}
