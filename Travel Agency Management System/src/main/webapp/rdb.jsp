<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.rDb" %>
<%@ page import="com.tams.rdb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REPAIR CAR DATABASE</title>
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
	 
                <c:if test="${not empty sessionScope.rdb}">
    		 
   		    <section class="p-3 mt-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card animated zoomIn delay-2s">
                        <div class="card-header bg-secondary text-white">
                            <h3>REPAIR CAR DATABASE</h3>
                        </div>
                        <div class="card-body bg-light">

		 
	
    		  
    		 
   		     <table border="1"  class="table table-hover text-center" style="border-collapse:collapse; text-align: center;">
		        <thead class="bg-dark text-white">
		        <tr>
 		                <th>car</th>
		                <th>type</th>
		                <th>Number of Vehicles in Repair State</th>
		               
		                 
		                
		            </tr>
		           
		        </thead>
		        <tbody>
		 		<c:forEach var="rdb" items="${sessionScope.rdb}">
					<tr>
	                     
	                    <td>${rdb.car}</td>
	                    <td>${rdb.type}</td>
	                    <td>${rdb.count}</td>
	                     
	                     
	                     
	                     
               		 </tr>
		 		</c:forEach>
		 		<%
   					//HttpSession session  = request.getSession();
   					session.removeAttribute("rdb");
   				%>
 				</tbody>
    
				</table>
					 </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
			
			
   				
   				
			</c:if>
			 
</body>
</html>