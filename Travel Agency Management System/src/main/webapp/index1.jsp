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
<style type="text/css">

	.container {
      padding: 16px 0;
      text-align:left;
      }

</style>
</head>

<body>

	<form action="login" method="post">
		username : <input type="text" name="uname" required><br>
		password: <input type="password" name="pass" required><br>
		<input type="submit">
	
	</form><br>
	
	
	<form action="createacnt.jsp" method="get">
		 
		<input type="submit" value="createAccount">
	
	</form><br>
	
	
      	
   		<c:if test="${not empty sessionScope.msg}">
   			<div class="container" style="background-color: #eee">
		  <p>  ${sessionScope.msg}</p>
		  <%
		     // Remove the session attribute after displaying it
		     session.removeAttribute("msg");
		  %>
		  </div>
	</c:if>
	<c:if test="${empty sessionScope.msg}">
		 
	</c:if>
	
	
	
	<c:if test="${not empty sessionScope.msg2}">
   			<div class="container" style="background-color: #eee">
		  <p>  ${sessionScope.msg2}</p>
		  <%
		     // Remove the session attribute after displaying it
		     session.removeAttribute("msg2");
		  %>
		  </div>
	</c:if>
	<c:if test="${empty sessionScope.msg2}">
		 
	</c:if>
	
	<c:if test="${not empty sessionScope.login}">
   			<div class="container" style="background-color: #eee">
		  <p>  ${sessionScope.login}</p>
		  <%
		     // Remove the session attribute after displaying it
		     session.removeAttribute("login");
		  %>
		  </div>
	</c:if>
	<c:if test="${empty sessionScope.login}">
		 
	</c:if>
	
	
	<form action="book1.jsp" method="get">
		 
		<input type="submit" value="bookingsection">
	
	</form><br>
	
	<form action="imgval" method="post">
		 
		<input type="text"   name="car">
		<input type="text"   name="type">
		<input type="submit" value="show more">
		
		
		<c:if test="${not empty sessionScope.a123}">
   			<div class="container" style="background-color: #eee">
		   	${a123}
			${h123}
			${k123}
		   
		  </div>
		  <%
		  session.removeAttribute("a123");
		  %>
	</c:if>
	<c:if test="${empty sessionScope.a123}">
		 
	</c:if>
		
		
	
	</form><br>
	
	 
</body>
</html>