package com.farben.check.prts;

import com.farben.check.entity.streamprts.Trader;
import com.farben.check.entity.streamprts.Transaction;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class TraderStream {

    public static void main(String[] args) {

        Trader raoul = new Trader("Raoul", "Cambridge");
        Trader mario = new Trader("Mario","Milan");
        Trader alan = new Trader("Alan","Cambridge");
        Trader brian = new Trader("Brian","Cambridge");
        List<Transaction> transactions = Arrays.asList(
                new Transaction(brian, 2011, 300),
                new Transaction(raoul, 2012, 1000),
                new Transaction(raoul, 2011, 400),
                new Transaction(mario, 2012, 710),
                new Transaction(mario, 2012, 700),
                new Transaction(alan, 2012, 950)
        );

//        (1) 找出2011年发生的所有交易，并按交易额排序（从低到高）。
        transactions.stream()
                .filter(x -> x.getYear()==2011)
                .sorted(Comparator.comparing(Transaction::getValue)) // 默认从低到高
                .collect(Collectors.toList());

        transactions.stream()
                .filter(x -> x.getYear() == 2011)
                // 先根据交易额升序排再降序(reversed)再根据年份升序排
                .sorted(Comparator.comparing(Transaction::getValue).reversed().thenComparing(Transaction::getYear))
                .collect(Collectors.toList());


//        (2) 交易员都在哪些不同的城市工作过？

        transactions.stream()
                .map(x -> x.getTrader().getCity())
                .distinct(); // 可以在后续收集时使用toSet ，这样就不用distinct


//        (3) 查找所有来自于剑桥的交易员，并按姓名排序。
        transactions.stream()
                .filter(x -> x.getTrader().getCity().equals("Cambridge"))
                .map(Transaction::getTrader)
                .sorted(Comparator.comparing(Trader::getName));

//        (4) 返回所有交易员的姓名字符串，按字母顺序排序。

//        (5) 有没有交易员是在米兰工作的？
//        (6) 打印生活在剑桥的交易员的所有交易额。
//        (7) 所有交易中，最高的交易额是多少？
//        (8) 找到交易额最小的交易。

    }
}
