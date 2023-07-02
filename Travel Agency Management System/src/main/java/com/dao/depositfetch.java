package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class depositfetch {
    public int   depositf(String  car,String type) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int value = 0;
        
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
            
            String sql = "SELECT deposit FROM charges WHERE car =? AND type = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, car);
            pstmt.setString(2, type);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                value = rs.getInt("deposit");
                System.out.println("The value is: " + value);
                return value;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                
                if (pstmt != null) {
                    pstmt.close();
                }
                
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return 0;
    }
    //MIN AMT
    
    public int   minf(String  car,String type) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int value = 0;
        
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
            
            String sql = "SELECT min_charge FROM charges WHERE car =? AND type = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, car);
            pstmt.setString(2, type);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                value = rs.getInt("min_charge");
                System.out.println("The value is: " + value);
                return value;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                
                if (pstmt != null) {
                    pstmt.close();
                }
                
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return 0;
    }
    
    // CHARGER PER HR
    
    public int   chrf(String  car,String type) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int value = 0;
        
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
            
            String sql = "SELECT charge_phr FROM charges WHERE car =? AND type = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, car);
            pstmt.setString(2, type);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                value = rs.getInt("charge_phr");
                System.out.println("The value is: " + value);
                return value;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                
                if (pstmt != null) {
                    pstmt.close();
                }
                
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return 0;
    }
    
    //CHARGE PER KM
    
    public int   ckmf(String  car,String type) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int value = 0;
        
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
            
            String sql = "SELECT charge_pkm FROM charges WHERE car =? AND type = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, car);
            pstmt.setString(2, type);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                value = rs.getInt("charge_pkm");
                System.out.println("The value is: " + value);
                return value;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                
                if (pstmt != null) {
                    pstmt.close();
                }
                
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return 0;
    }
    
    
    public void insertc( String car, String type ,int dep, int min,  int ckm,int chr  )   {
        
   	 
    	Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        int value = 0;
		
		try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
    	String sql = "update charges  set  deposit=?,min_charge =? ,charge_pkm =? ,charge_phr  =?  where car=? and type=?";
        
    	st = conn.prepareStatement(sql);
         
        st.setInt(1, dep);
        st.setInt(2, min);
        st.setInt(3, ckm);
        st.setInt(4, chr);
        
        st.setString(5, car);
        st.setString(6, type);
        st.executeUpdate();
    }
	catch(SQLException e) {
		System.out.println(e);
	}
 
}
    
    public int ucheck( String uid  )   {
        
      	 
    	Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
		
		try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
    	String sql = "SELECT COUNT(*) FROM bookinghistory WHERE customer = ?;";
        
    	st = conn.prepareStatement(sql);
         
        st.setString(1, uid);
        
        rs = st.executeQuery();
        
        if (rs.next()) {
        	
        	 
            
            return rs.getInt(1);
        }
    }
	catch(SQLException e) {
		System.out.println(e);
	}
		return 0;
 
}

    
    public int scheck( String uid ,String car, String type )   {
        
     	 
    	Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
		
		try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
    	String sql = "SELECT COUNT(*) FROM bookinghistory WHERE customer = ?and car = ? and type = ? and status='NOT RETURNED' ;";
        
    	st = conn.prepareStatement(sql);
         
        st.setString(1, uid);
        st.setString(2, car);
        st.setString(3, type);
        rs = st.executeQuery();
        
        if (rs.next()) {
        	
        	 
            
            return rs.getInt(1);
        }
    }
	catch(SQLException e) {
		System.out.println(e);
	}
		return 0;
 
}
        
    
       
    
}
