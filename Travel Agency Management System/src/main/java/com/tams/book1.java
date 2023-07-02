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
 
@WebServlet("/book1")
public class book1 extends HttpServlet {
 
    
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int dep  = 10;
		String car =req.getParameter("cars");
		String type =req.getParameter("type");
		System.out.println(car);
		System.out.println(type);
		depositfetch df = new depositfetch();
		 
		dep= df.depositf(car,type);
		 
		HttpSession session = req.getSession();
		session.setAttribute("dep", dep);
		session.setAttribute("car", car);
		session.setAttribute("type", type);
		res.sendRedirect("book2.jsp");
		
		
		
		
	}

}
