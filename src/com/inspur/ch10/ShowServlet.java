package com.inspur.ch10;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShowServlet extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException,IOException {
		String username = null;
		
			username = new String(request.getParameter("username").getBytes(
					"ISO-8859-1"), "UTF-8");
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect(request.getContextPath()
					+ "/ch10/showUserName.jsp");
		
	}

}
