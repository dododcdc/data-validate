package com.farben.check.controller;

import com.farben.check.common.ResultVo;
import com.farben.check.containerr.DataContainer;
import com.farben.check.entity.WbMetadataSource;
import com.farben.check.service.IWbMetadataSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Classname
 * @Description
 * @Date 2020/11/29 2:00
 * @Author benson
 **/
@RestController
@RequestMapping("/db")
public class DbController extends BaseController  {
    @Autowired
    private IWbMetadataSourceService iWbMetadataSourceService;

    @GetMapping("/list")
    public ResultVo list() throws Exception {

        List<WbMetadataSource> list = iWbMetadataSourceService.list();
        // 将所有连接加载到缓存
        for (WbMetadataSource wbMetadataSource : list) {
            JdbcTemplate jdbcTemplate = getJdbcTemplate(wbMetadataSource);
            DataContainer.JTS.put(wbMetadataSource.getId(),jdbcTemplate);
        }
        return ResultVo.success(list);
    }
}
