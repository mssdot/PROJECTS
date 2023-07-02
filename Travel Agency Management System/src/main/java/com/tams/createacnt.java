package com.tams;
import com.dao.accountverifydao;
import com.dao.insertacnt; 

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



 
 
@WebServlet("/createacnt")
public class createacnt extends HttpServlet {
	  
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		 
		String name = req.getParameter("name");
		String uname = req.getParameter("uname");
		String pno = req.getParameter("pno");
	    String pass = req.getParameter("pwd1");
	    String pass2 = req.getParameter("pwd2");
	    
	    accountverifydao dao = new accountverifydao();
	    insertacnt dbInsert = new insertacnt() ;
	    HttpSession session  = req.getSession();
	     
	    if(pass.equals(pass2) ) {
	    	//check steps
	    	
	    	 if(dao.check(uname)) {

				 
				 session.setAttribute("msg", "account already exists");
				 res.sendRedirect("index.jsp");

			 }
	    	 else if (uname.equals("admin")) {
	    		 session.setAttribute("msg2", "account cannot be created with admin as username");
			     res.sendRedirect("index.jsp");
	    	 }
	    	 //create account
	    	 else
	    	 {
	    		  
	    		 try {
	    	            dbInsert.connect();
	    	            dbInsert.insertData(name,uname,pass,pno);
	    	            dbInsert.disconnect();
	    	        } catch (Exception e) {
	    	            e.printStackTrace();
	    	        }
	    			 
	    			session.setAttribute("msg2", "account created successfully");
	    			res.sendRedirect("index.jsp");
	    			
	    			
	    		 
	    	
	    	
	    	 }
	    }
	    else {
	    	  
			 session.setAttribute("msg3", "in correct password");
			 res.sendRedirect("login.jsp");
	    }
		
		
		
	}

}
