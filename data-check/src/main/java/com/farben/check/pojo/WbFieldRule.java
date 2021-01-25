package com.farben.check.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Classname
 * @Description
 * @Date 2020/12/6 14:12
 * @Author benson
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
public class WbFieldRule {

    @TableId(type= IdType.AUTO )
    private Long id;
    private Integer dbId;
    private String tableName;
    private String code;
    private String fieldName;
}
