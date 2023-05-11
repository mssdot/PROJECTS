<?php
include 'conn.php';
session_start();

if(isset($_COOKIE['cemail'])){
     
    $mail = $_COOKIE['cemail'] ;
    echo $mail;
    $query = "UPDATE PROJECT SET STATUS = '0'  WHERE EMAIL= '$mail';";
    $check2 = mysqli_query($connetion,$query);
    setcookie("cemail","",time()-60);
    setcookie("cpass","",time()-60);
    session_destroy();
    header('Location: mainpage.php');
     
     
    
}
else{
    echo "You're are already logged out.";
}
 


?>