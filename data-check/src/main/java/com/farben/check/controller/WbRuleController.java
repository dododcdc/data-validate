package com.farben.check.controller;

import com.farben.check.common.ResultVo;
import com.farben.check.entity.WbRule;
import com.farben.check.service.IWbRuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Classname
 * @Description 规则
 * @Date 2020/12/5 10:36
 * @Author benson
 **/
@RestController
@RequestMapping("wb-rule")
public class WbRuleController {

    @Autowired
    private IWbRuleService iWbRuleService;

    /**
     * 查询所有的规则
     * @return
     */
    @GetMapping("/list")
    public ResultVo list () {
        List<WbRule> rules = iWbRuleService.list();
        return ResultVo.success(rules);
    }

    /**
     * 根据id查询规则
     * todo 查询改为传入多个
     * @param id
     * @return
     */
    @GetMapping("/getRuleById")
    public ResultVo getRuleById( @PathVariable("id") Integer id) {
        WbRule rule = null;
        try  {
            rule = iWbRuleService.getById(id);
        } catch (Exception e) {
            ResultVo.fail();
        }
        return ResultVo.success(rule);
    }

    /**
     * 添加规则
     * @param wbRule
     * @return
     */
    @PostMapping("/add")
    public ResultVo add(WbRule wbRule) {
        boolean save = iWbRuleService.save(wbRule);
        return ResultVo.success();
    }
}
