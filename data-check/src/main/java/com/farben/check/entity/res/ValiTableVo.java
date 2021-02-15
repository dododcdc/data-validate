package com.farben.check.entity.res;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @Classname
 * @Description 表级校验结果
 * @Date 2020/12/8 10:55
 * @Author benson
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ValiTableVo {

    private Integer dbId;
    private String dbName;
    private String tableName;
    private String fieldName;
    private List<CheckResultVo> pl;

}
