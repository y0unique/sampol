<?php
include "../../database/connection.php";
if(isset($_POST['view']))
{
    $id = $_POST['id'];
    $sql = "SELECT * FROM schoolsvw WHERE id = '$id'";
    $query = mysqli_query($con,$sql);
    $row = mysqli_fetch_assoc($query);
    echo json_encode($row);
}
?>