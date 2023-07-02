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

import com.dao.carDb;

 
@WebServlet("/cardb")
public class cardb extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		List<carDb> cdb = new ArrayList<carDb>();
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
	         
	        String sql = "SELECT * FROM cars  ";
	        
	        PreparedStatement ps = con.prepareStatement(sql);
	        
	         
	         
	        ResultSet rs = ps.executeQuery();
	         
	        
	        while (rs.next()) {
	        	String car = rs.getString("car"); // Get the value of the "id" column
                String type = rs.getString("type");
                int price = rs.getInt("price");
                int total = rs.getInt("total");
                int avail = rs.getInt("available");
                int repair = rs.getInt("repair");
                int rout = rs.getInt("rentedout");
                int exp = rs.getInt("expenses");
                int rev = rs.getInt("revenue");
                int tc = rs.getInt("totalcustomers");
                int pro = rs.getInt("profit");
                
                carDb details = new   carDb(car, type, price, total, avail, repair, rout, exp, rev, tc, pro); // Create a Person object
                
	            cdb.add(details);
	        }
	        
	         
	        // Close resources
	        rs.close();
	        
	        ps.close();
	        
	        con.close();
	        
	    } catch (  SQLException e) {
	        System.out.println(e);
	    }
	     
	    	 
	    session.setAttribute("cdb", cdb);
	     
	    res.sendRedirect("cardb.jsp");
	    
			
		
		
		 
	}

}
