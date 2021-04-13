package com.farben.check.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * @Classname
 * @Description
 * @Date 2020/11/29 23:03
 * @Author benson
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PageBean<T> {

    //1.每页显示的数据
    private List<T> data =new ArrayList<T>();
    //2.总页数
    private int totalPage;
    //3.当前页
    private  int currentPage;
    //4.总条数
    private int totalCount;
    //5.当前页显示的条数
    private int currentCount;

}
