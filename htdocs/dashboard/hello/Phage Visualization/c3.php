<html>

<head>
    <title>Practice</title>
</head>

<body>
    <script src="d3.min.js"></script>

    <script src="jquery.js"></script>
    <script src="jquery-ui/jquery-ui.js"></script>
    <link rel="stylesheet" href="jquery-ui/jquery-ui.css">

    <?php

   $connect = mysqli_connect("localhost","rohan","","test");

   if(mysqli_connect_error())
   {
       echo "Connection failed";
   }else{
       echo "Connection Succesfull";

       $query = "INSERT into `practice` VALUES('122','Ram','Ram@gmail.com','700 Univ')";

       $result = mysqli_query($connect,$query);
       
   }

    ?>

</body>

</html>