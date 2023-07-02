package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.*;


public class getcardata {
    private Connection con;
    private int total; 
    private int available;
    private int rentedout;
    private int tc; 
    // date and time
    SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
    String time = df.format(new Date());
    
    Date currentDate = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
    String date = dateFormat.format(currentDate);
	private int available1=0 ;
    
     
    

    public void connect() throws SQLException {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tams", "root", "Pujari@12345");
    }

    public void disconnect() throws SQLException {
        if (con != null) {
            con.close();
        }
    }
    //get total
    public int getData(String car, String type) throws SQLException {
       
    	try {
    	String sql = "select total, available, rentedout, totalcustomers from cars where car=? and type=? ";
    	
        
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, car); 
        st.setString(2, type); 
         
        ResultSet rs =st.executeQuery();
		while(rs.next()) {
			 total = rs.getInt("total");
			 available = rs.getInt("available");
			 rentedout = rs.getInt("rentedout");
			 tc = rs.getInt("totalcustomers");
			 
	 	 
		}
    	 
    }
	catch(SQLException e) {
		System.out.println(e);
	}
    	//System.out.println(total );
    	 
		return available;
    }
    //get available
    public int geta(String car, String type) throws SQLException {
        
    	try {
    	String sql = "select   available    from cars where car=? and type=? ";
    	
        
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, car); 
        st.setString(2, type); 
         
        ResultSet rs =st.executeQuery();
		while(rs.next()) {
			  
			   available1 = rs.getInt("available");
		 
		}
		 
		return available1;
    	 
    }
	catch(SQLException e) {
		System.out.println(e);
	}
    	 
    	 
		return available1;
    }
 
    
    
    
    public void updateData( String car, String type  )   {
     
        	 
        	available--;
        	rentedout++;
        	tc++; 
    	
    	
    		try {
        	String sql = "update cars set  total=?,available=?, rentedout=?, totalcustomers=? where car=? and type=?";
            
        	PreparedStatement st = con.prepareStatement(sql);
             
            st.setInt(1, total);
            st.setInt(2, available);
            st.setInt(3, rentedout);
            st.setInt(4, tc);
            st.setString(5, car);
            st.setString(6, type);
            st.executeUpdate();
        }
		catch(SQLException e) {
			System.out.println(e);
		}
    	 
    }	
    
    
    public void returncar( String car, String type  )   {
        
   	 
    	available++;
    	rentedout--;
    	 
	
	
		try {
    	String sql = "update cars set    available=?, rentedout=?  where car=? and type=?";
        
    	PreparedStatement st = con.prepareStatement(sql);
         
        
        st.setInt(1, available);
        st.setInt(2, rentedout);
        
        st.setString(3, car);
        st.setString(4, type);
        st.executeUpdate();
    }
	catch(SQLException e) {
		System.out.println(e);
	}
	 
}	
    
    
    
    public void addcar( String car, String type  )   {
        
    	total++;
    	//available1++;
    	available++;
    	 
	
	
		try {
    	String sql = "update cars set  total=?,available=?  where car=? and type=?";
        
    	PreparedStatement st = con.prepareStatement(sql);
         
        st.setInt(1, total);
        st.setInt(2, available);
        
        st.setString(3, car);
        st.setString(4, type);
        st.executeUpdate();
    }
	catch(SQLException e) {
		System.out.println(e);
	}
    }	
		public void removecar( String car, String type  )   {
	        
	    	total--;
	    	//available1--;
	    	available--;
	    	 
		
		
			try {
	    	String sql = "update cars set  total=?,available=?  where car=? and type=?";
	        
	    	PreparedStatement st = con.prepareStatement(sql);
	         
	        st.setInt(1, total);
	        st.setInt(2, available);
	        
	        st.setString(3, car);
	        st.setString(4, type);
	        st.executeUpdate();
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
	 
}	
		
		
		
		public int countrepair(String car, String type) throws SQLException {
		    int count = 0;   
	    	try {
	    	String sql = "select count from repair where car=? and type=? ";
	    	
	        
	        PreparedStatement st = con.prepareStatement(sql);
	        st.setString(1, car); 
	        st.setString(2, type); 
	         
	        ResultSet rs =st.executeQuery();
			while(rs.next()) {
				 count = rs.getInt("count");
				  
				 
		 	 
			}
	    	 
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
	    	//System.out.println(total );
	    	 
			return count;
	    }
		
		public void addrepair( String car, String type ,int count )   {
	        
			 
	    	count ++;
	    	 
		
		
			try {
	    	 
	    	String sql2 = "update repair set  count=?   where car=? and type=?";
	        
	    	 
	    	PreparedStatement st2 = con.prepareStatement(sql2);
	         
	    	 st2.setInt(1, count);
	        
	        st2.setString(2, car);
	        st2.setString(3, type);
	        
	        
	       
	        st2.executeUpdate();
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			
			
		
	 
}	
		public void removerepair( String car, String type ,int count )   {
	        
			 
	    	count --;
		
		
			try {
	    	 
				String sql2 = "update repair set  count=?   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 st2.setInt(1, count);
		        
		        st2.setString(2, car);
		        st2.setString(3, type);
		        
		        
		       
		        st2.executeUpdate();
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			
		}
		
		
		public int getexp( String car, String type    )   {
	        
			 
	    	int exp =0 ; 
			
			
			try {
	    	 
				String sql2 = "select expenses from cars   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 
		        
		        st2.setString(1, car);
		        st2.setString(2, type);
		        
		        ResultSet rs =st2.executeQuery();
				while(rs.next()) {
					  
					   exp = rs.getInt("expenses");
					   return exp;
				 
				}
		        
		       
		        
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			return exp;
			
		}
		
		
		public void addexp( String car, String type ,int exp  )   {
	        
			 
	    	 
		
		
			try {
	    	 
				String sql2 = "update cars set  expenses=?   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 st2.setInt(1, exp);
		        
		        st2.setString(2, car);
		        st2.setString(3, type);
		        
		        
		       
		        st2.executeUpdate();
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			
		}
		
		public int getrev( String car, String type    )   {
	        
			 
	    	int rev =0 ; 
			
			
			try {
	    	 
				String sql2 = "select revenue from cars   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 
		        
		        st2.setString(1, car);
		        st2.setString(2, type);
		        
		        ResultSet rs =st2.executeQuery();
				while(rs.next()) {
					  
					   rev = rs.getInt("revenue");
					   return rev;
				 
				}
		        
		       
		        
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			return rev;
			
		}
		
		public int getprofit( String car, String type    )   {
	        
			 
	    	int pro =0 ; 
			
			
			try {
	    	 
				String sql2 = "select profit from cars   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 
		        
		        st2.setString(1, car);
		        st2.setString(2, type);
		        
		        ResultSet rs =st2.executeQuery();
				while(rs.next()) {
					  
					   pro = rs.getInt("profit");
					   return pro;
				 
				}
		        
		       
		        
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			return pro;
			
		}
		
		public int getprice( String car, String type    )   {
	        
			 
	    	int price =0 ; 
			
			
			try {
	    	 
				String sql2 = "select price from cars   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 
		        
		        st2.setString(1, car);
		        st2.setString(2, type);
		        
		        ResultSet rs =st2.executeQuery();
				while(rs.next()) {
					  
					   price = rs.getInt("price");
					   return price;
				 
				}
		        
		       
		        
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			return price;
			
		}
		
		
		public int getro( String car, String type    )   {
	        
			 
	    	int rr =0 ; 
			
			
			try {
	    	 
				String sql2 = "select rentedout from cars   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 
		        
		        st2.setString(1, car);
		        st2.setString(2, type);
		        
		        ResultSet rs =st2.executeQuery();
				while(rs.next()) {
					  
					   rr = rs.getInt("rentedout");
					   return rr;
				 
				}
		        
		       
		        
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			return rr;
			
		}
		

		public void insertrev( String car, String type  ,int rev,int total  )   {
	        
			 
			int total1=total +rev;
			
			try {
	    	 
				String sql2 = "update cars  set  revenue=?   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 
		        
		        st2.setInt(1, total1);
		        st2.setString(2, car);
		        st2.setString(3, type);
		        
		        st2.executeUpdate() ;
		        
		         
				 
		        
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			 
			
		}
		
		 
		 
		public void insertpro( String car, String type  ,int profit2   )   {
	        
			 
		 
			try {
	    	 
				String sql2 = "update cars  set  profit=?   where car=? and type=?";
		        
		    	 
		    	PreparedStatement st2 = con.prepareStatement(sql2);
		         
		    	 
		        
		        st2.setInt(1, profit2);
		        st2.setString(2, car);
		        st2.setString(3, type);
		        
		        st2.executeUpdate() ;
		        
		         
				 
		        
	    }
		catch(SQLException e) {
			System.out.println(e);
		}
			 
			
		}
		
		  
         
    	
}
 