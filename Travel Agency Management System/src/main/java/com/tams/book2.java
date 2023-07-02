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
import com.dao.insertacnt2;
 
@WebServlet("/book2")
public class book2 extends HttpServlet {
	 
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String uname = (String) session.getAttribute("uname");
		String car = (String) session.getAttribute("car");
		System.out.println(car);
		
		String type = (String) session.getAttribute("type");
		System.out.println(type);
		int deposit = (int) session.getAttribute("dep");
		int available;
		
		insertacnt2 insert = new insertacnt2();
		getcardata cd = new getcardata();
		try {
			insert.connect();
			insert.insertData(car, type, deposit,uname);
			insert.disconnect();
			cd.connect();
			available  =cd.getData(car,type);
			System.out.println(available);
			if(available>0) {
				cd.updateData(car, type);
				session.setAttribute("cm2", "BOOKED SUCCESSFULLY........");
				cd.disconnect();
				res.sendRedirect("customer.jsp");
			}
			else {
				session.setAttribute("cm", "NOT AVAILABLE");
				cd.disconnect();
				res.sendRedirect("book1.jsp");
			}
			
		} catch (SQLException e) {
			 
			System.out.println(e);
		}
		
		
		
		
		 
	}

}
