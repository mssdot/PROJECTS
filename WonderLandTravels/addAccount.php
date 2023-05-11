<?php


if(isset($_COOKIE['cemail'])){  
    
    if(($_COOKIE['cemail']=='admin123@gmail.com') ){

    ?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/mdb.css">
    <link rel="stylesheet" href="bootstrap/css/style.css">
    <title>Add Account</title>
 
</head>
<body>
    <!-- navbar-->
     
    <!-- start your project -->
    <div class="container bg-primary mt-5">
        <h1 >ADD ACCOUNT</h1>
    </div>
    <div class=" container   bg-light">
        <form action="addAccountt.php" method="post" id="form">
            <div class="form-group ">
                <input type="text" name="uname1" class="form-control" placeholder="FIRSTNAME" required>
            </div>
            <div class="form-group ">
                <input type="text" name="uname2" class="form-control" placeholder="LASTNAME" required>
            </div>

            <div class="form-group ">
                <input type="email" name="mail" class="form-control" placeholder="EMAIL" required>
            </div>
                
            <div class="form-group ">
                <input type="password" name="pname" class="form-control" placeholder="PASSWORD" required>
            </div>
            <div class="form-group ">
                <input type="text" name="pno" class="form-control" placeholder="PHONENO" id="pno" required>
                <span id="merror"></span>
            </div>
                
            <div>
                <input type="submit" class="btn btn-secondary" name="sub" value="submit" >  
                 
            </div>
             
        </form>

    </div>

    













    
    <!-- end your project -->
    
    <!-- bootstrap js files -->
    <script src="bootstrap/js/jquery.js"></script>   
    <script src="bootstrap/js/popper.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/mdb.js"></script>
    <script>

 
        let form = document.getElementById("form");
        form.addEventListener( "submit", (event) =>{
            event.preventDefault();
            validateForm();
        });
        function validateForm(){
            let pno = document.getElementById("pno").value.trim();
            var m=true;

            if(pno ==""){
                document.getElementById("merror").innerText = "Mobile NUmber can't be empty";
                 m = false;

            }
            else if( pno.match(/[a-z A-Z]/)){
                document.getElementById("merror").innerText = "Mobile Number Contains only Numbers";
                 m = false;

            }
            else if( pno.length!=10){
                document.getElementById("merror").innerText = "Mobile Number should be 10 digits";
                 m = false;
            }

             
            else{
                document.getElementById("merror").innerText = " ";
                m = true;
                
            }


            if( m ){
                form.submit();
            }


        };


    </script>
</body>
</html>
<?php
}
else{
     

}
}
    else{
       echo "You are Logout.you can't access this page with login. Please Login";
       header('refresh:5;url=mainpage.php');
    }
   

?>