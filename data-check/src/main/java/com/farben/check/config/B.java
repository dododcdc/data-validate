package com.farben.check.config;

import com.farben.check.A;
import com.farben.check.entity.Dish;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class B {


    @Bean("dish")
    public Dish dish() {
        return new Dish("a",true,22, Dish.Type.FISH);
    }


}
