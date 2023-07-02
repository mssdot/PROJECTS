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

 
@WebServlet("/Arepair")
public class Arepair extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	 
		
		String car =req.getParameter("cars");
		String type =req.getParameter("type");
		
		int available;
		int total;
		int count;
		 HttpSession session  = req.getSession();
		getcardata cd = new getcardata();
		try {
			 cd.connect();
			 available = cd.geta(car, type);
			 
			 total = cd.getData(car, type);
			 
			 if(available>0) {
				 cd.removecar(car, type);
				 count= cd.countrepair(car, type);
				 cd.addrepair(car, type, count);
				  session.setAttribute("Arepair" , "CAR ADDED TO REPAIR DB  SUCCESSFULLY ");
				 res.sendRedirect("admin.jsp"); 	
			 }
			 else {
				  session.setAttribute("Arepair" , "NO CARS AVAILABLE AT PRESENT .ALL ARE RENRED OUT ");
				  res.sendRedirect("admin.jsp"); 
			 }
			 
			 cd.disconnect();
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
	}

}
