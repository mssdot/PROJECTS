package com.dao;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class accountverifydao{
	
	String query="select * from customer where username=?   "  ;
	String url="jdbc:mysql://localhost:3306/tams";
	public boolean check(String uname ) {
	try {
	Class.forName("com.mysql.cj.jdbc.Driver"); 
	
	Connection con= DriverManager.getConnection(url, "root", "Pujari@12345") ;
	PreparedStatement st = con.prepareStatement(query);
	st.setString(1, uname);
	 
	 
	ResultSet rs =st.executeQuery();
	while(rs.next()) {
		 
		return true;
	}
	st.close();
	con.close();
	}
   catch (Exception e){
	  System.out.println(e);
	
  }
	
	return false;
	
	
	}
} 