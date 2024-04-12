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
        //check if username or email except the current user
        $sql = "SELECT * FROM userstbl WHERE user_id != '$user_id' AND (user_username = '$user_username' OR user_email = '$user_email')";
        $result = mysqli_query($con, $sql);
        if (mysqli_num_rows($result) > 0) {
            $data = array(
                'updateAccount' => 'false',
                'message' => 'Username or Email already exist'
            );
            echo json_encode($data);
            return;
        } else {
            // Check if the new password and current password is the same
            if($curruser_password == $newuser_password){
                $data = array(
                    'updateAccount' => 'false',
                    'message' => 'New Password is the same as the Current Password'
                );
                echo json_encode($data);
                return;
            }else{
                if ($newuser_password == $renewuser_password) {
                    $hashedPasswordArgon2 = password_hash($newuser_password, PASSWORD_BCRYPT);
                    $sql = "UPDATE userstbl SET user_username = '$user_username', user_email = '$user_email', user_password = '$hashedPasswordArgon2' WHERE user_id = '$user_id'";
                    if (mysqli_query($con, $sql)) {
                        $inserttime = "INSERT INTO timelogtbl (user_id, log_action, log_date, log_time) 
                                                    values ('$user_id', 'Changed account info: $user_username',  NOW(), NOW())";
                        $query1= mysqli_query($con,$inserttime);
                        $query2 = mysqli_insert_id($con);
                        if ($query1){
                            $data = array(
                                'updateAccount' => 'true',
                                'message' => 'Account Updated Successfully'
                            );
                            echo json_encode($data);
                            return;
                        }else{
                            $data = array(
                                'updateAccount' => 'false',
                                'message' => 'Error Updating Account'
                            );
                            echo json_encode($data);
                            return;
                        }
                    } else {
                        $data = array(
                            'updateAccount' => 'false',
                            'message' => 'Error Updating Account'
                        );
                        echo json_encode($data);
                        return;
                    }
                } else {
                    $data = array(
                        'updateAccount' => 'false',
                        'message' => 'Password does not match'
                    );
                    echo json_encode($data);
                    return;
                }
            }
            // Check if the new password and retype password are the same
        }
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
