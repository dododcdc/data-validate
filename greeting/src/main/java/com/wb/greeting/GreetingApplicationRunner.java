package com.wb.greeting;


import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;

@Slf4j
public class GreetingApplicationRunner implements ApplicationRunner {

    public GreetingApplicationRunner() {

        log.info("init GreetApplicationRunner");

        System.out.println("init greetapp");
    }

    public void run(ApplicationArguments args) throws Exception {

        System.out.println("run greet app ");
//        log.info("application is create ...");
    }

    public void say(String str) {
        System.out.println("how are you ");
//        log.info(str);
    }


}
