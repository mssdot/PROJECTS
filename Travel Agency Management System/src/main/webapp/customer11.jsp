<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  

<%@ page import="java.util.List" %>
<%@ page import="com.dao.hp" %>
<%@ page import="com.tams.history" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	width: 100%;
	height: 300px;
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
	welcome Mr./Mrs. ${cname} <br>
	
	<form action="logout" method="get">
		 
		<input type="submit" value="logout">
	
	</form><br>
	
	<form action="book1.jsp" method="get">
		 
		<input type="submit" value="bookingsection">
	
	</form><br>
	
	<br>
	<hr>
	<%-- <table border="1">
        <thead>
            <tr>
                <th>car</th>
                <th>type</th>
                <th>bookedDte</th>
                <th>returnedDtae</th>
            </tr>
            <c:catch var ="catchException">
        </thead>
        <tbody>
        	 
         
      
            <c:forEach var="hp1" items="${history.hdetails()}">
                <tr>
                    <td>${hp1.car}</td>
                    <td>${hp1.type}</td>
                    <td>${hp1.bd}</td>
                    <td>${hp1.rd}</td>
                </tr>
            </c:forEach>
            
        </tbody>
        </c:catch>
             <c:if test = "${catchException != null}">
         <p>The exception is : ${catchException} <br />
         There is an exception: ${catchException.message}</p>
      </c:if>
    </table> --%>
    
    <form action="history" method="get">
		 
		<input type="submit" value="history">
	
	</form><br>
    
    

    		 <c:if test="${not empty sessionScope.detailsList}">
    		 
   		     <table border="1">
		        <thead>
		            <tr>
		                <th>car</th>
		                <th>type</th>
		                <th>deposit</th>
		                <th>bookedDate</th>
		                <th>bookedtime</th>
		                <th>ReturnedDate</th>
		                <th>ReturnedTime</th>
		                <th>TotalAmount</th>
		                <th>status</th>
		            </tr>
		           
		        </thead>
		        <tbody>
		 		<c:forEach var="details" items="${sessionScope.detailsList}">
					<tr>
	                    <td>${details.car}</td>
	                    <td>${details.type}</td>
	                    <td>${details.dp}</td>
	                    <td>${details.bd}</td>
	                    <td>${details.bt}</td>
	                    <td>${details.rd}</td>
	                    <td>${details.rt}</td>
	                    <td>${details.amt}</td>
	                    <td>${details.status}</td>
               		 </tr>
		 		</c:forEach>
		 		<%
   					//HttpSession session  = request.getSession();
   					session.removeAttribute("detailsList");
   				%>
	 				</tbody>
    
				</table>
   				
   				
			</c:if>
			<c:if test="${empty sessionScope.detailsList}">
				 
			</c:if>
    
   	
   	<c:if test="${not empty sessionScope.cm2}">
   			<div class="container" style="background-color: #eee">
		  <p>  ${sessionScope.cm2}</p>
		  <%
		     // Remove the session attribute after displaying it
		     session.removeAttribute("cm2");
		  %>
		  </div>
	</c:if>
	<c:if test="${empty sessionScope.cm2}">
		 
	</c:if>

</body>
</html>