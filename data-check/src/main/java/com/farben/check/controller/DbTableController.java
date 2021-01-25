package com.farben.check.controller;

import com.farben.check.common.ResultVo;
import com.farben.check.container.DataContainer;
import com.farben.check.pojo.PageBean;
import com.farben.check.pojo.WbMetadataSource;
import com.farben.check.pojo.response.PageList;
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
    private IWbMetadataSourceService iWbMetadataSourceService;

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
        //先从容器获取
        JdbcTemplate jdbcTemplate = DataContainer.JTS.getOrDefault(dbId, null);
        //如果没有去数据库查询
        if (jdbcTemplate == null) {
            WbMetadataSource db = iWbMetadataSourceService.getById(dbId);
            jdbcTemplate = getJdbcTemplate(db);
            //并将新的添加到容器
            DataContainer.JTS.put(dbId, jdbcTemplate);
        }
        PageBean<PageList> page = new PageBean<>();
        page.setCurrentPage(currentPage);
        page.setCurrentCount(currentCount);
        String sql = "show tables";
        // 查询该库下所有表
        List<PageList> res = jdbcTemplate.query(sql, new RowMapper<PageList>() {
            @Override
            public PageList mapRow(ResultSet rs, int i) throws SQLException {
                String str = rs.getString(1);
                return PageList.builder().tableName(str).build();
            }
        });
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
    public ResultVo searchTable(Integer dbId, String tableName) throws Exception {
        List<PageList> list = iTableService.list(dbId);
        PageList build = PageList.builder().tableName(tableName).build();
        PageBean<PageList> page = new PageBean<>();
        if (list.contains(build)){
            list.clear();
            list.add(build);
            page.setData(list);
            page.setCurrentPage(1);
            page.setCurrentCount(7);
            page.setTotalCount(1);
        }
        return ResultVo.success(page);
    }

    /**
     * 查询表总数据量
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
