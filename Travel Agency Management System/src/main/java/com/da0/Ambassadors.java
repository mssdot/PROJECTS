package com.da0;

import java.sql.SQLException;

import com.dao.getcardata;

public class Ambassadors {

	public static void main(String args[]) throws SQLException {
		
		getcardata gc = new getcardata();
		gc.connect();
		
		gc.getData("Ambassadors", "AC");
		gc.addcar("Ambassadors", "AC");
		gc.disconnect();
		
	}
}
