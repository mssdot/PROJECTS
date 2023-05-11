<?php
include 'conn.php';
$uname = $_POST['uname1'];
$uname2 = $_POST['uname2'];
$email = $_POST['email'];
$destination = $_POST['destination'];
$amt = $_POST['amt'];
 
$dataTime = date("Y-m-d ");
 
$query =" INSERT INTO bookings(FIRSTNAME,LASTNAME,EMAIL,DESTINATION,AMOUNT,DATE) values('$uname','$uname2','$email','$destination','$amt','$dataTime'  ); ";
if(mysqli_query($connetion,$query)){
    echo "PAYMENT is successful.YOUR DESTINATION  is BOOKED";
}
setcookie("desti", "",time()-3600); 
setcookie("amt", "",time()-3600);
header('refresh:4;url=dashboardUser.php');
?>
 
 

 