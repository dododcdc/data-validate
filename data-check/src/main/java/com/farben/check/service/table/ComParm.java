package com.farben.check.service.table;


import com.farben.check.entity.ResSql;

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
    private List<String> fields;

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
     *
     * @param comParm
     * @return
     */
    public ResSql compConcat(ComParm comParm) {
        // todo 拼接对比sql
        ResSql resSql = new ResSql();
        StringBuilder str = new StringBuilder("SELECT COUNT(*)");
        String tmp = "";
        for (int i = 0; i < comParm.fields.size(); i++) {
            tmp += ",SUM(CASE WHEN X." + this.fields.get(i) + " <> Y." + comParm.fields.get(i) +
                    " THEN 1 ELSE 0 END) AS " + this.fields.get(i) + " FROM ";
        }
        return resSql;
    }

    /**
     * 生成表数据量对比sql
     *
     * @param comParm
     * @return
     */
    public ResSql compCount(ComParm comParm) {
        ResSql resSql = new ResSql();
        StringBuilder str = new StringBuilder("SELECT  YC AS 原表数据量, MC AS 目标表数据量 FROM ( SELECT COUNT(*) AS YC FROM ");
        str.append(this.dbName).append(".").append(this.tableName);
        if (this.bizDate != null && !this.bizDate.equals("")) {
            str.append(" WHERE ").append(this.bizDateName).append("='")
                    .append(this.bizDate).append("'");
        }
        str.append(") X JOIN (SELECT COUNT(*) AS MC FROM ").append(comParm.dbName);
        str.append(".").append(comParm.tableName);
        if (comParm.bizDate != null && !comParm.bizDate.equals("")) {
            str.append(" WHERE ").append(comParm.bizDateName).append("='")
                    .append(comParm.bizDate).append("'");
        }
        str.append(") Y ON 1=1");
        resSql.setDetail(str.toString());

        resSql.setRes(str.toString().replaceAll("YC AS 原表数据量, MC AS 目标表数据量", "YC - MC AS RES"));

        String total = "SELECT COUNT(*) AS YC FROM " + this.dbName
                + "." + this.tableName;
        if (this.bizDate != null && !this.bizDate.equals("")) {
            total = total + " WHERE " + this.bizDateName
                    + "='" + this.bizDate + "'";
        }
        resSql.setTotal(total);

        return resSql;

    }

}
