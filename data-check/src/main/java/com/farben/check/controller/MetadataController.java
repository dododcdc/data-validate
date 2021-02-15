package com.farben.check.controller;

import com.farben.check.common.ResultVo;
import com.farben.check.container.DataContainer;
import com.farben.check.entity.res.MetadataVo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

/**
 * @Classname 元数据
 * @Description
 * @Date 2020/11/28 19:22
 * @Author benson
 **/
@RestController
@RequestMapping("/metadata")
public class MetadataController {

    /**
     * 获取元数据
     *
     * @return
     */
    @GetMapping("/get")
    public ResultVo get(Integer dbId, String tableName) throws Exception {
        // 获取jdbcTemplate
        JdbcTemplate jdbcTemplate = DataContainer.JTS.get(dbId);
        List<MetadataVo> list = new LinkedList<>();
        DataSource dataSource = jdbcTemplate.getDataSource();
        Connection conn = dataSource.getConnection();
        DatabaseMetaData metaData = conn.getMetaData();
        ResultSet columns = metaData.getColumns(null, null, tableName, null);
        while (columns.next()) {
            String a = columns.getString(1);
            // 库名
//            String dbName = columns.getString(2);
            // 表名
//            String tableName = columns.getString(3);

            // 资源id
            // 字段名
            String fileName = columns.getString(4);
            // 长度
            int columnSize = columns.getInt("COLUMN_SIZE");
            //小数位数
            int decimalDigits = columns.getInt("DECIMAL_DIGITS");
            // 类型
            String fileTypeName = columns.getString(6);
            // 字段注释
            String fileComment = columns.getString(12);

            MetadataVo mt = MetadataVo.builder()
                    .dbId(dbId)
                    .tableName(tableName)
                    .fieldName(fileName)
                    .fieldTypeName(fileTypeName)
                    .columnSize(columnSize)
                    .fieldComment(fileComment).build();
            list.add(mt);
        }

        return ResultVo.success(list);
    }


}
