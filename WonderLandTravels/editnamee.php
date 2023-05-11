<?php
 
 include 'conn.php';
 if(isset($_COOKIE['cemail'])){ 

         $uname = $_POST['uname1'];
         $uname2 = $_POST['uname2'];
         $email = $_COOKIE['cemail'];
          
               
         $query = "UPDATE PROJECT SET FIRSTNAME = '$uname'  WHERE EMAIL= '$email';";
                  mysqli_query($connetion,$query) ;
                     
                 
                 
                 $query = "UPDATE PROJECT SET LASTNAME = '$uname2'  WHERE EMAIL= '$email';";
               mysqli_query($connetion,$query) ;
                echo " NAME IS UPDATED SUCESSFULLY";
                header('refresh:5;url=dashboardUser.php');
                 
                  
     }
     
 
  
  
 else{
    echo "You are Logout. Please Login";
    header('refresh:5;url=mainpage.php');
 }

?>