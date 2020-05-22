package com.imooc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import com.imooc.User;

public class ListUserServlet implements Servlet {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// 创建对象
		User user1 = new User();
		user1.setId(1);
		user1.setName("后裔");
		user1.setPassword("123456");
		user1.setAge(20);

		User user2 = new User();
		user2.setId(2);
		user2.setName("可可");
		user2.setPassword("0724");
		user2.setAge(18);

		User user3 = new User();
		user3.setId(3);
		user3.setName("猛哥");
		user3.setPassword("24679");
		user3.setAge(22);
		// System.out.println(user);

		List<User> users = new ArrayList<User>();
		users.add(user1);
		users.add(user2);
		users.add(user3);
		// 绑定对象
		// request.setAttribute("u", user1);
		request.setAttribute("users", users);
		request.getRequestDispatcher("/ch8/regist.jsp").forward(request, response);

	}
}
