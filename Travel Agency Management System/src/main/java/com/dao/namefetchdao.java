package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class namefetchdao {
    private Connection con;
    private PreparedStatement st; 
    private ResultSet rs;
    

    public void connect() throws SQLException {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
    }

    public void disconnect() throws SQLException {
        if (con != null) {
            con.close();
            st.close();
             
        }
    }

    public String insertData(String username ) throws SQLException {
    	
    	try {
    	     st = con.prepareStatement("SELECT name FROM customer WHERE username =?");
    	    st.setString(1, username);
    	    ResultSet rs = st.executeQuery();

    	     
    	    while (rs.next()) {
    	         
    	        String name = rs.getString("name");
    	         
    	        return name;
    	        
 
    	    }
    	    rs.close();

    	    
    	} catch (SQLException e) {
    	    e.printStackTrace();
    	}
    	return "";
    	
       
     
}
}
 