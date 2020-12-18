package com.farben.check;

import com.farben.check.container.DataContainer;
import com.farben.check.controll.BaseController;
import com.farben.check.entity.WbMetadataSource;
import com.farben.check.service.IWbMetadataSourceService;
import com.farben.check.service.validate.IValidateService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

@Slf4j
@SpringBootApplication
public class DataCheckApplication implements CommandLineRunner {

    @Autowired
    private IValidateService iValidateService;

    @Autowired
    private IWbMetadataSourceService iWbMetadataSourceService;

    public static void main(String[] args) {
        SpringApplication.run(DataCheckApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {

        List<WbMetadataSource> list = iWbMetadataSourceService.list();
        BaseController baseController = new BaseController();

        log.info("容器启动时有哪些数据源");
        for (WbMetadataSource wbMetadataSource : list) {
            JdbcTemplate jdbcTemplate = baseController.getJdbcTemplate(wbMetadataSource);
            DataContainer.JTS.put(wbMetadataSource.getId(),jdbcTemplate);
        }
//        List<ValiTableVo> car_price = iValidateService.valiTable(2, "addresses");
//        System.out.println("===========");
    }
}
