package kr.co.kpcdt.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@Lazy
@EnableTransactionManagement
@MapperScan(basePackages = {"kr.co.kpcdt.**.dao"})
public class MybatisConfig 
{

}
