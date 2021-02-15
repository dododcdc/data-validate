package com.farben.check.entity.res;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Classname
 * @Description
 * @Date 2020/11/30 18:40
 * @Author benson
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MetadataVo {
    /**
     * 资源id
     */
    private Integer dbId;
    /**
     * 表名
     */
    private String tableName;
    /**
     * 字段名
     */
    private String fieldName;
    /**
     * 字段类型名
     */
    private String fieldTypeName;
    /**
     * 字段长度
     */
    private int columnSize;
    /**
     * 小数位数
     */
    private int decimalDigits;
    /**
     * 字段描述
     */
    private String fieldComment;
}
