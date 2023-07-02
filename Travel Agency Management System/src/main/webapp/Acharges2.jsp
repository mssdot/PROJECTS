<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
<title>CHANGE CHARGES</title>
 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
     <link rel="stylesheet"  href="css/book1.css" >
     <style type="text/css">
     	#hr{
     	 background: white;
     }
     body{
     
     	background: #F2F2FC;
     }
      body{
     
     	background:  #586368;
     	
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
	
	<form action="Acharges2" method="post">
      <h1>UPDATE CHARGES</h1>
       
      <div class="formcontainer">
      <div class="container">
        <label for="deposit"><strong> CURRENT DEPOSIT AMOUNT</strong></label>
        <input type="text"  name="deposit" value="${Adep}" required readonly > <br>
        
        <label for="deposit"><strong> CURRENT MINIMUM AMOUNT</strong></label>
        <input type="text"  value="${Amin}" required readonly    > <br>
        
         <label for="deposit"><strong> CURRENT CHARGE PER HR</strong></label>
        <input type="text"  value="${Achr}" required readonly    > <br>
         
         <label for="deposit"><strong> CURRENT CHARGE PER KM</strong></label>
        <input type="text"   value="${Ackm}" required readonly   >
        
        <label for="ndep"><strong> ENTER NEW DEPOSIT AMOUNT</strong></label>
        <input type="text"  name="ndep"  > <br>
        
        <label for="nmin"><strong> ENTER NEW MINIMUM AMOUNT</strong></label>
        <input type="text"  name="nmin"  > <br>
        
        <label for="nchr"><strong> ENTER NEW CHARGE PER HR </strong></label>
        <input type="text"  name="nchr"  > <br>
        
        <label for="nckm"><strong> ENTER NEW CHARGE PER KM  </strong></label>
        <input type="text"  name="nckm"  > <br>
        
      </div>
      
      
      <button type="submit"><strong>UPDATE</strong></button>
      </div>
    </form>
	
	</div>
	 
	

</body>
</html>