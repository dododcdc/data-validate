package com.farben.check.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.farben.check.common.ResultVo;
import com.farben.check.entity.WbFieldRule;
import com.farben.check.service.IWbFieldRuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static com.baomidou.mybatisplus.core.toolkit.Wrappers.query;

/**
 * @Classname
 * @Description
 * @Date 2020/12/6 14:30
 * @Author benson
 **/
@RestController
@RequestMapping("fieldrules")
public class WbFieldRuleController {

    @Autowired
    private IWbFieldRuleService iWbFieldRuleService;

    @PostMapping("/add")
    public ResultVo add(@RequestBody WbFieldRule wbFieldRule) {

        QueryWrapper<WbFieldRule> qy = new QueryWrapper<>();
        qy.eq("db_id",wbFieldRule.getDbId())
                .eq("table_name",wbFieldRule.getTableName())
                .eq("field_name",wbFieldRule.getFieldName());
        List<WbFieldRule> list = iWbFieldRuleService.list(qy);
        if (list.size()>0) {
            wbFieldRule.setId(list.get(0).getId());
        }
        iWbFieldRuleService.saveOrUpdate(wbFieldRule);
        return ResultVo.success();
    }



}
