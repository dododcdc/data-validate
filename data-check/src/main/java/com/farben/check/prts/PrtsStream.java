package com.farben.check.prts;

import com.farben.check.entity.CellPhone;

import javax.swing.text.html.Option;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
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

        list.stream().filter(x -> x.getPrice() > 5000).collect(Collectors.toList()).forEach(x -> System.out.println(x));
    }

    public static void flatmap() {

        List<String> strings = Arrays.asList("tom", "joke", "rose");

        strings.stream().flatMap(x -> Arrays.stream(x.split("0")))
                .collect(Collectors.toList())
                .forEach(x -> System.out.println(x));


        strings.stream().map(x -> x.split("o"))
                .flatMap(Arrays::stream)
                .collect(Collectors.toList())
                .forEach(x -> System.out.println(x));

    }

    public static void anyMatch() {
        List<CellPhone> list = PrtsStream.list;
        if (list.stream().anyMatch(x -> x.getPrice() > 2000)) {
            System.out.println("只要有一个满足就可以");
        }
    }

    public static void allMatch() {
        List<CellPhone> list = PrtsStream.list;
        if (list.stream().allMatch(x -> x.getPrice()> 3000)){
            System.out.println("必须全部满足才可以");
        }
        else {
            System.out.println("false");
        }
    }

    public static void noneMatch() {
        List<CellPhone> list = PrtsStream.list;
        if (list.stream().noneMatch(x -> x.getPrice()<1000)){
            System.out.println("一个也没有");
        }
    }

    public static void findAny() {
        List<CellPhone> list = PrtsStream.list;
        // 大于2000随便选一个
        Optional<CellPhone> res = list.stream().filter(x -> x.getPrice() > 2000)
                .findAny();

        res.ifPresent(System.out::println);
    }



    /**
     * reduce
     */
    public static void rSum() {
        // 求和
        Integer sum = Arrays.asList(1, 2, 3, 4).stream()
                .reduce(0, (a, b) -> a + b);
        System.out.println(sum);

        Integer reduce = Stream.of(1, 2, 3)
                .reduce(0, Integer::sum);

        System.out.println(reduce);
        https://github-releases.githubusercontent.com/140418865/b7812400-a2e0-11eb-9dab-0a27b4bc5892?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210726%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210726T081850Z&X-Amz-Expires=300&X-Amz-Signature=2602da40597993b70a789ffdbefd9b84c778ea0e3122487439dfd76ada35b1d9&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=140418865&response-content-disposition=attachment%3B%20filename%3DOpenJDK8U-jdk_x64_linux_hotspot_8u292b10.tar.gz&response-content-type=application%2Foctet-stream
        // 最大值
        Stream.of(1,2,3)
                .reduce((Integer::max));

    }

    public void merg(Integer a,String b,Integer c) {
        int s = Integer.parseInt(b);
        System.out.println(Stream.of(a, s, c).reduce(Integer::sum).orElseGet(() -> -1));
    }

    public static void main(String[] args) {
//        PrtsStream.map();
//        PrtsStream.filter();
//        PrtsStream.flatmap();
//        PrtsStream.anyMatch();
//        PrtsStream.allMatch();
//        PrtsStream.noneMatch();
        PrtsStream.rSum();

    }
}
