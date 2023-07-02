package com.tams;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.statistics;

 
@WebServlet("/stat")
public class stat extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		List<statistics> sl = new ArrayList<statistics>();
		int max = 0;
		String car1="null",type1="null";
		
		try {
	        
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
	         
	        String sql = "SELECT car,type,price,expenses,revenue, profit FROM cars  ";
	        String sql2 = "SELECT MAX(profit) FROM cars";
	        PreparedStatement ps = con.prepareStatement(sql);
	        PreparedStatement ps2 = con.prepareStatement(sql2);
	         
	         
	        ResultSet rs = ps.executeQuery();
	        ResultSet rs2 = ps2.executeQuery();
	        
	        
	        while (rs.next()) {
	        	String car = rs.getString("car"); // Get the value of the "id" column
                String type = rs.getString("type");
                int price = rs.getInt("price");
                int exp = rs.getInt("expenses");
                int rev = rs.getInt("revenue");
                int pro = rs.getInt("profit");
                
                statistics details = new statistics(car, type,price, exp,rev,pro); // Create a Person object
                
	            sl.add(details);
	        }
	        
	        while (rs2.next()) {
	        	  max = rs2.getInt(1);
			}
	        // Close resources
	        rs.close();
	        rs2.close();
	        ps.close();
	        ps2.close();
	        con.close();
	        
	    } catch (  SQLException e) {
	        System.out.println(e);
	    }
	    if(max>0) {
	    	try {
		        
		        try {
					Class.forName("com.mysql.jdbc.Driver");
				} catch (ClassNotFoundException e) {
					 
					e.printStackTrace();
				}
		        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
		         
		        String sql = "SELECT car,type  FROM cars where profit =?";
		        
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.setInt(1, max); 
		         
		         
		        ResultSet rs = ps.executeQuery();
		        
		        
		        
		        while (rs.next()) {
		        	  car1 = rs.getString("car"); // Get the value of the "id" column
	                  type1 = rs.getString("type");
	                 
	                
		        }
		        
		        
		        // Close resources
		        rs.close();
		        
		        ps.close();
		         
		        con.close();
		        
		    } catch (  SQLException e) {
		        System.out.println(e);
		    }
	    	session.setAttribute("max1", max);
		    session.setAttribute("c1", car1);
		    session.setAttribute("t1", type1);
	    	
	    }
	    else {
	    	session.removeAttribute("max1");
			session.removeAttribute("c1");
			session.removeAttribute("t1");
	    }
	    System.out.println(max);
		//  select car and type with max profit
		
	    session.setAttribute("sl", sl);
	     
	    res.sendRedirect("stat.jsp");
	    
			
		
		
		 
	}

}
