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
 
@WebServlet("/cc2")
public class cc2 extends HttpServlet {
	 
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String car = (String) session.getAttribute("pc");
		String type = (String) session.getAttribute("pt");
		String date1 = (String) session.getAttribute("date1");
		String time1 = (String) session.getAttribute("time1");
		String date2 = (String) session.getAttribute("date2");
		String time2 = (String) session.getAttribute("time2");
		int total = (int) session.getAttribute("upay");
		int revenue=0,price=0,exp=0,profit=0,profit2=0;
		
		insertacnt2 bh = new insertacnt2();
		getcardata gc = new getcardata();
		
		try {
			bh.connect();
			bh.insertdt(date2, time2, total, date1, time1);
			bh.disconnect();
			gc.connect();
			revenue= gc.getrev(car, type);
			price =  gc.getprice(car, type);
			exp =  gc.getexp(car, type);
			//profit = gc.getprofit(car, type);
			
			
			gc.insertrev(car, type, revenue, total);
			revenue= gc.getrev(car, type);
			profit2 = revenue -exp-price;
			if(profit2>0) {
				gc.insertpro(car,type,profit2 );
			}
			else {
				gc.insertpro(car,type,0 );
			}
			gc.getData(car, type);
			gc.returncar(car, type);
			 
			gc.disconnect();
			
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		System.out.println(revenue);
		session.setAttribute("cc", "CHARGES COLLECTED SUCCESSFULLY....");
		res.sendRedirect("admin.jsp");
		
		
		
		
	}

}
