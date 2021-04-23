package com.farben.check.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.farben.check.entity.WbMetadataSource;
import com.farben.check.mapper.WbMetadataSourceMapper;
import com.farben.check.service.IWbMetadataSourceService;
import org.springframework.stereotype.Service;

/**
 * @Classname
 * @Description
 * @Date 2020/11/27 9:53
 * @Author benson
 **/
@Service
public class WbMetadataSourceServiceImpl
        extends ServiceImpl<WbMetadataSourceMapper, WbMetadataSource>
        implements IWbMetadataSourceService {

}
