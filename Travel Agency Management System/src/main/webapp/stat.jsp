<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Statistics</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="bootstrap/css/font-awesome-5.8.1.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/mdb.css">
    <link rel="stylesheet" href="bootstrap/css/style.css">
    <link rel="stylesheet" href="css/main_page_style.css">

<style type="text/css">
	body{
     
     	background: #F2F2FC;
     }

</style>
</head>
<body>
	<section class="p-3 mt-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card animated zoomIn delay-2s">
                        <div class="card-header bg-secondary text-white">
                            <h3>STATISTICS</h3>
                        </div>
                        <div class="card-body bg-light">

		 
	
    		  
    		 
   		     <table border="1"  class="table table-hover text-center" style="border-collapse:collapse; text-align: center;">
		        <thead class="bg-dark text-white">
		            <tr>
		                <th>car</th>
		                <th>type</th>
		                <th>price</th>
		                <th>expenses</th>
		                <th>revenue</th>
		                <th>profit</th>
		            </tr>
		           
		        </thead>
		        <tbody>
		 		<c:forEach var="details" items="${sessionScope.sl}">
					<tr>
	                    <td>${details.car}</td>
	                    <td>${details.type}</td>
	                    <td>${details.price}</td>
	                    <td>${details.exp}</td>
	                    <td>${details.rev}</td>
	                    <td>${details.pro}</td>
               		 </tr>
		 		</c:forEach>
		 		<%
   					//HttpSession session  = request.getSession();
   					//session.removeAttribute("sl");
   				%>
	 				</tbody>
    
				</table>
				
   				
   				
			 
			 </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
			
			<br>
			<br>
			
			<c:if test="${not empty sessionScope.max1}">
	   			<div class="container card-header bg-secondary text-white animated zoomIn delay-2s">
			   
			   	MOST PROFITABLE CAR IS : ${c1} TYPE: ${t1} WITH PROFIT ${max1}
			   	<%
			   	
			   
			   	%>
			   	  
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.max1}">
			<div class="container card-header bg-secondary text-white animated zoomIn delay-2s" >
			 NO CAR IS IN PROFIT AS OF NOW. <br>
			  </div>
		</c:if>
			
			

</body>
</html>