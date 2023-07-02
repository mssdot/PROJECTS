package com.tams;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.depositfetch;
import com.dao.getcardata;

 
@WebServlet("/imgval")
public class imgval extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		String car =    req.getParameter("car");
		String type =    req.getParameter("type");
		System.out.println((String) req.getParameter("car"));
		System.out.println(type);
		int available = 0,chr = 0,ckm = 0;
		getcardata gc = new getcardata();
		depositfetch df = new depositfetch();
		try {
			gc.connect();
			available = gc.geta(car,type ) ;
			chr = df.chrf(car, type);
			ckm = df.ckmf(car, type);
			
			gc.disconnect();
		} catch (SQLException e) {
			 
			System.out.println(e);
		}
		
		session.setAttribute("a123", available);
		session.setAttribute("h123", chr);
		session.setAttribute("k123", ckm);
		res.sendRedirect("index.jsp");
		
		
	}

}
