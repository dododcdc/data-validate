package com.farben.check.entity.response;

import lombok.*;

/**
 * @Classname
 * @Description
 * @Date 2020/12/6 18:56
 * @Author benson
 **/
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CheckResultVo  {

    private Integer dbId;
    private String tableName;
    private String fieldName;
    private String description;
    private String isPass;

}
