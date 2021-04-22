package com.farben.check.controller;

import com.farben.check.common.ResultVo;
import com.farben.check.entity.PageBean;
import com.farben.check.entity.response.PageList;
import com.farben.check.service.table.impl.ITableService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Classname
 * @Description
 * @Date 2020/11/28 12:16
 * @Author benson
 **/

@Slf4j
@RestController
@RequestMapping("/db-table")
public class DbTableController extends BaseController {


    @Autowired
    private ITableService iTableService;

    /**
     * 获取表
     * @param dbId
     * @param tableName
     * @param currentPage
     * @param currentCount
     * @return
     * @throws Exception
     */
    @GetMapping("/tableList")
    public ResultVo tableList(Integer dbId, String tableName, Integer currentPage, Integer currentCount) throws Exception {
        List<PageList> pageLists ;
        // 如果不传表名，就查询这个库下的全部表
        if (tableName == null || ("").equals(tableName) || ("undefined").equals(tableName)) {
            pageLists = iTableService.list(dbId);
        }
        //传了表名就模糊查询，将匹配的表全部返回
        else {
            pageLists = iTableService.listLikeTableName(dbId, tableName);
        }
        //分页
        // 当前页码如果大于总页数，当前页等于总页数 总页数=总条数/每页多少条+1
        // 每页显示多少条目前是写死的
        Integer totalPage = pageLists.size() / 7 + 1 ;

        if (currentPage > totalPage ) {
            currentPage = totalPage;
        }

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
    public ResultVo count(Integer dbId, String tableName)  {

        Integer count = null;
        try {
            count = iTableService.count(dbId, tableName);
        } catch (Exception e) {
            log.error("查询表总数据量");
            e.printStackTrace();
        }
        return ResultVo.success(count);
    }

}
