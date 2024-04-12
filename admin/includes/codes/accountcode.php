<?php
include "../../database/connection.php";

// Handle save button click event
if(isset($_POST['updateaccountuser'])) {
    $user_id = mysqli_real_escape_string($con, $_POST['user_id']);
    $user_username = mysqli_real_escape_string($con, $_POST['user_username']);
    $user_email = mysqli_real_escape_string($con, $_POST['user_email']);
    $curruser_password = mysqli_real_escape_string($con, $_POST['currpassword']);
    $newuser_password = mysqli_real_escape_string($con, $_POST['newuserpassword']);
    $renewuser_password = mysqli_real_escape_string($con, $_POST['reuserpassword']);

    // Check if the current password is correct
    $sql = "SELECT user_password FROM userstbl WHERE user_id = '$user_id'";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    $hashedPasswordArgon2 = $row['user_password'];
    if (password_verify($curruser_password, $hashedPasswordArgon2)) {
        $data = array(
            'updateAccount' => 'true',
            'message' => 'Success Current Password'
        );
        echo json_encode($data);
        return;
    }else{
        $data = array(
            'updateAccount' => 'false',
            'message' => 'Incorrect Current Password'
        );
        echo json_encode($data);
        return;
    }
}

mysqli_close($con);
?>
