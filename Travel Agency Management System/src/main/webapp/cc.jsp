<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
<title>Collect Charges</title>
 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
     <link rel="stylesheet"  href="css/book1.css" >
         <link rel="stylesheet" href="css/main_page_style.css">

 
 
     <style type="text/css">
     
     
		#hr{
     	 background: white;
     }
     body{
     
     	background: #F2F2FC;
     }
     #hr{
     	 
     	 position: absolute;
     	 left: 410px;
     	 top: 80px
     
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
	
	<form action="cc" method="post">
      <h1>Collect Charges</h1>
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
	  
	  <label for="uid"><strong> ENTER USERNAME</strong></label>
        <input type="text"  name="uid"  > <br>
        
        
         <label for="nhr"><strong> ENTER NUMBER OF HR'S CAR USED</strong></label>
        <input type="text"  name="nhr"  > <br>
        
        <label for="reading"><strong> ENTER NUMBER OF KM'S CAR USED  </strong></label>
        <input type="text"  name="reading"  > <br>
        
      </div>
      
      
        <button type="submit"><strong>NEXT</strong></button>
       
     </div>
    </form>
    
    
    <c:if test="${not empty sessionScope.u}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.u}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("u");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.u}">
			 
		</c:if>
		
		
		
		
		 <c:if test="${not empty sessionScope.uc}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.uc}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("uc");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.uc}">
			 
		</c:if>
		
		
		<c:if test="${not empty sessionScope.uc2}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.uc2}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("uc2");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.uc2}">
			 
		</c:if>
	
	</div>
	 
	
	
	 

</body>
</html>