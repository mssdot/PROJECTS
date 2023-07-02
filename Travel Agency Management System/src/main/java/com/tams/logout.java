package com.tams;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet("/logout")
public class logout extends HttpServlet {
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		//response.setHeader("pragma", "no-cache" );
				HttpSession session = request.getSession();
				try{session.removeAttribute("uname");
				session.removeAttribute("aname");}
				catch(Exception e) {
					e.getStackTrace();
				}
				session.invalidate();
				response.sendRedirect("index.jsp");
	}
 
}
