package creakok.com.web;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import creakok.com.filesetting.Path;

@Configuration
public class RootContextConfig {

	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
		/*
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("org.mariadb.jdbc.Driver");
		dataSource.setUrl("jdbc:mariadb://localhost:3306/creakok");
		
		if(Path.STORE_PATH == Path.CAFE24_PATH) {
			dataSource.setUsername("creakok");
			dataSource.setPassword("creakokpass123");			
		} else {
			dataSource.setUsername("root");
			dataSource.setPassword("java0420");
		}
		*/
		
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setDriverClassName("org.mariadb.jdbc.Driver");
		hikariConfig.setJdbcUrl("jdbc:mariadb://localhost:3306/creakok");
		
		if(Path.STORE_PATH == Path.CAFE24_PATH) {
			hikariConfig.setUsername("creakok");
			hikariConfig.setPassword("creakokpass123");			
		} else {
			hikariConfig.setUsername("root");
			hikariConfig.setPassword("java0420");
		}

		HikariDataSource dataSource = new HikariDataSource(hikariConfig);

		return dataSource;
	}
}
