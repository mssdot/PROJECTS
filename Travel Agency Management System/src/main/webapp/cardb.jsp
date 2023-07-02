<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.carDb" %>
<%@ page import="com.tams.cardb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HISTORY</title>
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
	 
                <c:if test="${not empty sessionScope.cdb}">
    		 
   		    <section class="p-3 mt-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card animated zoomIn delay-2s">
                        <div class="card-header bg-secondary text-white">
                            <h3>CAR DATABASE</h3>
                        </div>
                        <div class="card-body bg-light">

		 
	
    		  
    		 
   		     <table border="1"  class="table table-hover text-center" style="border-collapse:collapse; text-align: center;">
		        <thead class="bg-dark text-white">
		        <tr>
		                <th>car</th>
		                <th>type</th>
		                <th>price</th>
		                <th>total</th>
		                <th>available</th>
		                <th>repair</th>
		                <th>rentedout</th>
		                <th>expenses</th>
		                <th>revenue</th>
		                <th>totalcustomers</th>
		                <th>profit</th>
		            </tr>
		           
		        </thead>
		        <tbody>
		 		<c:forEach var="cdb" items="${sessionScope.cdb}">
					<tr>
	                    <td>${cdb.car}</td>
	                    <td>${cdb.type}</td>
	                    <td>${cdb.price}</td>
	                    <td>${cdb.total}</td>
	                    <td>${cdb.avail}</td>
	                    <td>${cdb.repair}</td>
	                    <td>${cdb.rout}</td>
	                    <td>${cdb.exp}</td>
	                    <td>${cdb.rev}</td>
	                    <td>${cdb.tc}</td>
	                    <td>${cdb.pro}</td>
               		 </tr>
		 		</c:forEach>
		 		<%
   					//HttpSession session  = request.getSession();
   					session.removeAttribute("cdb");
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