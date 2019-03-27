package br.com.kodeweave.conf;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
@Profile("prod")
public class JPAProductionConfiguration {
	
	@Autowired
	private Environment environment;

	@Bean
	public Properties additionalProperties() {
		Properties properties = new Properties();
		properties.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
		properties.setProperty("hibernate.show_sql", "true");
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		return properties;
	}
/*
	@Bean
	private DriverManagerDataSource dataSource() throws URISyntaxException {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.postgresql.Driver");
	    
	    URI dbUrl = new URI(environment.getProperty("JDBC_DATABASE_URL"));
	    
	    dataSource.setUrl("jdbc:postgresql://"+dbUrl.getHost()+":"+dbUrl.getPort()+dbUrl.getPath());
	    dataSource.setUsername(dbUrl.getUserInfo().split(":")[0]);
	    dataSource.setPassword(dbUrl.getUserInfo().split(":")[1]);
	    
		return dataSource;
	}
	
	*/
	  @Bean
	  public BasicDataSource dataSource() throws URISyntaxException {
        URI dbUri = new URI(System.getenv("DATABASE_URL"));

        String username = dbUri.getUserInfo().split(":")[0];
        String password = dbUri.getUserInfo().split(":")[1];
        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath() + "?sslmode=require";

        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setUrl(dbUrl);
        basicDataSource.setUsername(username);
        basicDataSource.setPassword(password);

        return basicDataSource;
	   }
}