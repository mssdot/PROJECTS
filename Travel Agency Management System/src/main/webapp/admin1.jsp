<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>
	<%
	 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	 
		
		if(session.getAttribute("aname")==null){
			
			response.sendRedirect("index.jsp");
		}
	 
	%>
	
	
		<c:if test="${not empty sessionScope.Aadd}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.Aadd}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("Aadd");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.Aadd}">
			 
		</c:if>
		
		
		
		<c:if test="${not empty sessionScope.Asell}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.Asell}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("Asell");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.Asell}">
			 
		</c:if>
		
		<c:if test="${not empty sessionScope.Acharge}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.Acharge}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("Acharge");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.Acharge}">
			 
		</c:if>
		
		
		
		
		<c:if test="${not empty sessionScope.Arepair}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.Arepair}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("Arepair");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.Arepair}">
			 
		</c:if>
		
		
		
		<c:if test="${not empty sessionScope.Aunrepair}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.Aunrepair}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("Aunrepair");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.Aunrepair}">
			 
		</c:if>
		
		
		
		<c:if test="${not empty sessionScope.exp}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.exp}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("exp");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.exp}">
			 
		</c:if>
		
		
		<c:if test="${not empty sessionScope.cc}">
	   			<div class="container" style="background-color: #eee">
			  <p>  ${sessionScope.cc}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("cc");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.cc}">
			 
		</c:if>
	
	<br>
	<br> 
	<br>
	
	
	
	welcome to Admin page  <br>
	<form action="logout" method="get">
	
		<input type="submit" value="logout">
	</form>
	<form action="cc.jsp" method="get">
	
		<input type="submit" value="collect charges">
	</form>
	
	<form action="Aadd.jsp" method="get">
	
		<input type="submit" value="add vehicle">
	</form>
	
	<form action="Asell.jsp" method="get">
	
		<input type="submit" value="sell vehicle">
	</form>
	
	<form action="Acharges.jsp" method="get">
	
		<input type="submit" value="change charges">
	</form>
	
	<form action="arepair.jsp" method="get">
	
		<input type="submit" value="repair car"> //move car to repair state
	</form>
	<form action="aunrepair.jsp" method="get">
	
		<input type="submit" value="unrepair">  
	</form>
	<form action="aexpenses.jsp" method="get">
	
		<input type="submit" value="maintainance expenses">  
	</form>
	<form action="stat" method="post">
	
		<input type="submit" value="statistics">  
	</form>
</body>
</html>