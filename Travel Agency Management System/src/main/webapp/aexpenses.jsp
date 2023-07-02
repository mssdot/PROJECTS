<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
<title>MAINTAINANCE EXPENSES OF A CAR</title>
 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
     <link rel="stylesheet"  href="css/book1.css" >
     <style type="text/css">
     
     #hr{
     	 
     	 position: absolute;
     	 left: 480px;
     	 top: 80px;
     	 background: white;
     
     }
     .icon{
     	position:relative;
     	left:10px
     
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
	
	<form action="Aexp" method="post">
      <h1>MAINTAINANCE EXPENSES  </h1>
      <div class="icon">
         <i class="fas fa-money-bill-alt"></i>

      </div>
      <div class="formcontainer">
      <div class="container">
        <label  ><strong>Select Car</strong></label>
         
       	<select name="cars" required >
		    <option value="Ambassadors" selected >Ambassadors</option>
		    <option value="Tata Sumo" >Tata Sumo</option>
		    <option value="Maruti Omni">Maruti Omni</option>
		    <option value="Maruti Esteem">Maruti Esteem</option>
		    <option value="Mahindra Armada">Mahindra Armada</option>
	  	</select>
	  <br><br>
        <label  ><strong>Select  Type</strong></label>
         
       	<select name="type" required >
		    <option value="AC" selected>AC</option>
		    <option value="NON-AC">NON-AC</option>
		     
	  	</select>
	  <br><br>
	  <label for="exp"><strong> ENTER AMOUNT</strong></label>
        <input type="text"  name="exp"  > <br>
        
      </div>
      
      
        <button type="submit"><strong>SUBMIT</strong></button>
       
     </div>
    </form>
	
	</div>
	 
	
	
	 

</body>
</html>