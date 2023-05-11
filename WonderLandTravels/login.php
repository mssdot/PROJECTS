<?php 
include 'conn.php';
if(isset($_POST['submit']) || isset($_COOKIE['cemail'])){


    $email =isset($_POST['email'])? $_POST['email'] :$_COOKIE['cemail'];
    $pass = isset($_POST['pass'])? $_POST['pass'] :$_COOKIE['cemail'];

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

        $query = "SELECT EMAIL , PASS FROM PROJECT WHERE EMAIL= '$email';";
    $check = mysqli_query($connetion,$query);
    
    if( mysqli_num_rows($check)){
        
                while($row  = mysqli_fetch_assoc($check)){
                
                    $mail =  $row["EMAIL"] ;
                    $pwd =  $row["PASS"]; 
                    
                } 
                
                if($pass==$pwd){
                    
                    $query = "SELECT STATUS   FROM PROJECT WHERE EMAIL= '$email';";
                    $check2 = mysqli_query($connetion,$query);
                    $srow  = mysqli_fetch_assoc($check2);
                    if(isset($_POST['submit'])){
                        if($srow['STATUS']==1){
                            echo " you are already logged in . please, log out and try again";
                            exit();
                        }
                        else{
                            $query = "UPDATE PROJECT SET STATUS = '1'  WHERE EMAIL= '$email';";
                            $check2 = mysqli_query($connetion,$query);
                            setcookie("cemail",$email,time()+3600);
                            setcookie("cpass",$pass,time()+3600);
                            session_start();
                            $_SESSION['cemail']=$email;
                            $_SESSION['cpass']=$pass;
     
                            
    
    
                        }
                    }
                    $query = "SELECT EMAIL   FROM PROJECT WHERE EMAIL= 'admin123@gmail.com';";
                    $check2 = mysqli_query($connetion,$query);
                    $srow  = mysqli_fetch_assoc($check2);
                    if($srow['EMAIL']==$email){
                        header('Location: dashboardAdmin.php');
                    }
                    else{
                        header('Location: dashboardUser.php');
                    }
                    
                    

                    //header('Location: mainpage.html');
                }
                else{
                    echo "entered password is wrong ";
                    header('refresh:3;url=mainpage.php ');
                }
    }
    else{
        echo "account doesn't exists";
        ?>
        <p class="lead"> <a href="createAccount.html">clickHere</a> to create an account</p>
        <?php
    }


    }

    

}

 
?>
 