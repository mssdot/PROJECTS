<?php
include 'conn.php';
$fname = $_POST['fname'];
$fmail = $_POST['fmail'];
$fmno =$_POST['fmno'];
$fmsg =$_POST['fmsg'];
 
$query =" INSERT INTO `feedback` (  `NAME`, `EMAIL`, `MOBILENO`, `MESSAGE`) VALUES (  '$fname', '$fmail', '$fmno', '$fmsg'); ";
if(mysqli_query($connetion,$query)){
    echo "FEEDBACK IS SUBMITTED";
    header('refresh:5;url=mainpage.php ');
}
else{
    echo "FEEDBACK IS NOT SUBMITTED " ;
    header('refresh:5;url=mainpage.php ');
}

?>