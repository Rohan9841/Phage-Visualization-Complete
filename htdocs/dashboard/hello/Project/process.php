<?php
//insert.php will get the cutpoints from the phage database
$connect = mysqli_connect("localhost", "rohan9841", "Rohan9841", "contacts-313039abdf");

if (mysqli_connect_error())
{
    echo("There was an error connecting to the database.");
}

$required = array('name', 'email', 'subject', 'message');


$error = false;

$name = $_POST["name"];
$email = $_POST["email"];
$subject = $_POST["subject"];
$message = $_POST["message"];

foreach ($required as $field) {
    if (empty($_POST[$field])) {
        $error = true;
    }
}

if ($error) {
    echo "All fields are required";
} else {
    $query = "INSERT INTO `contact`(`Name`,`Email`,`Subject`,`Message`)VALUES('$name','$email','$subject','$message')";

    $result = mysqli_query($connect,$query) or die(mysqli_error($connect));
    echo "Your message has been sent";
}
?>
