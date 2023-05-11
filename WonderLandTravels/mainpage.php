<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS Files -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="bootstrap/css/font-awesome-5.8.1.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/mdb.css">
    <link rel="stylesheet" href="main_page_style.css">
    <title>WonderLandTravels</title>
    <link rel="icon" href="main_page_images/wl.jpg">
    <style>
        #btn{
            background: none;
            border: none;
        }
        .modelcolor{
            background: linear-gradient(45deg,#27ddde,deeppink);
        }
    </style>
</head>
<body>

    <!-- Main Navbar -->
    <nav class="navbar navbar-expand-sm navbar-light bg-teal">
        <div class="container">
            <a href="mainpage.html" class="navbar-brand font-weight-bold">
                <img src="main_page_images/globe-world.gif" alt="" class="logo-img">
                WonderLandTravels</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#ui-navbar">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="ui-navbar">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item px-2">
                        <a class="nav-link" href="mainpage.php">Home</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="#features">Features</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="#explore">Explore</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="#testimonial">Testimonials</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="#contactus">Contact Us</a>
                    </li>
                     
                    <li class="nav-item px-2">
                          <i class="fa fa-sign-in-alt  fa-1x p-2 mt-1" data-toggle="modal" data-target="#r" ></i> 
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Landing Page Section -->
    <section class="landing-section" id="p2" style="display:none;">
        <div class="landing-wrapper d-flex flex-column text-center align-items-center justify-content-center">
            <h1>Welcome to
                <span class="text-teal">WonderLandTravels</span>
            </h1>
            <p class="lead">WonderLandTravels is here with a mission to provide the best and hassle-free experience to travel conveniently. We aspire to make a tuneful bond between the travellers and their indelible experiences.</p>
             
        </div>
    </section>

    <!-- Intro Section -->
    <section id="features" class="p-4 bg-teal text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <div  class="locdiv" ><img src="main_page_images/location2.gif"  class="icon1"></div>
                    <h2 class="font-weight-bold mt-2">Pick A Location</h2>
                    <p> Choose your ultimate destination WonderLand to Travel and Find your next stay with our WonderLandTravels.com</p>
                </div>
                <div class="col-md-4 col-sm-4">
                     <img src="main_page_images/booktickets.gif"  class="icon1">
                    <h2 class="font-weight-bold mt-2">Book Your Tickets</h2>
                    <p> Avail the freedom of choosing from our remarkable selection of wonderful & affordable accommodations and score satisfactory savings with us! </p>
                </div>
                <div class="col-md-4 col-sm-4">
                     <img src="main_page_images/fly.gif"  class="icon1">
                    <h2 class="font-weight-bold mt-2">Fly Cheap</h2>
                    <p> We'll always bring off the best deals on flights, no matter which airline you wish to fly with—Indigo, SpiceJet, Singapore Airlines, Akasa Air, Go First, Air India, Emirates, Vistara, or any other.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Intro to explore -->
    <section class="p-4 bg-dark text-teal text-center" id="explore">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h5 class="display-4">Explore the World for Travel </h5>
                    <p class="lead"> It's time to start your adventure </p>
                </div>
            </div>
        </div>
    </section>

    <!-- explore Section -->
    <section class="p-4" style="background: #eecda3;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-sm-6 col-md-6">
                    <img src="main_page_images/1tajmahal.jpg" class="img-fluid tour-image" alt="">
                </div>
                <div class=" col-sm-6 col-md-6">
                    <h5 class="display-4">TAJ MAHAL ( INDIA) </h5>
                    <p>Taj Mahal was commissioned in 1632 by the Mughal emperor Shah Jahan to honour his favourite wife, Mumtaz Mahal. She died in childbirth in 1631. The construction of the mausoleum took over two decades and more than 20,000 workers to complete. The complex includes formal gardens and a reflecting pool.</p>
                    <div class="row">
                        <div class=" col-sm-4 col-md-4">
                            <h3 class="text-danger">300</h3>
                            <p>Successful Tours</p>
                        </div>
                        <div class=" col-sm-4 col-md-4">
                            <h3 class="text-danger">25415</h3>
                            <p>Happy Tourists</p>
                        </div>
                        <div class=" col-sm-4 col-md-4">
                            <h3 class="text-danger">200</h3>
                            <p>Places Explored</p>
                        </div>
                    </div>
					<div class="row align-items-center " > 
                        <a href="1tajmahal.html" ><button class="btn btn-outline-primary" >READ MORE</button></a>
                         <button class="btn btn-outline-primary"  data-toggle="modal" data-target="#r">BOOK NOW</button> 
                   </div>
                </div>
            </div>
            <div class="row align-items-center mt-5">
                <div class="col-md-6">
                    <h5 class="display-4">COLOSSEUM ( ITALY ) </h5>
                     
                    <p>The Colosseum (aka Flavian Amphitheatre) is as iconic as Rome itself. This amphitheatre is an architectural marvel commissioned by Emperor Vespasian around 70 A.D. and completed by his successor Titus in 80 A.D.  Built out of brick-faced concrete, tuff and travertine limestone, the Colosseum could hold between 50,000 to 80,000 spectators.</p>
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="text-danger">300</h3>
                            <p>Successful Tours</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">25415</h3>
                            <p>Happy Tourists</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">200</h3>
                            <p>Places Explored</p>
                        </div>
                    </div>
					<div class="row align-items-center " > 
                        <a href="2colosseum.html" ><button class="btn btn-outline-primary">READ MORE</button></a>
                        <button class="btn btn-outline-primary"  data-toggle="modal" data-target="#r">BOOK NOW</button> 
                   </div>
                </div>
                <div class="col-md-6">
                    <img src="main_page_images/2colessum.jpg" class="img-fluid tour-image" alt="">
                </div>
            </div>
        </div>
		<div class="container mt-4">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <img src="main_page_images/3great_wall_of_china.jpg" class="img-fluid tour-image" alt="">
                </div>
                <div class="col-md-6">
                    <h5 class="display-4">GREAT WALL OF CHINA ( CHINA )</h5>
                    <p>The Great Wall of China stretches almost 9,000 km (over 5,500 miles) across China.Different ancient Chinese states built parts of the wall during the early days of construction. The first Chinese emperor Qin Shi Huang (220–206 B.C.), joined them together. The wall’s best-known and preserved walls date to the Ming dynasty (1368–1644).</p>
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="text-danger">300</h3>
                            <p>Successful Tours</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">25415</h3>
                            <p>Happy Tourists</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">200</h3>
                            <p>Places Explored</p>
                        </div>
                    </div>
					<div class="row align-items-center " > 
                        <a href="3great_wall_of_china.html" ><button class="btn btn-outline-primary">READ MORE</button></a>
                        <button class="btn btn-outline-primary"  data-toggle="modal" data-target="#r">BOOK NOW</button> 
                   </div>
                </div>
            </div>
            <div class="row align-items-center mt-5">
                <div class="col-md-6">
                    <h5 class="display-4">MACHU PICCHU (PERU) </h5>
                    <p>The archaeological site of Machu Picchu is a pre-Columbian Inca settlement. Sitting majestically between the Peruvian Andes Mountain peaks, it has been fascinating people since its rediscovery in 1911</p>
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="text-danger">300</h3>
                            <p>Successful Tours</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">25415</h3>
                            <p>Happy Tourists</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">200</h3>
                            <p>Places Explored</p>
                        </div>
                    </div>
					<div class="row align-items-center " > 
                        <a href="4machu_picchu.html" ><button class="btn btn-outline-primary">READ MORE</button></a>
                        <button class="btn btn-outline-primary"  data-toggle="modal" data-target="#r">BOOK NOW</button> 
                   </div>
                </div>
                <div class="col-md-6">
                    <img src="main_page_images/4manchu_peru.jpg" class="img-fluid tour-image" alt="">
                </div>
            </div>
        </div>
		<div class="container mt-4">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <img src="main_page_images/5christ_redeemer.jpg" class="img-fluid tour-image" alt="">
                </div>
                <div class="col-md-6">
                    <h5 class="display-4">CHRIST THE REDEEMER ( BRAZIL)</h5>
                    <p>The Art Deco statue of Jesus is an iconic symbol of Rio de Janeiro, and it’s the youngest member of the New Wonders of the World list. The figure stands atop Corcovado Mountain at 98 feet (30 metres) high on a pedestal that measures 26 feet (8 metres). The Christ’s arms stretch 92 feet (28 metres) wide, and the statue is visible from almost every part of the city.</p>
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="text-danger">300</h3>
                            <p>Successful Tours</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">25415</h3>
                            <p>Happy Tourists</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">200</h3>
                            <p>Places Explored</p>
                        </div>
                    </div>
					<div class="row align-items-center " >
                        
                        <a href="5christ_the_redeemer.html" ><button class="btn btn-outline-primary">READ MORE</button></a>
                        <button class="btn btn-outline-primary"  data-toggle="modal" data-target="#r">BOOK NOW</button> 
                   </div>
                </div>
            </div>
            <div class="row align-items-center mt-5">
                <div class="col-md-6">
                    <h5 class="display-4">PETRA ( JORDAN )</h5>
                    <p>If you haven’t yet been to the stunning Petra, you probably have it on your bucket list.It is one of the world’s most famous archaeological sites, where ancient Eastern traditions blend with Hellenistic architecture.Situated between the Red Sea and the Dead Sea and reserved since prehistoric times, the rock-cut capital city of the Nabateans, became during Hellenistic and Roman times a major caravan centre for the incense of Arabia, the silks of China and the spices of India, a crossroads between Arabia, Egypt and Syria-Phoenicia. </p>
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="text-danger">300</h3>
                            <p>Successful Tours</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">25415</h3>
                            <p>Happy Tourists</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">200</h3>
                            <p>Places Explored</p>
                        </div>
                    </div>
					<div class="row align-items-center " >
                        
                         <a href="6petra.html" ><button class="btn btn-outline-primary">READ MORE</button></a>
                          <button class="btn btn-outline-primary"  data-toggle="modal" data-target="#r">BOOK NOW</button> 
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="main_page_images/6petra.jpg" class="img-fluid tour-image" alt="">
                </div>
            </div>
        </div>
		<div class="container mt-4">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <img src="main_page_images/7chicken_itza.jpg" class="img-fluid tour-image" alt="">
                </div>
                <div class="col-md-6">
                    <h5 class="display-4">CHICHEN  ITZA  <br>( MEXICO )</h5>
                    <p>Chichen Itza was an ancient Mayan city in what today is the Yucatán Peninsula in Mexico. This was the centre and religion, and power of the Maya and then the Maya-Toltec civilization. Although it was a flourishing place around the 9th and 10th centuries, it was abandoned when the Spanish found it in the 16th century.</p>
                    <div class="row">
                        <div class="col-md-4">
                            <h3 class="text-danger">300</h3>
                            <p>Successful Tours</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">25415</h3>
                            <p>Happy Tourists</p>
                        </div>
                        <div class="col-md-4">
                            <h3 class="text-danger">200</h3>
                            <p>Places Explored</p>
                        </div>
                    </div>
					<div class="row align-items-center " >
                        
                         <a href="7chicken_itza.html"><button class="btn btn-outline-primary">READ MORE</button></a>
                         <button class="btn btn-outline-primary"  data-toggle="modal" data-target="#r">BOOK NOW</button>
                    </div>
                </div>
            </div>
		</div>
    </section>

     <!-- testimonial Section -->
     <section id="testimonial" class="bg-dark p-4 text-center text-teal"  >
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1><b>Testimonials</b></h1>
                     
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-3">
                    <div class="card trainer-card text-dark">
                        <div class="card-body">
                            <img src="main_page_images/user.jpg" alt="" class="img-fluid img-thumbnail rounded-circle w-50 trainer-img">
                            <h3 class="mt-3">Alex</h3> 
                            <p> Thanks for arranging my trip Specially for Mis konika she was very helpful. Thanks for arranging my trip Specially for Mis konika she was very helpful. <br>"</p>
                             
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card trainer-card text-dark">
                        <div class="card-body">
                            <img src="main_page_images/user.jpg" alt="" class="img-fluid img-thumbnail rounded-circle w-50 trainer-img">
                            <h3 class="mt-3">Axar sharma</h3> 
                            <p>I am very much satisfied by the Service provided by contact personnel Kanika Mam.She solved each problem very promptly and effectively within minimum possible time.</p>
                             
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card trainer-card text-dark">
                        <div class="card-body">
                            <img src="main_page_images/user.jpg" alt="" class="img-fluid img-thumbnail rounded-circle w-50 trainer-img">
                            <h3 class="mt-3">Peter</h3> 
                            <p>Thank you for guiding me to the best travel destinations.You recommended the most wonderful places and gave as the best time ever.I enjoyed every second of our trip.</p>
                             
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card trainer-card text-dark">
                        <div class="card-body">
                            <img src="main_page_images/user.jpg" alt="" class="img-fluid img-thumbnail rounded-circle w-50 trainer-img">
                            <h3 class="mt-3">Rajiv</h3> 
                            <p>Thanks for arranging my trip Specially for Mis konika she was very helpful. Thanks for arranging my trip Specially for Mis konika she was very helpful. <br>"</p>
                             
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- gifs Section -->
    <section   class="  p-4 text-center text-teal mt-2" style="background-image: linear-gradient(45deg,#ECBA0B,deeppink );" >
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <img src="main_page_images/salesends.gif" class="img-fluid gallery-img" alt="">
                </div>
                <div class="col-md-6">
                    <img src="main_page_images/booknow.gif" class="img-fluid gallery-img" alt="">
                </div>
            </div>
        </div>
    </section>
 
    <!-- Contact Section -->
    <section id="contactus" class="p-3" >
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card mt-3">
                        <div class="card-body bg-dark bg-teal text-center text-teal"> 
                            <i class="fa fa-envelope fa-4x"></i> 
                            <h2>Contact us</h2>
                            <p>if you have any queries, you can contact us at the following:</p> 
                            <div class="d-flex justify-content-between">
                                <a href="https://www.facebook.com"><i class="fab fa-facebook-f fa-2x p-2"></i></a> 
                                <a href="https://www.twitter.com"><i class="fab fa-twitter fa-2x p-2"></i></a>
                                <a href="https://www.instagram.com"><i class="fab fa-instagram fa-2x p-2"></i></a> 
                                <a href="https://www.github.com"><i class="fab fa-github fa-2x p-2"></i></a>
                            </div>
                             
                        </div>
                    </div>
                    <ul class="list-group ">
                        <li class="list-group-item">
                            <h3>Location</h3>
                        </li>
                        <li class="list-group-item">
                           IIIT RK VALLEY 
                        </li>
                        <li class="list-group-item">
                            RGUKT 
                        </li>
                        <li class="list-group-item">
                            AP , India 
                        </li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <div class="card mt-3">
                        <div class="card-header bg-teal text-teal text-center bg-dark ">
                            <h3>FeedBack</h3>
                        </div>
                        <div class="card-body bg-light">
                            <form action="feedback.php" method="post" >
                                <div class="form-group">
                                    <input type="text" name="fname" class="form-control" placeholder="Name" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="fmail" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="fmno" class="form-control" placeholder="Mobile Number" required>
                                </div>
                                 
                                <div class="form-group">
                                    <textarea class="form-control" name="fmsg" rows="5" placeholder="Your Description" required></textarea>
                                </div>
                                 <button type="submit" class="btn btn-outline-success">SUBMIT</button >
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

     

    <!-- Main Footer -->
    <section class="bg-dark text-teal text-center p-4">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h3>Copyright &copy; 2022 , <a href="mainpage.php" class="navbar-brand font-weight-bold">
                        <img src="main_page_images/wlogo2.png" alt="" class="logo-img">
                         </a>WonderLandTravels</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h6>All Rights Reserved</h6>
                    <h6>Developed & Maintained by
                        <a class="text-warning" href="https://github.com/mssdot" target="_blank">
                            TEAM MSS
                        </a> <br> <br>
                        <div align='center'><a href='https://www.free-website-hit-counter.com'><img src='https://www.free-website-hit-counter.com/c.php?d=4&id=138725&s=32' border='0' alt='Free Website Hit Counter'></a><br / ><small><a href='https://www.free-website-hit-counter.com' title="Free Website Hit Counter"> </a></small></div>




                    </h6>
                </div>
                 
            </div>
            
        </div>
    </section>


    <!--   modal-->
    <div class="modal" id="r">
            <div class="modal-dialog "> <!--   modal-lg-->
                <div class="modal-content animated swing">
                    <div class="modal-header modelcolor text-white">
                        <h3>Login</h3>
                        <button class="close" data-dismiss="modal">
                            <p>&cross; </p>
                        </button>
                    </div>
                    <div class="modal-body bg-light">
                        <form action="login.php" method="post">
                            <div class="form-group ">
                                <input type="email" name="email" class="form-control" placeholder="email" value= "<?php
                                 if(isset($_COOKIE['cemail'])){echo $_COOKIE['cemail']; } ?>"  
                                 required>
                            </div>
                             
                            <div class="form-group ">
                                <input type="password" name="pass" class="form-control" placeholder="password" value= "<?php
                                 if(isset($_COOKIE['cpass'])){echo $_COOKIE['cpass']; } ?>" required>
                            </div>
                             
                            <div>
                                <input type="submit" class="btn btn-secondary" name="submit" value="LOGIN">
                                <a href="#" class="btn btn-danger" data-dismiss="modal">close</a>
                            </div>
                            <div>
                                 <button class="btn btn-primary" ><a href="forgetPwd.html">Forgot password</a> </button> 
                                    <button class="btn btn-warning"><a href="createAccount.html">create account</a></button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>




    

<!-- Bootstrap JS files -->
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/popper.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<script src="bootstrap/js/mdb.js"></script>
<script>
    $(document).ready(function(){
        $('#p2').slideToggle(7000);

    });
     
   
</script>
</body>
</html>
