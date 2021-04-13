package com.farben.check.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @Classname 库表关系
 * @Description 该类记录某个库下有哪些表
 * @Date 2020/11/28 12:12
 * @Author benson
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DbTable {

    private WbMetadataSource wbMetadataSource;

    /**
     * 拥有的表
     */
    private List<String> tables;

}
