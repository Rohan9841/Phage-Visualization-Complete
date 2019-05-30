<?php
//insert.php will get the cutpoints from the phage database
$connect = mysqli_connect("localhost", "Rohan", "", "contacts");

if (mysqli_connect_error())
{
    echo("There was an error connecting to the database.");
}

$firstName = $_POST["first-name"];
$lastName = $_POST["last-name"];
$email = $_POST["email"];
$purpose = $_POST["purpose"];
$subject = $_POST["subject"];
$message = wordwrap($_POST["message"],70);

//Variables for sending email
// $emailFrom = $email;
// $emailSubject = "New Form Submission";
// $emailMessage = "User Name: $firstName $lastName\n".
//                 "User Email: $email\n".
//                 "User Message: $message.\n";

// $emailTo = "Rohan9841@gmail.com";
// $headers = "From: $emailFrom \r\n";
// $headers .= "Reply-To: $emailFrom \r\n";



$query = "INSERT INTO `contactv2`(`FirstName`,`LastName`,`Email`,`Purpose`,`Subject`,`Message`)VALUES('$firstName','$lastName','$email','$purpose','$subject','$message')";

$result = mysqli_query($connect,$query) or die(mysqli_error($connect));
echo "Your message has been sent! Rohan will reply to your email as soon as he recieves the message.\n"."Thank you!";

//The below code will be used to send email
// mail($emailTo, $emailSubject, $emailMessage, $headers);

// header("Location: http://rohanmaharjan-com.stackstaging.com/contact.html");

?>