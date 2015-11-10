package com.jsu.doIT.utils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.jsu.doIT.po.User;
import com.jsu.doIT.service.user.UserService;

public class DataListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
		UserService userService = (UserService) ac.getBean("userService");
		User user = userService.findById(1);
		sce.getServletContext().setAttribute("user", user);		
	}

}
