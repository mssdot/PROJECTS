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

import com.dao.bDb;


@WebServlet("/bdb")
public class bdb extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		List<bDb> bdb = new ArrayList<bDb>();
		 
		String car1="null",type1="null";
		
		try {
	        
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
	         
	        String sql = "SELECT * FROM bookinghistory  ";
	        
	        PreparedStatement ps = con.prepareStatement(sql);
	        
	         
	         
	        ResultSet rs = ps.executeQuery();
	         
	        
	        while (rs.next()) {
	        	String cust = rs.getString("customer"); // Get the value of the "id" column
                String car = rs.getString("car");
                String type = rs.getString("type");
                int  damt = rs.getInt("damount");
                String bd  = rs.getString("bookedDate");
                String  bt = rs.getString("bookedtime");
                String  rd = rs.getString("returnedDate");
                String  rt = rs.getString("returnedtime");
                String  ta = rs.getString("totalamount");
                String  status = rs.getString("status");
                 
                
                bDb details =  new  bDb(cust, car, type, damt, bd, bt, rd, rt, ta, status); // Create a Person object
                
	            bdb.add(details);
	        }
	        
	         
	        // Close resources
	        rs.close();
	        
	        ps.close();
	        
	        con.close();
	        
	    } catch (  SQLException e) {
	        System.out.println(e);
	    }
	     
	    	 
	    session.setAttribute("bdb", bdb);
	     
	    res.sendRedirect("bdb.jsp");
	    
			
		
		
		 
	}

}
