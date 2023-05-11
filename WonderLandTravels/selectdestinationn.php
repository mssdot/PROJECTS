<?php
include 'conn.php';
$destination = $_POST['destination'];
 

$query = "SELECT amount FROM destination WHERE DESTINATON= '$destination';";
$check = mysqli_query($connetion,$query);
 
$row  = mysqli_fetch_assoc($check);
$dest =  $row["amount"] ;
setcookie("desti",$destination,time()+3600); 
setcookie("amt",$dest,time()+3600);
//echo $_COOKIE['amt']; 
//setcookie("amt", "",time()-3600);

 header('Location: bookings.php');
 
 


?>