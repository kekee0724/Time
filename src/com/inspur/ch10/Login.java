package com.inspur.ch10;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inspur.ch10.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#getServletConfig()
	 */
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @see Servlet#getServletInfo()
	 */
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		// 获取前端传来的id
		String id1 = request.getParameter("id");
		int id = Integer.parseInt(id1);
		System.out.println("帐号：" + id);
		// 获取前端传来的password
		String password = request.getParameter("password");
		System.out.println("密码：" + password);
		// 通过id查找数据库的数据
		// 创建对象
		User user = new User();
		user.setId(1);
		user.setName("可可");
		user.setPassword("0724");
		user.setAge(18);
		List<User> users = new ArrayList<User>();
		users.add(user);
		// 绑定对象
		request.setAttribute("users", users);
		System.out.println(user);
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>\r\n" + "<html>\r\n" + "<head>\r\n"
				+ "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");

		if (id != user.getId()) {
			System.out.println("账户不存在");
		}
		if (id == user.getId() && password.equals(user.getPassword())) {
			// 代表前端输入的内容和数据库中查找到的数据相匹配
			System.out.println("密码验证成功，欢迎！");
			System.out.println(users);
			// 登录成功后，就将用户存储到session中
			Cookie c1 = new Cookie("id", String.valueOf(id));
			Cookie c2 = new Cookie("password", password);
			((HttpServletResponse) response).addCookie(c1);
			((HttpServletResponse) response).addCookie(c2);

			request.setAttribute("users", user);
			System.out.println("跳到学生登录成功页面");

			// 使用request对象的getSession()获取session，如果session不存在则创建一个
			HttpSession session = ((HttpServletRequest) request).getSession();
			// 将数据存储到session中
			session.setAttribute("username", user);
			// 获取session的Id
			String sessionId = session.getId();
			// 判断session是不是新创建的
			if (session.isNew()) {
				response.getWriter().print("session创建成功，session的id是：" + sessionId);
			} else {
				response.getWriter().print("服务器已经存在该session了，session的id是：" + sessionId);
			}

			// 跳转到学生页面
			out.println("<title>学生主页</title>\r\n" + "<link href=\"css/slideshow.css\" rel=\"stylesheet\" />\r\n"
					+ "<link href=\"css/studentIndex.css\" rel=\"stylesheet\" />\r\n"
					+ "<script src=\"js/slideshow.js\" type=\"text/javascript\"></script>\r\n" + "</head>\r\n"
					+ "<body>\r\n" + "	<div class=\"header\">\r\n" + "		<p>在线考试系统</p>\r\n" + "	</div>\r\n"
					+ "	<div id=\"nave\">\r\n" + "		<table id=\"tab1\">\r\n" + "			<tr>\r\n"
					+ "				<td id=\"td1\">欢迎学生" + user.getName() + "登录</td>\r\n"
					+ "				<td style=\"text-align: center;\">|</td>\r\n"
					+ "				<td id=\"td11\"><a href=\"Logout\"><p\r\n"
					+ "							style=\"font-size: 17px\">退出</p></a></td>\r\n" + "			</tr>\r\n"
					+ "		</table>\r\n" + "	</div>");

			out.println(
					"<div align=\"center\">欢迎 " + user.getName() + ", 登录成功！<a href=\"test.action\">点击开始考试</a></div>");
			out.println("<div id=\"footer\">\r\n"
					+ "		<div class=\"copyright\">Copyright © 1997-2019. All Rights\r\n"
					+ "			Reserved. 版权所有</div>\r\n" + "	</div>\r\n" + "</body>\r\n" + "</html>\r\n" + "");

		} else {
			System.out.println("密码验证失败，请重新输入");

			out.println("	密码验证失败，请重新输入！<a href=\"javascript:history.back(-1)\">返回上一页</a> <br>");
		}

		out.flush();
		out.close();

	}

}
