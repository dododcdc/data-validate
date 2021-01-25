package com.farben.check.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Classname
 * @Description
 * @Date 2020/11/27 9:08
 * @Author benson
 **/
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class WbMetadataSource {

    @TableId(type = IdType.AUTO)
    private Integer id;
    // 地址
    private String url;
    // 用户名
    private String username;
    //密码
    private String password;

    //资源名称 ，库名以url后面的为准，这个作为资源名称，防止库名一致展示出来不好分辨
    private String dbName;

    //driver
    private String driver;

    // 什么类型的连接 0 mysql 1 orcle 2 hive 3 impala
    private Integer sourceType;

}
