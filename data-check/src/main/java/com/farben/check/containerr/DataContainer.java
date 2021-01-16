package com.farben.check.containerr;



import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

/**
 * @Classname
 * @Description 用来存连接池
 * @Date 2020/11/28 19:51
 * @Author benson
 **/
public class DataContainer {
    /**
     * key:库名
     * value: 连接池
     */
    public static Map<Integer, DataSource> map = new HashMap<>();

    /**
     * 库
     * jdbcTemplate
     */
    public static Map<Integer, JdbcTemplate> JTS = new HashMap<>();

    //初始化
    static {

        // 从数据库查询所有数据源

        // 将这些数据源生成jdbcTemplate 放入JTS中


    }

}
