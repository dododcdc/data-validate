package com.farben.check.service;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.farben.check.entity.WbMetadataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.HashMap;

/**
 * @Classname
 * @Description
 * @Date 2020/12/7 11:18
 * @Author benson
 **/
public class BaseService {

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
}
