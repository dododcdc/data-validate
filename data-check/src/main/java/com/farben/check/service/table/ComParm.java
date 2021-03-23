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

    /**
     * 业务键
     */
    private List<String> pks;

    /**
     * 跑批日期
     */
    private String bizDate;

    /**
     * 跑批日期字段名
     */
    private String bizDateName;

    public ComParm() {

    }

    public ComParm(String dbName, String tableName, List<String> fields, List<String> pks, String bizDate, String bizDateName) {
        this.dbName = dbName;
        this.tableName = tableName;
        this.fields = fields;
        this.pks = pks;
        this.bizDate = bizDate;
        this.bizDateName = bizDateName;
    }

    /**
     * 生成表数据对比sql
     * @param comParm
     * @return
     */
    public String compConcat(ComParm comParm) {
        // todo 拼接对比sql

        StringBuilder str = new StringBuilder("SELECT COUNT(*)");
        String tmp = "";
        for (int i = 0; i < comParm.fields.size(); i++) {
            tmp += ",SUM(CASE WHEN X." + this.fields.get(i) + " <> Y." + comParm.fields.get(i) +
            " THEN 1 ELSE 0 END) AS " + this.fields.get(i) + " FROM " ;
        }
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
