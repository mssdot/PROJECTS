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

import com.dao.custDb;


@WebServlet("/custdb")
public class custdb extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		List<custDb> custdb = new ArrayList<custDb>();
		 
		String car1="null",type1="null";
		
		try {
	        
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
	         
	        String sql = "SELECT * FROM customer  ";
	        
	        PreparedStatement ps = con.prepareStatement(sql);
	        
	         
	         
	        ResultSet rs = ps.executeQuery();
	         
	        
	        while (rs.next()) {
	        	String name = rs.getString("name"); // Get the value of the "id" column
                String uname = rs.getString("username");
                String pwd = rs.getString("password");
                String pno = rs.getString("pno");
                 
                
                custDb details =  new custDb(name, uname, pwd, pno); // Create a Person object
                
	            custdb.add(details);
	        }
	        
	         
	        // Close resources
	        rs.close();
	        
	        ps.close();
	        
	        con.close();
	        
	    } catch (  SQLException e) {
	        System.out.println(e);
	    }
	     
	    	 
	    session.setAttribute("custdb", custdb);
	     
	    res.sendRedirect("custdb.jsp");
	    
			
		
		
		 
	}

}
