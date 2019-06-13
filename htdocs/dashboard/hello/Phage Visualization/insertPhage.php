<?php 
    set_time_limit(0);

    //insert.php will get the cutpoints from the phage database
    $connect = mysqli_connect("localhost", "Rohan", "", "phage");

    //data variable will contain array of enzyme names which will again contain the cutpoints in a particular phage
    $data = array();

    //if the form posts both value from formphage and formenzyme 
    if(isset($_POST["formPhage"]) && isset($_POST["formEnzyme"]))
    {
        //storing the form data into variables
        $varEnzyme = $_POST["formEnzyme"]; 
        $varPhage = $_POST["formPhage"];
        
        //for all the selections in formEnzyme
        foreach($varPhage as $value)
        {
            //$data[enzymeName][cutpoints] will be the form of our data array
            $data[$value] = array();

            //query to select all the cutpoints 
            $query = "SELECT `cutPoints` FROM `cuts` WHERE Phage = '$value' and Enzyme = '$varEnzyme'";

            //storing the data into variable result
            $result = mysqli_query($connect,$query) or die(mysqli_error($connect));

            //creating new array
            $a = array();
            
            //for each row in result set
            while ($row = mysqli_fetch_array($result))
            {
                //pushing cutpoints everytime we find a row into an array $a
                array_push($a,$row[0]);
            
            }
            
            //assiging $[Aatil][1,34,56,788,88] format to $data array
            $data[$value] = $a;
            
        }

        //echoing the $data array to the ajax call
        echo json_encode($data);
    
}
?>
