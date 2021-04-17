package com.farben.check.service.table;


import java.util.List;

/**
 * 表数据对比
 */
public class ComParm {
    /**
     * 库名
     */
    private String dbName;
    /**
     * 表名
     */
    private String tableName;
    /**
     * 需要比较的字段名
     */
    private List<String> fields ;


    public ComParm() {

    }

    public ComParm(String dbName, String tableName, List<String> fields) {
        this.dbName = dbName;
        this.tableName = tableName;
        this.fields = fields;
    }

    /**
     * 生成表数据对比sql
     * @param comParm
     * @return
     */
    public String compConcat(ComParm comParm) {
        // todo 拼接对比sql
        return  "";
    }

    /**
     * 生成表数据量对比sql
     * @param comParm
     * @return
     */
    public String compCount(ComParm comParm) {
        // todo 拼接对比sql
      return  "";
    }

}
