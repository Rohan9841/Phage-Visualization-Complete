<?php
$connect = mysqli_connect("localhost", "Rohan", "", "contacts");

if (mysqli_connect_error()) {
    echo ("There was an error connecting to the database.");
}

$query = "SELECT `heading` FROM `Heading` order by RAND() limit 1";

$result = mysqli_query($connect, $query) or die(mysqli_error($connect));

 echo mysqli_fetch_row($result)[0];
?>
