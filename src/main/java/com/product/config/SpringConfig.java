package com.product.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com.product")
@EnableWebMvc
public class SpringConfig implements WebMvcConfigurer
{
	//Configuring CSS and JS file location
	public void addResourceHandlers(ResourceHandlerRegistry registry) 
    {
		registry.addResourceHandler("/CSS/**").addResourceLocations("/CSS/");
        registry.addResourceHandler("/JS/**").addResourceLocations("/JS/");
    }

	@Bean
	ViewResolver getViewResolver()
	{
		System.out.println("ViewResolver bean is created");
		InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	@Bean
	LocalSessionFactoryBean getFactoryBean()
	{
		System.out.println("LocalSessionFactoryBean bean is created!");
		LocalSessionFactoryBean sessionFactory=new LocalSessionFactoryBean();
		sessionFactory.setDataSource(getDataSource());
		sessionFactory.setHibernateProperties(getProperties());
		sessionFactory.setPackagesToScan("com.product.entity");
		return sessionFactory;
	}
	private DataSource getDataSource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/mvc_project?createDatabaseIfNotExist=true");
		dataSource.setUsername("root");
		dataSource.setPassword("#Deepak123");
		return dataSource;
	}
	private Properties getProperties()
	{
		Properties properties=new Properties();
		properties.setProperty("hibernate.dialect","org.hibernate.dialect.MySQL5Dialect");
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		properties.setProperty("hibernate.show_sql", "true");
		return properties;
	}
}
