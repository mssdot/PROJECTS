<?php


if(isset($_COOKIE['cemail'])){   ?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/mdb.css">
    <link rel="stylesheet" href="bootstrap/css/style.css">
    <title>EDIT NAME</title>
 
</head>
<body>
    <!-- navbar-->
     
    <!-- start your project -->
    <div class="container bg-primary mt-5">
        <h1 >EDIT NAME</h1>
    </div>
    <div class=" container   bg-light">
        <form action="editnamee.php" method="post" id="form">
            <div class="form-group ">
                <input type="text" name="uname1" class="form-control" placeholder="FIRSTNAME" required>
            </div>
            <div class="form-group ">
                <input type="text" name="uname2" class="form-control" placeholder="LASTNAME" required>
            </div>

             
                
            <div>
                <input type="submit" class="btn btn-secondary" name="sub" value="submit" >  
                 
            </div>
             
        </form>

    </div>

    













    
    <!-- end your project -->
    
    <!-- bootstrap js files -->
    <script src="bootstrap/js/jquery.js"></script>   
    <script src="bootstrap/js/popper.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/mdb.js"></script>
     
</body>
</html>
<?php
}
    else{
       echo "You are Logout.you can't access this page with login. Please Login";
       header('refresh:5;url=mainpage.php');
    }
   

?>