package com.farben.check.service.validate;

import com.farben.check.common.ResultVo;
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
    public LinkedList<CheckResultVo> validateField(WbFieldRule wbFieldRule) ;


    public List<ValiTableVo> valiTable(Integer dbId,String tableName) ;


}
