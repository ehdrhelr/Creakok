package creakok.com.web;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import creakok.com.filesetting.Path;

@Configuration
public class RootContextConfig {

	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
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
		
		return dataSource;
	}
}
