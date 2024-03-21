<?php
$connection = mysqli_connect('localhost','root','','kino');
$id = intval($_GET['id']);
$sqlquery = "SELECT `miejsce` from rezerwacje where id_filmu=$id";
$tab = array();
$response = mysqli_query($connection, $sqlquery);
foreach($response as $elm){
    array_push($tab,$elm);
}
echo json_encode($tab);
mysqli_close($connection);
?>