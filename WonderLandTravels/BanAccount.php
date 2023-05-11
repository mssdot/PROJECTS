<?php
 
 include 'conn.php';
     
          
         
          
          
         
         if(isset($_COOKIE['cemail'])){     
            $email = $_POST['mail'];
         $query ="SELECT count(EMAIL) AS COUNT FROM PROJECT WHERE EMAIL='$email';";
         $check = mysqli_query($connetion,$query);
         
         if(mysqli_num_rows($check)){
             while($row  = mysqli_fetch_assoc($check)){ 	 
                 $count =  $row["COUNT"] ;  
             } 
        }
         if($count>0){
             if(mysqli_query($connetion,$query)){
                 $query =" INSERT INTO ban (FIRSTNAME, LASTNAME, EMAIL, PASS,PHONENO,CREATED_ON ) 
                 SELECT FIRSTNAME, LASTNAME, EMAIL, PASS,PHONENO,CREATED_ON  FROM PROJECT WHERE EMAIL='$email' ORDER BY SNO ASC ; ";
                 if(mysqli_query($connetion,$query)){
                    $query =" DELETE FROM PROJECT WHERE EMAIL ='$email'; ";
                    if(mysqli_query($connetion,$query)){
                        echo "account banned successfully";
                        header('refresh:5;url=dashboardAdmin.php');

                    
                    }
                  }
                   
         
     
     
     
     
     }
    
     
        }
        else{
            echo "  Account DOESNT EXITS  . TRY OTHER EMAIL ID "; 
            header('refresh:5;url=dashboardAdmin.php');
        }       
        
    }
    else{
       echo "You are Logout. Please Login";
       header('refresh:5;url=mainpage.php');
    }
   


?>
        