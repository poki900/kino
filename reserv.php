<?php
$connection = mysqli_connect('localhost','root','','kino');
$miejsce = intval($_GET['miejsca']);
$name = $_GET['name']." ".$_GET['surname'];
$tel = intval($_GET['tel']);
$film = intval($_GET['film']);
$sqlquery = "insert into rezerwacje (`miejsce`, `id_filmu`, `imie_i_nazwisko`, `telefon`) values ('".$miejsce."','".$film."','".$name."','".$tel."')";
$response = mysqli_query($connection, $sqlquery);
mysqli_close($connection);
?>