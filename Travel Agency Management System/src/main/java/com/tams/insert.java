package com.tams;

import java.sql.SQLException;

import com.dao.insertacnt;

public class insert {
	  public static void main(String[] args) {
	        String url = "jdbc:mysql://localhost:3306/mydb";
	        String username = "root";
	        String password = "password";
	        insertacnt dbInsert = new insertacnt();
	        try {
	            dbInsert.connect();
	            dbInsert.insertData("John Smith", "30", "1","1");
	            dbInsert.disconnect();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	}