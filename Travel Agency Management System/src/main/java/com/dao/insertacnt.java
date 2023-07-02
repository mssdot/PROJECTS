package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class insertacnt {
    private Connection con;
     
    

    public void connect() throws SQLException {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
    }

    public void disconnect() throws SQLException {
        if (con != null) {
            con.close();
        }
    }

    public void insertData(String name, String uname, String pass, String pno) throws SQLException {
        String sql = "INSERT INTO customer (name,username, password, pno) VALUES (?, ?, ?,?)";
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, name);
        st.setString(2, uname);
        st.setString(3, pass);
        st.setString(4, pno);
        st.executeUpdate();
    }
}
 