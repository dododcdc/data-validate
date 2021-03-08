package com.farben.check.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * Mybatis支持*匹配扫描包
 *
 * @author gns
 */
@Configuration
// 指定要扫描的Mapper类的包的路径 com.farben.check.mapper
@MapperScan(basePackages = {"com.farben.check.**.mapper"})
public class MyBatisConfig
{
    /**
     * 配置分页插件
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        return new PaginationInterceptor();
    }
}
