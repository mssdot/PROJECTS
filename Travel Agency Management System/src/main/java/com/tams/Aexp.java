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
 
@WebServlet("/Aexp")
public class Aexp extends HttpServlet {
	 
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String car =req.getParameter("cars");
		String type =req.getParameter("type");
		int exp =Integer.parseInt(req.getParameter("exp"));
		int dbexp;
		int revenue=0,price=0 ,profit=0,profit2=0;
		HttpSession session  = req.getSession();
		getcardata cd = new getcardata();
		try {
			cd.connect();
			dbexp =cd.getexp(car, type);
			exp += dbexp;
			cd.addexp(car, type, exp);
			revenue = cd.getrev(car, type);
			price = cd.getprice(car, type);
			//profit = cd.getprofit(car, type);
			profit2 = revenue  -exp-price;
			if(profit2>0) { 
			cd.insertpro(car, type, profit2 );
			}
			else {
				cd.insertpro(car, type, 0 );
			}
			session.setAttribute("exp", "EXPENSES UPDATED SUCCESSFULLY");
			cd.disconnect();
			res.sendRedirect("admin.jsp"); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		 
	}

}
