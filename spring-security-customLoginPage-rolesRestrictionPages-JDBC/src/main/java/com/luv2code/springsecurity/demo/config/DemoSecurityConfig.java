package com.luv2code.springsecurity.demo.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;



@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	
	@Autowired
	private DataSource securityDataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {		
		auth.jdbcAuthentication().dataSource(securityDataSource);
	}

	
	
	
	
	/**
	 * ADD ONLY IF YOU WANT A CUSTOM LOGIN PAGE AND LOGOUT with ROLES
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//http.authorizeRequests().anyRequest().authenticated()// for just login restriction
		http.authorizeRequests()
		.antMatchers("/").hasRole("EMPLOYEE")//               \
		.antMatchers("/leaders/**").hasRole("MANAGER")//       url paths restricted to roles, remove if only login restriction and no roles
		.antMatchers("/system/**").hasRole("ADMIN") //        /
		.and().formLogin()
		.loginPage("/showMyLoginPage").loginProcessingUrl("/authenticateTheUser").permitAll()
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/access-denied");
	}

	
	

	
	
	
	
}
