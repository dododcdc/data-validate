package com.farben.check.controller;

import com.farben.check.common.ResultVo;
import com.farben.check.container.DataContainer;
import com.farben.check.entity.PageBean;
import com.farben.check.entity.WbMetadataSource;
import com.farben.check.entity.response.PageList;
import com.farben.check.service.IWbMetadataSourceService;
import com.farben.check.service.table.impl.ITableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @Classname
 * @Description
 * @Date 2020/11/28 12:16
 * @Author benson
 **/

@RestController
@RequestMapping("/db-table")
public class DbTableController extends BaseController {


    @Autowired
    private ITableService iTableService;

    /**
     * @param dbId
     * @param currentPage  当前页
     * @param currentCount 每页条数
     * @return
     */
    @GetMapping("/pageList")
    public ResultVo pageList(Integer dbId, Integer currentPage, Integer currentCount) throws Exception {
        List<PageList> res = iTableService.list(dbId);

        PageBean<PageList> page = new PageBean<>();
        page.setCurrentPage(currentPage);
        page.setCurrentCount(currentCount);

        //截取
        int stIndex = currentPage * currentCount - currentCount;
        int edIndex = currentPage * currentCount;
        if (edIndex > res.size()) {
            edIndex = res.size();
        }
        List<PageList> tables = res.subList(stIndex, edIndex);
        page.setTotalCount(res.size());
        page.setData(tables);
        return ResultVo.success(page);
    }

    /**
     * 搜索表根据表名
     *
     * @param dbId
     * @param tableName
     * @return
     */
    @GetMapping("/searchTable")
    public ResultVo searchTable(Integer dbId, String tableName, Integer currentPage, Integer currentCount) throws Exception {
        List<PageList> pageLists = iTableService.listLikeTableName(dbId, tableName);
        PageBean<PageList> page = new PageBean<>();
        page.setCurrentPage(currentPage);
        page.setCurrentCount(currentCount);

        int stIndex = currentPage * currentCount - currentCount;
        int edIndex = currentPage * currentCount;
        if (edIndex > pageLists.size()) {
            edIndex = pageLists.size();
        }
        List<PageList> tables = pageLists.subList(stIndex, edIndex);
        page.setTotalCount(pageLists.size());
        page.setData(tables);

        return ResultVo.success(page);
    }

    /**
     * 查询表总数据量
     *
     * @param dbId
     * @param tableName
     * @return
     */
    @GetMapping("/count")
    public ResultVo count(Integer dbId, String tableName) {
        JdbcTemplate jdbcTemplate = DataContainer.JTS.get(dbId);
        Integer count = jdbcTemplate.queryForObject("select count(*) from " + tableName, Integer.class);
        return ResultVo.success(count);
    }


}
