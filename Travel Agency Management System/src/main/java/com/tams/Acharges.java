package com.tams;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.depositfetch;

 
@WebServlet("/Acharges")
public class Acharges extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int dep =0;
		int min =0;
		int ckm =0;
		int chr =0;
		String car =req.getParameter("cars");
		String type =req.getParameter("type");
		System.out.println(car);
		System.out.println(type);
		depositfetch df = new depositfetch();
		 
		dep= df.depositf(car,type);
		min= df.minf(car,type);
		chr= df.chrf(car,type);
		ckm= df.ckmf(car,type);
		 
		HttpSession session = req.getSession();
		session.setAttribute("Adep", dep);
		session.setAttribute("Amin", min);
		session.setAttribute("Achr", chr);
		session.setAttribute("Ackm", ckm);
		session.setAttribute("Acar", car);
		session.setAttribute("Atype", type);
		res.sendRedirect("Acharges2.jsp");
	}

}
