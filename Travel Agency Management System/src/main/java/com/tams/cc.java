package com.tams;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.depositfetch;
import com.dao.getcardata;
import com.dao.insertacnt2;

import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.lang.Math;
import java.sql.SQLException;
import java.text.SimpleDateFormat; 
@WebServlet("/cc")
public class cc extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 
		String car =req.getParameter("cars");
		String type =req.getParameter("type");
		String uid = req.getParameter("uid") ;
		
		int reading =Integer.parseInt(  req.getParameter("reading")) ;
		int nhr =Integer.parseInt(  req.getParameter("nhr")) ;
		String time1 = null,date1 = null;
		int dep=0,min=0,chr=0,ckm =0 ,t1=0,t2=0,total=0,fin1=0,fin2=0;
		HttpSession session = req.getSession();
		depositfetch ff = new depositfetch();

		
		Date currentDate = new Date();
		 SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
		String time2 = df.format(new Date());
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String date2 = dateFormat.format(currentDate)  ;
		
		insertacnt2 bh = new insertacnt2();
		 
		timediff td  = new timediff();
		if( ff.ucheck(uid) <= 0   ) {
			session.setAttribute("uc", "INVALID USERNAME  ");
			res.sendRedirect("cc.jsp");
			
		}
		else { 
			 System.out.println( "check: "+ff.scheck(uid,car,type));
			if(ff.scheck(uid,car,type)<= 0) {
				session.setAttribute("uc2", "  USER NOT BOOKED ANY CAR YOU MENTIONED");
				res.sendRedirect("cc.jsp");
			}
			else {
				
			
		try {
			bh.connect();
			 time1 = bh.gettime(uid);
			 
			 date1 = bh.getdate(uid);
			  
			 dep=ff.depositf(car, type);
			 System.out.println(dep);
			 min=ff.minf(car, type);
			 chr=ff.chrf(car, type);
			 ckm=ff.ckmf(car, type);
			 bh.disconnect();
		} catch (SQLException e) {
			 
			System.out.println(e);
		}
		int timedif =td.getdiff(time1, time2);
		 timedif = Math.abs(timedif);
		 int datedif =0;
		 datedif = td.datediff(date1, date2);
		System.out.println(datedif); 
		//calculating total charge amount
		
		t1 = nhr*   chr;
		t2 = reading * ckm;
		total = (Math.max(t1, t2)) +datedif*150;
		if(nhr>4) {
			
			if(total > dep) {
				fin1 = total -dep; // user to pay
				 
			}
			else {
				fin2 = dep -total; //company to pay
			}
			
			
		}
		else {
			total =min;
			if(total > dep) {
				fin1 = total -dep; // user to pay
				 
			}
			else {
				fin2 = dep -total; //company to pay
			}
		}
		
		 
		
		session.setAttribute("date2", date2); 
		session.setAttribute("time2", time2); 
		session.setAttribute("date1", date1); 
		session.setAttribute("time1", time1); 
		
		session.setAttribute("dep", dep); 
		session.setAttribute("min", min);
		session.setAttribute("chr", chr);
		session.setAttribute("ckm", ckm);
		session.setAttribute("halt", datedif);
		session.setAttribute("nhr", nhr);
		session.setAttribute("reading", reading);
		session.setAttribute("upay", fin1);
		session.setAttribute("cpay", fin2);
		
		session.setAttribute("pc", car);
		session.setAttribute("pt", type);
		res.sendRedirect("cc2.jsp");
		
		}	
	}	
		
		
		
	}

}
