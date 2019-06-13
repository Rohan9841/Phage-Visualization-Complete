<?php 
    // basepair.php will give the basepair of a particular phage
    //connecting to th e database
    $connect = mysqli_connect("localhost", "Rohan", "", "phage");

     //data variable will contain array of enzyme names which will again contain the cutpoints in a particular phage
     $data = array();

    //if the form posts both value from formphage and formenzyme 
    if(isset($_POST["formPhage"]) && isset($_POST["formEnzyme"]))
    {   
        //storing the form data into variable
        $varPhage = $_POST["formPhage"];
        
        foreach($varPhage as $value){
            //selecting the row cotaining required basepair
            $query = "SELECT `basepair` FROM `basepair` WHERE Phage = '$value'";
   
            //storing the resultset in result variable
           $result = mysqli_query($connect,$query) or die(mysqli_error($connect));
   
           //storing the array of rows in $row variable
           $row = mysqli_fetch_array($result);
   
           $data[$value] = $row[0];
       }
       //echoing the $data array to the ajax call
       echo json_encode($data);
    }
