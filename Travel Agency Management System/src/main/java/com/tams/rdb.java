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

import com.dao.rDb;


@WebServlet("/rdb")
public class rdb extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		List<rDb> rdb = new ArrayList<rDb>();
		 
		String car1="null",type1="null";
		
		try {
	        
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
	         
	        String sql = "SELECT * FROM repair;  ";
	        
	        PreparedStatement ps = con.prepareStatement(sql);
	        
	         
	         
	        ResultSet rs = ps.executeQuery();
	         
	        
	        while (rs.next()) {
	        	 
                String car = rs.getString("car");
                String type = rs.getString("type");
                int  count = rs.getInt("count");
                
                
                
                rDb details =  new   rDb(car, type, count);// Create a Person object
                
	            rdb.add(details);
	        }
	        
	         
	        // Close resources
	        rs.close();	
	        
	        ps.close();
	        
	        con.close();
	        
	    } catch (  SQLException e) {
	        System.out.println(e);
	    }
	     
	    	 
	    session.setAttribute("rdb", rdb);
	     
	    res.sendRedirect("rdb.jsp");
	    
			
		
		
		 
	}

}
