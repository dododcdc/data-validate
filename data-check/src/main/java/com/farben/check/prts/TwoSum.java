package com.farben.check.prts;


import java.util.ArrayList;

/**
 * 两数之和
 */
public class TwoSum {

    public static ArrayList<Integer[]> getIndex(int target,int[] arr) {

        ArrayList<Integer[]> integers = new ArrayList<>();
        for (int i = 0; i < arr.length-1; i++) {// i<arr.length-1 最后一个不用看了

            //target - 当前值 ，得到这个结果，再遍历 除去当前值剩下的值，看存不存在x
            int x = target - arr[i];

            for (int j = i+1 ; j < arr.length; j++) {
                if (arr[j] == x ) {
                    integers.add(new Integer[]{i,j});
                    break;
                }
            }
        }

        return integers;
    }

    public static void main(String[] args) {
        int[] arr = {2,7,11,3,15,6};
        int target = 9;

        ArrayList<Integer[]> index = getIndex(target, arr);
        System.out.println("over");

    }
}
