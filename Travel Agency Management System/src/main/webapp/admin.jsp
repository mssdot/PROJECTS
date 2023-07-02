<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"  %>  
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>  


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
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
         	width:100%;
            position: relative;
            left: 130px;
            top: 30px;
        }
        .two{
            position: absolute;
           
            right: 0;
             
            top:100px;
            right:20px;
             
        }
        .two1{
             position: absolute;
           
            right: 0;
             
            top:200px;
            right:20px;
            
             
        }
        .two2{
            position: absolute;
           
            right: 0;
             
            top:300px;
            right:20px; 
        }
        .two3{
            position: absolute;
           
            right: 0;
             
            top:400px;
            right:20px;
             
        }
        .two4{
            position: absolute;
           
            right: 0;
             
            top:500px;
            right:20px; 
        }
        .two5{
            position: absolute;
           
            right: 0;
             
            top:600px;
            right:20px; 
        }
        .twok{
            position: absolute;
           
            left: 440px;
             
            top:300px;
             
        }
        .container1{
            margin-left: 260px;
            width:300px;
            border: 1px solid black;
            padding:10px; 
            padding-left:10px;
            text-align:center;
            height: 80px;
            position:absolute;
            top:300px;
            right:400px;
             

        }
        .b{
        
        	border:none;
        	background: none;
        	font-size: 16px;
        	font-weight: 600;
 
color: var(--tex-black-900);
position: absolute;
left:80px;
bottom:57px;
 
        }
        .circle {
  display: inline-block;
  position: relative;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  background-color: #2196F3;
  color: #fff;
  text-align: center;
  line-height: 50px;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  white-space: nowrap;
  animation: gradient 5s infinite;
}

@keyframes gradient {
  0% {
    background: linear-gradient(to right, #2196F3, #F44336);
  }
  50% {
    background: linear-gradient(to right, #F44336, #4CAF50);
  }
  100% {
    background: linear-gradient(to right, #4CAF50, #2196F3);
  }
}
.btn1 {
    font-size: 16px;
    font-weight: 500;
     
    color: white; 
    background:none;
     
    display: inline-block;
   
    border: none;
    
    transition: all 0.3s ease;
}
.btn11:hover {
    transform: scale(1.35);
}
 .tx{
 	 
 	position:relative;
 	right:12px;
 	  
 	
 }
        
    </style>
</head>

<body>


    <%
	 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	 
		
		if(session.getAttribute("aname")==null){
			
			response.sendRedirect("index.jsp");
		}
	 
	%>

    <!-- Main Container Start -->
    <div class="main-container">
    
        <!-- Aside Start -->
        <div class="aside">
            <div class="logo">
                <a href="#">
                    <span>A</span>dmin
                </a>
            </div>
            <div class="nav-toggler">
                <span></span>
            </div>
            <ul class="nav">
                <li style="margin-top: 60px;"><a href="#home" class="active"><i class="fa fa-home"></i>Home</a></li>
                <li><a href="#about"><i class="fa fa-plus"></i>Add Car</a></li>
                <li><a href="#techstack"><i class="fa fa-minus"></i>Sell a Car</a></li>
                <li><a href="#portfolio"><i class="fas fa-edit"></i>  Change Charges</a></li>
                <li><a href="#blog"><i class="fa    fa-wrench"></i>Repair</a></li>
                <li><a href="#contact"><i class="fa fa-briefcase"></i>Unrepair</a></li>
                <li><a href="#contact2"><i class="fa fa   fa-credit-card"></i>Maintainance Expenses</a></li>
                <li><a href="#contact3"><i class="fa fa fa-chart-bar"></i>Statistics</a></li>
                
                <li> <a><i class="fa fa-sign-out"></i><form action="logout" method="get" >
	
                    <input type="submit" value="Sign Out" class="b">  
                </form></a></li>
                
            </ul>
        </div>
        <!-- Aside End -->
    
        <!-- Main Content Start -->
        <div class="main-content">
      
            <!-- Home Section Start -->
            <section class="home active section " id="home">
                <h3 class="hello one">Hello, Welcome to  <span class="name">Admin Page</span></h3>
                <form action="cc.jsp" method="post" class="two">
                				<div class="circle btn11">
                				
                					<button type="submit" class="btn1 btn11 tx"> CC</button>
                				</div>
                                

                            </form> 
                            
                            <form action="cardb" method="post" class="two1">
                            		<div class="circle btn11">
                                <button type="submit" class="btn1 btn11">
                                <i class="fa fa-car" aria-hidden="true"></i>
                                
                                <i class="fa-solid fa-database"></i></button>
									</div>
                            </form><br><br>
                            
                            <form action="custdb" method="post" class="two2">
                            <div class="circle btn11">
                            
                                <button type="submit" class="btn1 btn11"> 
                                 <i class="fa fa-user" aria-hidden="true"></i>
                                
                                <i class="fa-solid fa-database"></i> 
                                
                                </button>
							</div>
                            </form><br><br>
                            <form action="chargedb" method="post" class="two3">
                            	<div class="circle btn11">  
                                <button type="submit" class="btn1 btn11"> 
                                 <i class="fa fa-inr" aria-hidden="true"></i>
                                
                                <i class="fa-solid fa-database"></i> 
                                </button>
                                </div>

                            </form><br><br>
                            <form action="bdb" method="post" class="two4">
                            	<div class="circle btn11">
                            	
                                <button type="submit" class="btn1 btn11"> 
                                
                                 <i class="fa fa-book" aria-hidden="true"></i>
                                
                                <i class="fa-solid fa-database"></i> 
                                </button>
                                </div>

                            </form><br><br>
                            <form action="rdb" method="post" class="two5">
                            <div class="circle btn11">
                            
                                <button type="submit" class="btn1 btn11"> 
                                
                                 <i class="fa fa-wrench" aria-hidden="true"></i>
                                
                                <i class="fa-solid fa-database"></i>
                                </button>
                                </div>

                            </form><br><br>
                            
                            <c:if test="${not empty sessionScope.Aadd}">
	   			<div class="container1" style="background-color: #eee">
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
		
                            
          		<div class="container">
                    <div class="row">
                        <div class="home-info padd-15">
                           
                            
                            

                            
                             <br>                   
	
		
			 
                             
                            <!-- <h3 class="contact-title padd-15">SEND ME AN EMAIL</h3>
                            <h4 class="contact-sub-title padd-15">Will Collaborate Soon😊</h4> -->
                            
                        </div>
                         
                    </div>
                </div>
            </section>      
            <!-- Home Section End -->

            <!-- About Section Start -->
            <section class="about section" id="about">
                <form action="Aadd.jsp" method="get" class="twok">
	
                    <input type="submit" value="add vehicle" class="btn">
                </form>
            </section>
            <!-- About Section End -->
         
            <!-- Tech Stack Section Start -->
            <section class="techstack section" id="techstack">
                <form action="Asell.jsp" method="get"  class="twok">
	
                    <input type="submit" value="sell vehicle" class="btn">
                </form>
            </section>
            <!-- Tech Stack Section End -->

            <!-- Portfolio Section Start -->
            <section class="portfolio section" id="portfolio">
                <form action="Acharges.jsp" method="get" class="twok" >
	
                    <input type="submit" value="change charges" class="btn">
                </form>
            </section>
            <!-- Portfolio Section End -->

            <!-- Blogs Section Start -->
            <section class="blog section" id="blog">
                <form action="arepair.jsp" method="get"  class="twok">
	
                    <input type="submit" value="repair car" class="btn">  
                </form>
            </section>
            <!-- Blogs Section End -->

            <!-- Contact Section Start -->
            <section class="contact section" id="contact" >
                <form action="aunrepair.jsp" method="get"  class="twok">
	
                    <input type="submit" value="unrepair" class="btn">  
                </form>
            </section>
            <!-- Contact Section End -->


            <!-- Contact2 Section Start -->
            <section class="contact section" id="contact2">
                <form action="aexpenses.jsp" method="get"  class="twok">
	
                    <input type="submit" value="maintainance expenses" class="btn">  
                </form>
            </section>
            <!-- Contact2 Section End -->
            <!-- Contact3 Section Start -->
            <section class="contact section" id="contact3" >
                <form action="stat" method="post" class="twok">
	
                    <input type="submit" value="statistics" class="btn">  
                </form>
            </section>
            <!-- Contact3 Section End -->
            
             <!-- Contact4 Section Start -->
            <section class="contact section" id="contact4" >
                
	
                     
               
            </section>
            <!-- Contact4 Section End -->


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