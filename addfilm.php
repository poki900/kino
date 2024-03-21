<?php
$connection = mysqli_connect('localhost','root','','kino');
$name = $_GET['name'];
$time = $_GET['hour'];
$date = $_GET['date'];
$sqlquery = "INSERT INTO `filmy` (`id`, `nazwa`, `data`, `godzina`) VALUES (NULL, '$name', '$date', '$time')";
mysqli_query($connection, $sqlquery);
mysqli_close($connection);
?>