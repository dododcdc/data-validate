package com.farben.check.service.validate;

import com.farben.check.entity.WbFieldRule;
import com.farben.check.entity.response.CheckResultVo;
import com.farben.check.entity.response.ValiTableVo;

import java.util.LinkedList;
import java.util.List;

/**
 * @Classname
 * @Description 字段校验
 * @Date 2020/12/6 15:15
 * @Author benson
 **/
public interface IValidateService {

    /**
     * 字段校验 返回0则通过否则不通过
     * @param wbFieldRule
     * @return
     */
     LinkedList<CheckResultVo> validateField(WbFieldRule wbFieldRule) ;


    /**
     * 表级校验(对这个表的所有规则进行校验)
     * @param dbId
     * @param tableName
     * @return
     */
     List<ValiTableVo> valiTable(Integer dbId,String tableName) ;


    /**
     * 执行所有基础性校验
     * @param dbId
     * @param tableName
     */
    void doVali(Integer dbId, String tableName) throws Exception ;


}
