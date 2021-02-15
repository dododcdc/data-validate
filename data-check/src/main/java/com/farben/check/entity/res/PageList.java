package com.farben.check.entity.res;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Classname
 * @Description
 * @Date 2020/11/30 8:56
 * @Author benson
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PageList {
    private String tableName;
    private Integer count = 0;
}
