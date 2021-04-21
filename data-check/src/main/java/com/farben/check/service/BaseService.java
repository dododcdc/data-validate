package com.farben.check.service;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.farben.check.container.DataContainer;
import com.farben.check.entity.WbMetadataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;

/**
 * @Classname
 * @Description
 * @Date 2020/12/7 11:18
 * @Author benson
 **/
@Service
public class BaseService {

    @Autowired
    private IWbMetadataSourceService iWbMetadataSourceService;


    public JdbcTemplate getJdbcTemplate(WbMetadataSource db) throws Exception {
        HashMap<String, String> map = new HashMap<>();
        map.put("url",db.getUrl());
        map.put("username",db.getUsername());
        map.put("password",db.getPassword());
        map.put("driverClassName",db.getDriver());
        map.put("initialSize","2");
        JdbcTemplate jt = new JdbcTemplate(DruidDataSourceFactory.createDataSource(map));
        return jt;
    }

    public JdbcTemplate get(Integer dbId) throws Exception {
        //先从容器获取
        JdbcTemplate jdbcTemplate = DataContainer.JTS.getOrDefault(dbId, null);
        //如果没有去数据库查询
        if (jdbcTemplate == null) {
            WbMetadataSource db = iWbMetadataSourceService.getById(dbId);
            jdbcTemplate = getJdbcTemplate(db);
            //并将新的添加到容器
            DataContainer.JTS.put(dbId, jdbcTemplate);
        }

        return jdbcTemplate;
    }
}
