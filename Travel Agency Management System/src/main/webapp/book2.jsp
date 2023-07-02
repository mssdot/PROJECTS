<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
     <link rel="stylesheet"  href="css/book1.css" >
     <style type="text/css">
     
     #hr{
     
     	 position: absolute;
     	left: 480px;
     	 top: 150px;
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
	 
		if(session.getAttribute("cname")==null){
			
			response.sendRedirect("index.jsp");
		}
	
	
	
	%>

	 
	<div id="hr"  >
	
	<form action="book2" method="post">
      <h1>SIGN UP</h1>
      <div class="icon">
        <i class='fas fa-money-check'></i>
        <!-- <i class="fa-regular fa-money-check"></i>

         -->
      </div>
      <div class="formcontainer">
      <div class="container">
        <label for="deposit"><strong>DEPOSIT AMOUNT</strong></label>
        <input type="text"  name="deposit" value="${dep}" required readonly >
         
        
      </div>
      
      
      <button type="submit"><strong>PAY NOW</strong></button>
      </div>
    </form>
	
	</div>
	 
	

</body>
</html>