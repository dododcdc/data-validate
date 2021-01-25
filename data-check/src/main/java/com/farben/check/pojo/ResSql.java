package com.farben.check.pojo;

/**
 * @Classname
 * @Description
 * @Date 2021/3/10 10:21
 * @Author benson
 **/
public class ResSql {

    /**
     * 校验sql
     */
    private  String res;
    /**
     * 明细
     */
    private String detail;

    /**
     * 总条数
     */
    private String total;

    public ResSql() {
    }

    public ResSql(String res, String detail) {
        this.res = res;
        this.detail = detail;
    }

    public String getRes() {
        return res;
    }

    public String getDetail() {
        return detail;
    }

    public void setRes(String res) {
        this.res = res;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
}

