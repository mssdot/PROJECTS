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

import com.dao.chargeDb;


@WebServlet("/chargedb")
public class chargedb extends HttpServlet {
	 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		List<chargeDb> chd = new ArrayList<chargeDb>();
		 
		String car1="null",type1="null";
		
		try {
	        
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
	         
	        String sql = "SELECT * FROM charges  ";
	        
	        PreparedStatement ps = con.prepareStatement(sql);
	        
	         
	         
	        ResultSet rs = ps.executeQuery();
	         
	        
	        while (rs.next()) {
	        	 
                String car = rs.getString("car");
                String type = rs.getString("type");
                int  dep = rs.getInt("deposit");
                int  mc = rs.getInt("min_charge");
                int  cpk = rs.getInt("charge_pkm");
                int  cph = rs.getInt("charge_phr");
                
                
                chargeDb details =  new  chargeDb(car, type, dep, mc, cpk, cph);// Create a Person object
                
	            chd.add(details);
	        }
	        
	         
	        // Close resources
	        rs.close();	
	        
	        ps.close();
	        
	        con.close();
	        
	    } catch (  SQLException e) {
	        System.out.println(e);
	    }
	     
	    	 
	    session.setAttribute("chd", chd);
	     
	    res.sendRedirect("chd.jsp");
	    
			
		
		
		 
	}

}
