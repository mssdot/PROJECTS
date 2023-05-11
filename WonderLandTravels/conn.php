<?php
$connetion =mysqli_connect("localhost","root","Pujari@12345","wtp");
if($connetion){
     
}
else{
    echo "error/: ".mysqli_error($connetion).'<br>';
}

?>

