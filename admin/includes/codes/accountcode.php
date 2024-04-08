<?php
include "../../database/connection.php";

// Handle save button click event
if(isset($_POST['updateaccountuser'])) {
    $user_id = mysqli_real_escape_string($con, $_POST['user_id']);
    $user_username = mysqli_real_escape_string($con, $_POST['user_username']);
    $user_email = mysqli_real_escape_string($con, $_POST['user_email']);
    $user_password = mysqli_real_escape_string($con, $_POST['user_password']);
}

mysqli_close($con);
?>
