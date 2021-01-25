package com.farben.check.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @Classname
 * @Description
 * @Date 2020/11/28 16:06
 * @Author benson
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Menu {

    private String path;
    private String title;
    private List<Menu> children;

}
