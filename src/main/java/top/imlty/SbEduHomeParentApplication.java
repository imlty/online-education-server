package top.imlty;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("top.imlty.dao")
public class SbEduHomeParentApplication {

    public static void main(String[] args) {
        SpringApplication.run(SbEduHomeParentApplication.class, args);
    }
    // TODO: 1.环境配置好，需处理mysql和fastdfs。后续考虑MySQL脚本等
    // 2.需处理前端

}
