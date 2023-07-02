package com.tams;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.logindao;
import com.dao.namefetchdao;
 
@WebServlet("/login")
public class login extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String uname = req.getParameter("uname");
		 
		 
	    String pass = req.getParameter("pass");
	    
	    logindao login = new logindao();
	    
	    HttpSession session  = req.getSession();
	    if(login.check(uname, pass)) {
	    	namefetchdao fetch = new namefetchdao();
	    	String cname ="";
	    	try {
	    		fetch.connect();
				 cname = fetch.insertData(uname);
				 fetch.disconnect();
			} catch (SQLException e) {
				 
				e.printStackTrace();
			}
	    	session.setAttribute("cname", cname);
	    	session.setAttribute("uname", uname);
	    	res.sendRedirect("customer.jsp");
	    }
	    
	    else if(uname.equals("admin")  & pass.equals("123")) {
	    	session.setAttribute("aname", "admin");
	    	res.sendRedirect("admin.jsp");
	    }
	    
	    else {
	    	
	    	session.setAttribute("login", "invalid credentials");
	    	
	    	res.sendRedirect("index.jsp");
	    }
		 
	}

}
