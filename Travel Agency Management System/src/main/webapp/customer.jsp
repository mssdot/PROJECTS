<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  

<%@ page import="java.util.List" %>
<%@ page import="com.dao.hp" %>
<%@ page import="com.tams.history" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<link rel="stylesheet" href="bootstrap/css/font-awesome-5.8.1.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/mdb.css">
    <link rel="stylesheet" href="bootstrap/css/style.css">
    <link rel="stylesheet" href="css/main_page_style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer</title>
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16x16.png">
    <link rel="manifest" href="/favicon/site.webmanifest">
    <link rel="mask-icon" href="/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <!-- CSS Files -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/skins/color-1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <!-- Style Switcher -->
    <link rel="stylesheet" href="css/skins/color-1.css" class="alternate-style" title="color-1" disabled>
    <link rel="stylesheet" href="css/skins/color-2.css" class="alternate-style" title="color-2" disabled>
    <link rel="stylesheet" href="css/skins/color-3.css" class="alternate-style" title="color-3" disabled>
    <link rel="stylesheet" href="css/skins/color-4.css" class="alternate-style" title="color-4" disabled>
    <link rel="stylesheet" href="css/skins/color-5.css" class="alternate-style" title="color-5" disabled>
    <link rel="stylesheet" href="css/style-switcher.css">
    
    <!-- Font Awsome -->
    <link rel="stylesheet" href="path/to/fontawesome.min.css">
    
     
    

    <style>
        .one{
            position: absolute;
            left: 130px;
            bottom: 225px;
        }
        .two{
            position: absolute;
           
            right: 0;
             
            bottom:200px;
             
        }
        .two2{
            position: absolute;
           
            right: 0;
             
            bottom:300px;
             
        }
        .twok{
            position: absolute;
           
            left: 440px;
             
            top:300px;
             
        }
        .container1{
            margin-left: 260px;
            width:100%;
            border: 1px solid black;
            padding:10px; 
            padding-left:10px;
            text-align:center;
            height: 50px;
            psoition:absolute;
            top:200px;
             

        }
        .b{
        
        	border:none;
        	background: none;
        	font-size: 16px;
        	font-weight: 600;
 
			color: var(--tex-black-900);
			position: absolute;
			left:96px;
			bottom:115px;
 
        }
        .lo{
        
        	position: relative;
        	top:50px;
        	right:50px;
        	font-size: 38px;
			font-weight: 900px;
        
        
        }
        .hd{
        
        	position: absolute;
        	top:180px;
        	left:80px;
        
        }
        .so{
        	position: relative;
        	left:65px;
        	bottom:105px;
        	 
        	width:20px;
        	height:30px;
        	font-size:19px;
			font-weight: 10px;
        	 
        
        }
        
    </style>
</head>

<body>


 <% 
	 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	 
		
		if(session.getAttribute("uname")==null){
			
			response.sendRedirect("index.jsp");
		}
	 
		%>	 

    <!-- Main Container Start -->
    <div class="main-container">
    
        <!-- Aside Start -->
        <div class="aside">
            <div class="logo">
                <a href="#">
                    <span>C</span>ustomer
                </a>
            </div>
            <div class="nav-toggler">
                <span></span>
            </div>
            <ul class="nav">
            	<div class="hd">
                <li style="margin-top: 60px;"><a href="#home" class="active"><i class="fa fa-home"></i>Home</a></li>
                <li><a href="#about"><i class="fa fa-car"></i>Book Car</a></li>
                <li><a href="#techstack"><i class="fas fa-history"></i>History</a></li>
                 <li><a href="#techstack2">  </a></li> 
                <div class="lo">
                 
                
	                <a><i class="fa fa-sign-out so"></i><form action="logout" method="get" >
		
	                    <input type="submit" value="Sign Out" class="b">  
	                </form></a>
                
                 
               </div> 
              
               </div>
            </ul>
        </div>
        <!-- Aside End -->
    
        <!-- Main Content Start -->
        <div class="main-content">
      
            <!-- Home Section Start -->
            <section class="home active section" id="home">
               
          		<div class="container">
                    <div class="row">
                        <div class="home-info padd-15">
                            <h3 class="hello one">  Welcome Mr./Mrs.  <span class="name">${cname}</span></h3>
                            
                            
                            <!-- cutstomer details table -->
                             
                             
                            
                             <!-- cutstomer details table ends-->

                            
                             <br>                   
	
		<c:if test="${not empty sessionScope.cm2}">
	   			<div class="container1" style="background-color: #eee">
			  <p>  ${sessionScope.cm2}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("cm2");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.cm2}">
			 
		</c:if>
		
		
		
		<c:if test="${not empty sessionScope.Asell}">
	   			<div class="container1" style="background-color: #eee">
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
	   			<div class="container1" style="background-color: #eee">
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
	   			<div class="container1" style="background-color: #eee">
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
	   			<div class="container1" style="background-color: #eee">
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
	   			<div class="container1" style="background-color: #eee;  ">
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
	   			<div class="container1" style="background-color: #eee">
			  <p>  ${sessionScope.cc}</p>
			  <%
			     // Remove the session attribute after displaying it
			     session.removeAttribute("cc");
			  %>
			  </div>
		</c:if>
		<c:if test="${empty sessionScope.cc}">
			 
		</c:if>
		
			 
                             
                            <!-- <h3 class="contact-title padd-15">SEND ME AN EMAIL</h3>
                            <h4 class="contact-sub-title padd-15">Will Collaborate Soon😊</h4> -->
                            
                        </div>
                         
                    </div>
                </div>
            </section>      
            <!-- Home Section End -->

            <!-- BOOK Section Start -->
            <section class="about section" id="about">
                <form action="book1.jsp" method="get" class="twok">
	
                    <input type="submit" value="BOOK NOW" class="btn">
                </form>
            </section>
            <!-- BOOK Section End -->
         
            <!-- HISTORY Section Start -->
            <section class="techstack section" id="techstack">
                <form action="history" method="get"  class="twok">
	
                    <input type="submit" value="CLICK HERE" class="btn">
                </form>
               
            </section>
            <!-- HISTORY Section End -->
		
			<!-- empty Section Start -->
            <section class="techstack section" id="techstack2">
                
               
            </section>
            <!-- empty Section End -->
             


        </div>
        <!-- Main Content End -->

    </div>
    <!-- Main Container End -->

    
   
    <!-- JS Files -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js" referrerpolicy="no-referrer"></script>
    <script src="js/script.js"></script>
    <script src="js/style-switcher.js"></script>
    <script src="js/mixitup.min.js"></script>
     
</body>
</html>