package com.farben.check.prts;

import java.lang.reflect.Method;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ForkJoinTask;
import java.util.concurrent.RecursiveTask;
import java.util.stream.LongStream;

public class ForkJoinSumCalculator extends RecursiveTask<Long> {
    private final long[] numbers;
    private final int start;
    private final int end;
    public static final long THRESHOLD = 10_000;

    public ForkJoinSumCalculator(long[] numbers) {
        this(numbers,0,numbers.length);
    }

    public ForkJoinSumCalculator(long[] numbers, int start, int end) {
        this.numbers = numbers;
        this.start = start;
        this.end = end;
    }

    @Override
    protected Long compute() {
        int length = end - start;
        if (length < THRESHOLD) {
            return computeSequentially(); // 如果大小小于阈值，顺序计算结果
        }

        ForkJoinSumCalculator leftfork = new ForkJoinSumCalculator(numbers, start, start + length / 2);
        leftfork.fork();

        ForkJoinSumCalculator rightfork = new ForkJoinSumCalculator(numbers, start + length / 2, end);
        Long rightRes = rightfork.compute();
        Long leftRes = leftfork.join();
        return rightRes+leftRes;
    }

    private long computeSequentially() {
        long sum = 0 ;
        for (int i=start;i< end ;i++){
            sum += numbers[i];
        }
        return sum;
    }

    public static long forkJoinSum(long n) {
        long[] numbers = LongStream.rangeClosed(1,n).toArray();
        ForkJoinTask<Long> task = new ForkJoinSumCalculator(numbers);
        return new ForkJoinPool().invoke(task);
    }

    public static void main(String[] args) throws Exception {

//        long l = ForkJoinSumCalculator.forkJoinSum(100000l);
//        System.out.println(l);

        Class<?> pts = Class.forName("com.farben.check.prts.PrtsStream");
        Method map = pts.getMethod("map");

        Object o = pts.newInstance();
        map.invoke(o);
//        Method merg = pts.getMethod("merg", Integer.class, Integer.class, Integer.class);
//        Integer[] arr = {1,2,3};
//        merg.invoke(o,arr);
        Object[] nums = {1,"2",3};
        Class<?>[] cls = {Integer.class,String.class,Integer.class};
        doit("com.farben.check.prts.PrtsStream","merg",nums,cls);

    }

    /**
     * 利用反射调用类方法(通用)
     * @param cls 类路径
     * @param mth 方法名
     * @param objects 参数
     * @param clt 参数类型的class
     * @throws Exception
     */
    public static void doit(String cls,String mth,Object[] objects,Class<?>... clt) throws Exception {
        Class<?> aClass = Class.forName(cls);
        Object o = aClass.newInstance();
        Method method = aClass.getMethod(mth, clt);
        method.invoke(o,objects);
    }



}
