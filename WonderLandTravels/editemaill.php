<?php
 
 include 'conn.php';
 if(isset($_COOKIE['cemail'])){ 

         $uemail = $_POST['email'];
          
         $email = $_COOKIE['cemail'];
         echo $email;
               
         $query = "UPDATE PROJECT SET EMAIL = '$uemail'  WHERE EMAIL= '$email';";
                  mysqli_query($connetion,$query) ;
                     
                 
                 
                  setcookie("cemail",$uemail,time()+3600 ,'/');
                echo " EMAIL IS UPDATED SUCESSFULLY";
                header('refresh:5;url=dashboardUser.php');
                 
                  
     }
     
 
  
  
 else{
    echo "You are Logout. Please Login";
    header('refresh:5;url=mainpage.php');
 }

?>