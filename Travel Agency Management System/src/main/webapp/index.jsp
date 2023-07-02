<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  
<%@ page import="java.util.List" %>
<%@ page import="com.dao.chargeDb" %>
<%@ page import="com.tams.chargedb" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>R.M.S</title>
    <link rel="stylesheet" href="style.css">
    <!-- Bootstrap CSS Files -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="bootstrap/css/font-awesome-5.8.1.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/mdb.css">
    <link rel="stylesheet" href="main_page_style.css">
    <style>
      .t{
        text-align: center;
        position: absolute;
        left: 50px;
        display:none;


      }
	 
	.container {
      padding: 16px 0;
      text-align:left;
      }
      .bc{
      width:150px;
      font-size: 10px;
      padding: 3px;
      margin:0;
      
      }
	.fa{
		display:inline;
	
	}
 	 .bc2{
    width:90px;
    height:20px;
      font-size: 10px;
      padding: 3px;
      margin:0;
      font-size: 7px;
      
      padding-top:0;
      margin:0  ; 
      position: absolute;
       
      
      }
    </style>  
</head>
<body>
<div class="header" style="margin-top: 10px;margin-left: 5px; margin-right: 5px;">
    <div id="navbar">
        <a href="login.jsp">Login</a>
        <a href="#home">Contact</a>
        <a href="#home">About</a>
        <a href="#home">Home</a>
        
        <b href=#login>R.M.S</b>
        
        
    </div>

<c:if test="${not empty sessionScope.msg}">
   			<div class="header" style="background-color: #eee;margin-top: 10px;margin-left: 5px; margin-right: 5px; height:20px;">
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
   			<div class="header" style="background-color: #eee;margin-top: 10px;margin-left: 5px; margin-right: 5px;height:20px;">
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
   			<div class="header" style="background-color: #eee;margin-top: 10px;margin-left: 5px; margin-right: 5px;height:20px;">
		  <p>  ${sessionScope.login}</p>
		  <%
		     // Remove the session attribute after displaying it
		     session.removeAttribute("login");
		  %>
		  </div>
	</c:if>
	<c:if test="${empty sessionScope.login}">
		 
	</c:if>
	
	 
    
<section class="articles">
    <article>
        <div class="article-wrapper">
        <figure>
            <img src="mi/tatasumo.jpg" alt="" />
        </figure>
        <div class="article-body">
            <h2 class="fa" >Tata Sumo</h2>   
             <form action="cal" method="post" class="fa">
             <input type="text" value="Tata Sumo" hidden name="c1" >
              
             <button class="btn btn-outline-danger bc "  >Get Charges</button>
              </form>
             <form action="book1.jsp" method="get" class="fa">
            	 <button class="btn btn-outline-danger bc" >Book Now</button>
             </form>
            
            
        </div>
        </div>
    </article>
    <article>
    
        <div class="article-wrapper">
        <figure>
            <img src="mi/mahindra-armada-render-featured.jpg" alt="" />
        </figure>
        <div class="article-body">
            <h2> Armada</h2>
            <form action="cal" method="post" class="fa">
             <input type="text" value="Mahindra Armada" hidden name="c1" >
              
             <button class="btn btn-outline-danger bc "  >Get Charges</button>
              </form>
             <form action="book1.jsp" method="get" class="fa">
            	 <button class="btn btn-outline-danger bc" >Book Now</button>
             </form>
            
             
        </div>
        </div>
    </article>
    <article>
    
        <div class="article-wrapper">
        <figure>
            <img src="mi/maruti-suzuki-omni.jpg" alt="" />
        </figure>
        <div class="article-body">
            <h2>Maruthi-Omni</h2>
            <form action="cal" method="post" class="fa">
             <input type="text" value="Maruti Omni" hidden name="c1" >
              
             <button class="btn btn-outline-danger bc "  >Get Charges</button>
              </form>
             <form action="book1.jsp" method="get" class="fa">
            	 <button class="btn btn-outline-danger bc" >Book Now</button>
             </form>
            
            
             
        </div>
        </div>
    </article>
    <article>
    
        <div class="article-wrapper">
        <figure>
            <img src="mi/eesteeem.jpeg" alt="" />
        </figure>
        <div class="article-body">
            <h2>Maruthi-Esteem</h2>
            <form action="cal" method="post" class="fa">
             <input type="text" value="Maruti Esteem" hidden name="c1" >
              
             <button class="btn btn-outline-danger bc "  >Get Charges</button>
              </form>
             <form action="book1.jsp" method="get" class="fa">
            	 <button class="btn btn-outline-danger bc" >Book Now</button>
             </form>
            
             
        </div>
        </div>
    </article>
    <article>
    
        <div class="article-wrapper">
        <figure>
            <img src="mi/ambassador.jpg" alt="" />
        </figure>
        <div class="article-body">
            <h2>Ambassador</h2>
            <form action="cal" method="post" class="fa">
             <input type="text" value="Ambassadors" hidden name="c1" >
              
             <button class="btn btn-outline-danger bc "  >Get Charges</button>
              </form>
             <form action="book1.jsp" method="get" class="fa">
            	 <button class="btn btn-outline-danger bc" >Book Now</button>
             </form>
            
             
        </div>
        </div>
    </article>
    
  </section>







  
  <footer class="footer-distributed">
  
        <div class="footer-left">
  
          <h3 ><span>R.M.S</span></h3>
  
          <p class="footer-links">
            <a href="#"> Home</a>
           	.
            <a href="#">  Pricing</a>
             .
            <a href="#">  About</a>
             ·
            <a href="#">  Contact</a>
          </p>
  
          <p class="footer-company-name">A simple and elegant software for Rental Management</p>
  
          <div class="footer-icons">
  
            <a href="https://www.facebook.com/"><img src="mi/fb.png" alt="facebook logo" width="40px" ></a>
            <a href="https://www.github.com/"><img src="mi/gitlogo.png" alt="github logo" width="40px" ></a>
            <a href="https://www.linkedin.com/"><img  src="mi/linkeddd.png" alt="linked in logo" width="40px" ></a>
            <a href="https://www.twitter.com/"><img src="mi/twitt.png" alt="twitter" width="40px" ></a>
  
          </div>
  
        </div>
  
        <div class="footer-right">
  
          <p>Contact Us</p>
  
          <form action="#" method="post">
  
            <input type="text" name="email" placeholder="Email">
            <textarea name="message" placeholder="Message"></textarea>
            <button>Send</button>
  
          </form>
  
        </div>
  
      </footer>
  
  
  
   

  




<!-- Bootstrap JS files -->
<script src="bootstrap/js/jquery.js"></script>
<script src= "bootstrap/js/popper.js"></script>
<script src= "bootstrap/js/bootstrap.js"></script>
<script src= "bootstrap/js/mdb.js"></script>
<script>
    $(document).ready(function(){
    	
        $('.t').slideToggle(117000);

    });
     
   
</script>
 
</body>
</html>
