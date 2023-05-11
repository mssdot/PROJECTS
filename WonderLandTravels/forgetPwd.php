<?php
include 'conn.php';
$email = $_POST['email'];
$pno = $_POST['pno'];
$pwd =$_POST['pwd'];


$query = "SELECT count(EMAIL) AS COUNT   FROM ban WHERE EMAIL= '$email';";
$check = mysqli_query($connetion,$query);
     
if(mysqli_num_rows($check)){
    while($row  = mysqli_fetch_assoc($check)){ 	 
        $count =  $row["COUNT"] ;  
    } 
}
if($count>0){   
    echo "your account is banned";
    header('refresh:5;url=mainpage.php ');
}
else{


    $query = "SELECT EMAIL , PHONENO FROM PROJECT WHERE EMAIL= '$email';";
    $check = mysqli_query($connetion,$query);
    
    if( mysqli_num_rows($check)){
        
                while($row  = mysqli_fetch_assoc($check)){
                
                $mail =  $row["EMAIL"] ;
                    $mno =  $row["PHONENO"]; 
                    
                } 
                
                if($pno==$mno){
                    $query = "UPDATE PROJECT SET PASS = '$pwd' WHERE EMAIL ='$email' ;";
                    if(mysqli_query($connetion,$query)){
                        echo "password is updated";
                         header('refresh:5;url=mainpage.php');
                    }
                    else{
                        echo "pwd is not updated";
                        header('refresh:5;url=mainpage.php ');
                    } 
                }
                else{
                    echo "Invalid Mobile Number";
                    header('refresh:5;url=forgetPwd.html ');
                }
    }
    else{
        echo "account doesn't exists";
        ?>
        <p class="lead"> <a href="createAccount.html">clickHere</a> to create an account</p>
        <?php
    }
}

?>