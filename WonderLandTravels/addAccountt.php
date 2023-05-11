<?php
 
 include 'conn.php';
 if(isset($_COOKIE['cemail'])){ 
         $uname = $_POST['uname1'];
         $uname2 = $_POST['uname2'];
         $email = $_POST['mail'];
         $pass = $_POST['pname'];
         $phoneno = $_POST['pno']; 
         $dataTime = date("Y-m-d ");
         
         
         $query ="SELECT count(EMAIL) AS COUNT FROM PROJECT WHERE EMAIL='$email';";
         $check = mysqli_query($connetion,$query);
         
         if(mysqli_num_rows($check)){
             while($row  = mysqli_fetch_assoc($check)){ 	 
                 $count =  $row["COUNT"] ;  
             } 
         } 
         if($count<1){
             if(mysqli_query($connetion,$query)){
                 $query =" INSERT INTO PROJECT(FIRSTNAME,LASTNAME,EMAIL,PASS,PHONENO,CREATED_ON) values('$uname','$uname2','$email','$pass','$phoneno','$dataTime'  ); ";
                 if(mysqli_query($connetion,$query)){
                     echo "Regestration is successful.Account is created";
                     header('refresh:5;url=dashboardAdmin.php');
                 }
                 else{
                     echo "regestration is NOT successful " ;
                     header('refresh:5;url=dashboardAdmin.php');
                 }
             
                 
                  
     
     
     }
     
 }
 else{
     echo "An Account is EXISTED With Given Email Id. Try, Another Email Id. ";
 }       
 
 }
 else{
    echo "You are Logout. Please Login";
    header('refresh:5;url=mainpage.php');
 }

?>