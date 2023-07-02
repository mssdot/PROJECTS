package com.tams;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.hp;

 
@WebServlet("/history")
public class history extends HttpServlet {
	 
     
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		String uname = (String) session.getAttribute("uname");
		List<hp> detailsList = new ArrayList<hp>();
	    
	    try {
	        // Connect to database
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
	        
	        // Prepare SQL statement
	        String sql = "SELECT car,type,damount,bookedDate,bookedtime, 	returnedDate,returnedtime ,totalamount, status FROM bookinghistory where customer =?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, uname);
	        // Execute query
	        ResultSet rs = ps.executeQuery();
	        
	        // Store results in a list
	        while (rs.next()) {
	        	String car = rs.getString("car"); // Get the value of the "id" column
                String type = rs.getString("type");
                int dp = rs.getInt("damount");
                String bd = rs.getString("bookedDate");
                String bt = rs.getString("bookedtime");
                String rd = rs.getString("returnedDate");
                String rt = rs.getString("returnedtime");
                int amt = rs.getInt("totalamount");
                String status = rs.getString("status");
                
                hp details = new hp(car, type,dp, bd,bt,rd,rt,amt,status); // Create a Person object
                
	            detailsList.add(details);
	        }
	        
	        // Close resources
	        rs.close();
	        ps.close();
	        con.close();
	        
	    } catch (ClassNotFoundException | SQLException e) {
	        System.out.println(e);
	    }
	    
	     // Store list in session
	    
	    session.setAttribute("detailsList", detailsList);
	    
	    // Forward to JSP page
	    req.getRequestDispatcher("bh.jsp").forward(req, res); 
	}
		
	 

	 

}
