<?php
 
 include 'conn.php';
     
 if(isset($_COOKIE['cemail'])){          
         $email = $_POST['mail'];
          
         $dataTime = date("Y-m-d ");
         
         
         $query ="SELECT count(EMAIL) AS COUNT FROM PROJECT WHERE EMAIL='$email';";
         $check = mysqli_query($connetion,$query);
          
         if(mysqli_num_rows($check)){
             while($row  = mysqli_fetch_assoc($check)){ 	 
                 $count =  $row["COUNT"] ;  
             } 
         } 
         //if imail is invalid the $count value is 0 
         if($count>0){
             if(mysqli_query($connetion,$query)){
                 $query =" DELETE FROM PROJECT WHERE EMAIL ='$email'; ";
                 if(mysqli_query($connetion,$query)){
                     echo "ACCOUNT IS DELETED SUCESSFULLY ";
                     header('refresh:5;url=dashboardAdmin.php');
                 }
                  
                 
                  
     
     
     }
     
        }
        else{
            echo "An Account DOESNT EXITS  . TRY OTHER EMAIL ID ";
        }       
 
    }
    else{
       echo "You are Logout. Please Login";
       header('refresh:5;url=mainpage.php');
    }
   

?>
 