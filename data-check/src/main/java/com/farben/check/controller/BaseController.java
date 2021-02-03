package com.farben.check.controller;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.farben.check.entity.WbMetadataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.HashMap;

/**
 * @Classname
 * @Description
 * @Date 2020/11/29 23:33
 * @Author benson
 **/
public class BaseController {


    /**
     * 创建jdbcTemplat
     * @param db
     * @return
     * @throws Exception
     */
    public JdbcTemplate getJdbcTemplate(WbMetadataSource db) throws Exception{
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
