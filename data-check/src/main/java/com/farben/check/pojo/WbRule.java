package com.farben.check.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Classname
 * @Description 规则
 * @Date 2020/12/5 10:18
 * @Author benson
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class WbRule {
    private Integer id;
    private String code;
    private String validateSql;
    private String description;
}
