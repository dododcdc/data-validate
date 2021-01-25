package com.farben.check.service.table.impl;

import com.farben.check.pojo.response.PageList;

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
     * @param dbId
     * @return
     */
    public List<PageList>  list(Integer dbId) throws Exception;

}
