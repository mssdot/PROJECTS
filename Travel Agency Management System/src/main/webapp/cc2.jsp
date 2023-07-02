<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
<title>COLLECT CHARGES</title>
 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
     <link rel="stylesheet"  href="css/book1.css" >
     <style>
     	
		#hr{
     	 background: white;
     }
     body{
     
     	background: #F2F2FC;
     }
     
     </style>
     
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	 
		if(session.getAttribute("aname")==null){
			
			response.sendRedirect("index.jsp");
		}
	
	
	
	%>

	  <br><br>
	<div id="hr"  >
	
	<form action="cc2" method="post">
      <h1>UPDATE CHARGES</h1>
       
      <div class="formcontainer">
      <div class="container">
        <label for="deposit"><strong>  DEPOSITED AMOUNT</strong></label>
        <input type="text"  name="deposit" value="${dep}" required readonly > <br>
        
        <label for="deposit"><strong>   MINIMUM AMOUNT</strong></label>
        <input type="text"  value="${min}" required readonly    > <br>
        
         <label for="deposit"><strong>   CHARGE PER HR</strong></label>
        <input type="text"  value="${chr}" required readonly    > <br>
         
         <label for="deposit"><strong>   CHARGE PER KM</strong></label>
        <input type="text"   value="${ckm}" required readonly   >
        
        <label for="deposit"><strong>   CHARGE PER HALTED NIGHT</strong></label>
        <input type="text"   value="150" required readonly   >
        
         <label for="deposit"><strong>NUMBER OF HR'S TRAVELLED</strong></label>
        <input type="text"   value="${nhr}" required readonly   >
        
         <label for="deposit"><strong>NUMBER OF KM'S TRAVELLED</strong></label>
        <input type="text"   value="${reading}" required readonly   >
        
         <label for="deposit"><strong>NUMBER OF HALTED NIGHTS</strong></label>
        <input type="text"   value="${halt}" required readonly   >
        
        <label for="ndep"><strong> AMOUNT TO BE PAID BY CUSTOMER</strong></label>
       <input type="text"   value="${upay}" required readonly   >
        
        <label for="ndep"><strong> AMOUNT TO BE PAID BY COMPANY </strong></label>
       <input type="text"   value="${cpay}" required readonly   >
        
         
        
      </div>
      
      
      <button type="submit"><strong>PAY NOW</strong></button>
      </div>
    </form>
	
	</div>
	 
	

</body>
</html>