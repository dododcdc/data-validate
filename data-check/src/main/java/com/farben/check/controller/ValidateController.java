package com.farben.check.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.farben.check.common.ResultVo;
import com.farben.check.entity.WbFieldRule;
import com.farben.check.entity.res.CheckResultVo;
import com.farben.check.entity.res.ValiTableVo;
import com.farben.check.service.IWbFieldRuleService;
import com.farben.check.service.validate.IValidateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedList;
import java.util.List;

/**
 * @Classname
 * @Description
 * @Date 2020/12/6 16:48
 * @Author benson
 **/
@RestController
@RequestMapping("validate")
public class ValidateController {

    @Autowired
    private IValidateService iValidateService;
    @Autowired
    private IWbFieldRuleService iWbFieldRuleService;

    /**
     *
     * @param dbId
     * @param tableName
     * @return
     */
    @GetMapping("/table")
    public ResultVo validateTable(Integer dbId, String tableName){
        List<ValiTableVo>  res = iValidateService.valiTable(dbId, tableName);
        return ResultVo.success(res);
    }

    /**
     * 单个字段的校验
     * @param wbFieldRule
     * @return
     */
    @PostMapping("/field")
    public ResultVo action(@RequestBody WbFieldRule wbFieldRule) {
        // 查出codes
        QueryWrapper<WbFieldRule> qy = new QueryWrapper<>();
        qy.eq("db_id",wbFieldRule.getDbId())
                .eq("table_name",wbFieldRule.getTableName())
                .eq("field_name",wbFieldRule.getFieldName());

        WbFieldRule wr = iWbFieldRuleService.getOne(qy);

        LinkedList<CheckResultVo> vos = iValidateService.validateField(wr);
        return ResultVo.success(vos);
    }
}
