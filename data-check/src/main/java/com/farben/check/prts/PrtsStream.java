package com.farben.check.prts;

import com.farben.check.entity.CellPhone;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class PrtsStream {

    public static List<CellPhone> list ;

    static {
        list = Arrays.asList(
                new CellPhone("huawei",4000d,"red"),
                new CellPhone("huawei",2000d,"red"),
                new CellPhone("apple",5000d,"green"),
                new CellPhone("xiaomi",4000d,"blue"),
                new CellPhone("apple",8000d,"blue"),
                new CellPhone("xiaomi",1000d,"pink"),
                new CellPhone("meizu",2000d,"pink")
        );
    }

    public static void map(){


        List<CellPhone> cps = PrtsStream.list;
        Stream<String> stringStream = cps.stream().map(CellPhone::getBrand);
        Stream<CellPhone> stream = cps.stream();
        stream.map(x -> {
            x.setBrand("xx");return x;
        }).collect(Collectors.toList()).forEach(x -> System.out.println(x));

    }

    public static void filter() {
        List<CellPhone> list = PrtsStream.list;

        list.stream().filter(x -> {
           return x.getPrice() > 5000;
        }).collect(Collectors.toList()).forEach(x -> System.out.println(x));
    }

    public static void main(String[] args) {
//        PrtsStream.map();
        PrtsStream.filter();
    }
}
