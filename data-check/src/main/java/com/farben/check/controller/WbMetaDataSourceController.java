package com.farben.check.controller;

import com.farben.check.common.ResultVo;
import com.farben.check.container.DataContainer;
import com.farben.check.entity.WbMetadataSource;
import com.farben.check.service.BaseService;
import com.farben.check.service.IWbMetadataSourceService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;


/**
 * @Classname
 * @Description
 * @Date 2020/11/23 14:16
 * @Author benson
 **/

@Slf4j
@RestController
@RequestMapping("/wbMetaDataSource")
public class WbMetaDataSourceController extends BaseController {

    @Autowired
    private IWbMetadataSourceService iWbMetadataSourceService;

    @Autowired
    private BaseService baseService;

    /**
     * 添加连接
     * @param wbMetadataSource
     * @throws IOException
     */
    @PostMapping("/add")
    public ResultVo add(@RequestBody WbMetadataSource wbMetadataSource)   {
        try {


            //将资源存到数据库
            boolean res = iWbMetadataSourceService.save(wbMetadataSource);
            JdbcTemplate jt = baseService.get(wbMetadataSource.getId());
//        JdbcTemplate jt = getJdbcTemplate(wbMetadataSource);
            // 将jdbctemplate添加到内存中
            DataContainer.JTS.put(wbMetadataSource.getId(), jt);
            return ResultVo.success();
        } catch (Exception e) {
            log.error("添加连接");
            log.error(e.getMessage());
            return ResultVo.fail();
        }
    }

    /**
     * 获取所有连接
     * @return
     */
    @GetMapping("/get")
    public ResultVo get() {
        List<WbMetadataSource> list = iWbMetadataSourceService.list();
        ResultVo success = ResultVo.success(list);
        return success;
    }



}
