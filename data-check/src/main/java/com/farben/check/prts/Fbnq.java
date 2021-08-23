package com.farben.check.prts;

public class Fbnq {

    public static void main(String[] args) {

        // 斐波那契第n项
        System.out.println(findFn(3));

    }

    public static int findFn(int n) {
        int x,y;
        {
            x = 0;
            y = 1;
        }

        int res = -1;
        for (int i = 3; i < n + 1; i++) {

            res = x+y;
            x = y;
            y = res;
        }

        return res;
    }

}
