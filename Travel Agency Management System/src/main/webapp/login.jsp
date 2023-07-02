<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %> 
<!DOCTYPE html>
<html>
<head>
	<title>Login to RMS</title>
	
	<link rel="stylesheet" type="text/css" href="log.css">
	 
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
<style>
.ms{
margin-top: 10px;
}
.container{


    padding: 16px 0;
    text-align:left;
   

}
.lo{
	 
	
	position: absolute;
	left: 300px;
	 
	top:600px;

}
.header{
	font-size: 25px;
}
.sss{

	height:35px;
}

</style>
</head>
<body>
	<div class="image">
		<img src="mi/logo.png" alt="logo" width="800px">
	</div> 
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form  action="createacnt" method="post">
					 
			        <input type="text" placeholder="Enter Name" name="name" required>
			        
			        <input type="text" placeholder="Enter Username" name="uname" required>
			         
			        <input type="text" placeholder="Enter Phone Number" name="pno" required>
			        
			        <input type="password" placeholder="Enter Password" name="pwd1" required>
			         
			        <input type="password" placeholder="Re Enter Password" name="pwd2" required>
					<button type="submit"><strong>SIGN UP</strong></button>
				</form>
			</div>
			

			<div class="login l3">
				<form  action="login" method="post">
					<label for="chk" aria-hidden="true">Login</label>
					<input type="text" name="uname" placeholder="Username" required="">
					<input type="password" name="pass" placeholder="Password" required="">
					 <input type="submit" value="login" class="sss">
					
				</form>
			</div>	
	</div><br>
	<div class="lo">
	
	 <c:if test="${not empty sessionScope.msg}">
   				<div class="header" style="background-color: #eee;margin-top: 10px;margin-left: 5px; margin-right: 5px;">
			  <p>The value stored in session is: ${sessionScope.msg}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("msg");
			  %>
			  </div> 
		</c:if>
		<c:if test="${empty sessionScope.msg}">
			  
		</c:if>
		
		
		<c:if test="${not empty sessionScope.msg3}">
				<div class="header" style="background-color: #eee;margin-top: 10px;margin-left: 5px; margin-right: 5px;">
			  <p>  ${sessionScope.msg3}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("msg3");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.msg3}">
			  
		</c:if>
	</div>
	
	 
</body>
</html>
