package com.tams;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.getcardata;
 
@WebServlet("/Aunrepair")
public class Aunrepair extends HttpServlet {
	 
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 
		String car =req.getParameter("cars");
		String type =req.getParameter("type");
		int count;
		int total;
		 HttpSession session  = req.getSession();
		getcardata cd = new getcardata();
		try {
			 cd.connect();
			 count = cd.countrepair(car, type);
			 
			  
			 
			 if(count>0) {
				 cd.getData(car, type);
				 cd.addcar(car, type);
				 cd.removerepair(car, type, count);
				 session.setAttribute("Aunrepair" , "CAR REMOVED FROM REPAIR DB SUCCESSFULLY");
				 res.sendRedirect("admin.jsp"); 	
			 }
			 else {
				 session.setAttribute("Aunrepair" , "  CAR IS NOT   PRESENT IN REPAIR STATE   ");
				 res.sendRedirect("admin.jsp"); 
			 }
			 
			 cd.disconnect();
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
		
		
		
		
	}

}
