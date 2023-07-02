package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.*;


public class insertacnt2 {
    private Connection con;
     
    
    SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
    String time = df.format(new Date());
    
    Date currentDate = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
    String date = dateFormat.format(currentDate);
    
     
    

    public void connect() throws SQLException {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
    }

    public void disconnect() throws SQLException {
        if (con != null) {
            con.close();
        }
    }

    public void insertData(String car, String type, int deposit ,String uname ) throws SQLException {
        
        String sql = "INSERT INTO  bookinghistory  (  car ,type , bookedDate , bookedtime ,damount  ,status,customer )values(?,?,?,?,?,?,?)";
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, car);
        st.setString(2, type);
        st.setString(3, date);
        st.setString(4, time);
        st.setInt(5, deposit);
        st.setString(6, "NOT RETURNED");
        st.setString(7, uname);
        st.executeUpdate();
    }
 public String gettime(String uid ) throws SQLException {
        
        String sql = "select bookedtime from bookinghistory where customer=? and status=?";
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, uid);
        st.setString(2, "NOT RETURNED");
        ResultSet rs = st.executeQuery(); 
        while(rs.next()) {
        	
        	return rs.getString("bookedtime");
        } 
        
        
        return "empty";
    }
 
 
 
 public String getdate(String uid ) throws SQLException {
     
     String sql = "select bookedDate from bookinghistory where customer=?  and status=?";
     PreparedStatement st = con.prepareStatement(sql);
     st.setString(1, uid);
     st.setString(2, "NOT RETURNED");
     ResultSet rs = st.executeQuery(); 
     while(rs.next()) {
     	
     	return rs.getString("bookedDate");
     } 
     
     
     return "empty";
 }
 
 public void insertdt( String date, String time ,int total ,String bd, String bt  )   {
     
  	 
 	Connection conn = null;
     PreparedStatement st = null;
     ResultSet rs = null;
     int value = 0;
		
		try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
 	String sql = "update bookinghistory  set  returnedDate=?, returnedtime  =? ,totalamount =? ,status=?   where bookedDate =? and bookedtime=?";
     
 	st = conn.prepareStatement(sql);
      
     st.setString(1, date);
     st.setString(2, time);
     st.setInt(3, total);
     st.setString(4, "RETURNED");
     
     st.setString(5, bd);
     st.setString(6, bt);
     st.executeUpdate();
 }
	catch(SQLException e) {
		System.out.println(e);
	}
		
 }
 
 
}
 