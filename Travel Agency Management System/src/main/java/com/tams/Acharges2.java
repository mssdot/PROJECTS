package com.tams;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.depositfetch;
 
@WebServlet("/Acharges2")
public class Acharges2 extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		 
		String car = (String) session.getAttribute("Acar");
		System.out.println(car);
		
		String type = (String) session.getAttribute("Atype");
		System.out.println(type);
		int dep = Integer.parseInt(  req.getParameter("ndep"));
		int min = Integer.parseInt(   req.getParameter("nmin"));
		int chr = Integer.parseInt(   req.getParameter("nchr"));
		int ckm = Integer.parseInt(   req.getParameter("nckm"));
		
		depositfetch df = new depositfetch();
		
		df.insertc(car, type, dep, min, ckm, chr);
		
		session.setAttribute("Acharge", "CHARGES UPDATED SUCCESSFULLY");
		res.sendRedirect("admin.jsp");
		 
		 
		 
		
		
		
		
	}

}
