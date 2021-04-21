package com.farben.check.service.table.impl;

import com.farben.check.entity.response.PageList;

import java.util.List;

/**
 * @Classname
 * @Description
 * @Date 2020/12/7 11:13
 * @Author benson
 **/
public interface ITableService {

    /**
     * 查询所有表
     *
     * @param dbId
     * @return
     */
    List<PageList> list(Integer dbId) throws Exception;

    /**
     * 模糊搜索表
     * @param dbId
     * @param tableName
     * @return
     * @throws Exception
     */
    List<PageList> listLikeTableName(Integer dbId, String tableName) throws Exception;


    /**
     * 查询表总记录数
     * @param dbId
     * @param tableName
     * @return
     * @throws Exception
     */
    Integer count(Integer dbId, String tableName) throws Exception;

}
