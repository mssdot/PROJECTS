<?php
 
 include 'conn.php';
 if(isset($_COOKIE['cemail'])){ 

         $mno = $_POST['mno'];
          
         $email = $_COOKIE['cemail'];
         
               
         $query = "UPDATE PROJECT SET PHONENO = '$mno'  WHERE EMAIL= '$email';";
                  mysqli_query($connetion,$query) ;
                 
                echo " MOBILE NUMBER IS UPDATED SUCESSFULLY";
                header('refresh:5;url=dashboardUser.php');
                 
                  
     }
     
 
  
  
 else{
    echo "You are Logout. Please Login";
    header('refresh:5;url=mainpage.php');
 }

?>