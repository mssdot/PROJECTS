<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<!DOCTYPE html>
<html>
  <title>Simple Sign up from</title>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
     <link rel="stylesheet"  href="css/createacnt.css" >
     
  </head>
  <body>
    <form action="createacnt" method="post">
      <h1>SIGN UP</h1>
      <div class="icon">
        <i class="fas fa-user-circle"></i>
      </div>
      <div class="formcontainer">
      <div class="container">
        <label for="name"><strong>Name</strong></label>
        <input type="text" placeholder="Enter Name" name="name" required>
        <label for="uname"><strong>Username</strong></label>
        <input type="text" placeholder="Enter Username" name="uname" required>
        <label for="pno"><strong>Phone Number</strong></label>
        <input type="text" placeholder="Enter Phone Number" name="pno" required>
        <label for="pwd1"><strong>Password</strong></label>
        <input type="password" placeholder="Enter Password" name="pwd1" required>
        <label for="pwd2"><strong>Confirm Password</strong></label>
        <input type="password" placeholder="Re Enter Password" name="pwd2" required>
        
      </div>
      
      <div class="container" style="background-color: #eee">
        <label style="padding-left: 15px">
        <input type="checkbox"  checked="checked" name="remember"> Agree to Terms & Conditions
        </label>
        <span class="psw"><a href="#">Forgot password?</a></span>
      </div>
      <button type="submit"><strong>SIGN UP</strong></button>
    </form>
    
    
      	
   		<c:if test="${not empty sessionScope.msg}">
   				<div class="container" style="background-color: #eee">
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
				<div class="container" style="background-color: #eee">
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