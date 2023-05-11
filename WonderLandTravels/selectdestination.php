<?php


if(isset($_COOKIE['cemail'])){   ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta >
    <title>create account</title>
    <style>
        body{
            background-image: linear-gradient(135deg,#68f00e  ,#0d72f5  );
        }
        input:focus {

            font-size: 150%;
        }
        input:hover {
            background-color: red;

        }
        button  {
            background-color: yellow;
            font-size: 150%;
            border-radius: 10px;
        }
         
        span{
            color: rgb(133, 16, 16);

        }

        /* glass filter */
        .container {
             
            /* background-image: linear-gradient(135deg,#f00e6c  ,#0df581  ); */
            width: 300px;
             
            border-radius: 25px;
            padding: 90px;
            margin-top: 20px;
            margin-left: 400px; 
            box-shadow: 0 0 1rem 0 rgba(0, 0, 0, .2); 
            border-radius: 15px;
            background-color: rgba(255, 255, 255, .15);
            
            backdrop-filter: blur(5px);
          }
          .container1 {
             
             /* background-image: linear-gradient(135deg,#f00e6c  ,#0df581  ); */
             width: 300px;
             margin-top: 10 px; 
             border-radius: 25px;
             padding: 40px;
             margin-left: 400px; 
             box-shadow: 0 0 1rem 0 rgba(107, 19, 19, 0.2); 
             border-radius: 15px;
              
             
             backdrop-filter: blur(5px);
           }
          

    </style>
</head>
<body>
    <div class="container1   ">
        <h2  style="color: blue;" >DESTINATION</h2>
    </div>
    
    <div class="container">
        <form id="form"   action="selectdestinationn.php" method="post">
           
           <label  >Destination : <br> 
             
               
                <select class="form-control" id="exampleFormControlSelect1" name="destination" required>
                  <option  value="TajMahal" >TajMahal</option>
                  <option  value="COLESSEUM">COLESSEUM</option>
                  <option   value="GREAT WALL OF CHINA">GREAT WALL OF CHINA</option>
                  <option   value="MANUCHU PERRU">MANUCHU PERRU</option>
                  <option   value="CHRIST THE REEDEEMER">CHRIST THE REEDEEMER</option>
                  <option   value="PETRA">PETRA</option>
                  <option   value="CHICKEN ITZA">CHICKEN ITZA</option>
                </select>
                 
        </label><br> <br>
         
            <button type="submit"  >NEXT</button>
        </form>
      </div>

     


</body>
</html>
<?php
}
    else{
       echo "You are Logout.you can't access this page with login. Please Login";
       header('refresh:5;url=mainpage.php');
    }
   

?>