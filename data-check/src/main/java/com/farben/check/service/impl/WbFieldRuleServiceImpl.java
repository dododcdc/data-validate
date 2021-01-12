package com.farben.check.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.farben.check.entity.WbFieldRule;
import com.farben.check.mapperr.WbFieldRuleMapper;
import com.farben.check.service.IWbFieldRuleService;
import org.springframework.stereotype.Service;

/**
 * @Classname
 * @Description
 * @Date 2020/12/6 14:24
 * @Author benson
 **/
@Service
public class WbFieldRuleServiceImpl
    extends ServiceImpl<WbFieldRuleMapper,WbFieldRule>
    implements IWbFieldRuleService
{
}
