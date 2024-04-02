<?php
include "../../database/connection.php";

//Add User
if(isset($_POST['add'])){
    $webID = $_POST['webID'];
    $webUsername = $_POST['webUsername'];
    $user_username = $_POST['user_username'];
    $user_email = $_POST['user_email'];
    $user_password = password_hash('sdomanilaq1', PASSWORD_ARGON2ID);
    $user_type = $_POST['user_type'];
    $user_department = $_POST['user_department'];
    $user_profile = 'default.png';
    
    //check if username has special characters
    if(preg_match('/[\'^£$%&*()}{@#~?><>,|=_+¬-]/', $user_username)){
        $data = array(
            'addUserStatus' => 'false',
            'message' => 'Username must not contain special characters'
        );
        echo json_encode($data);
        return;
    }else{
        //Check if username is already taken
    $sql = "SELECT * FROM userstbl WHERE user_username = '$user_username'";
    $result = mysqli_query($con, $sql);
    $count = mysqli_num_rows($result);
    if($count > 0){
        $data = array(
            'addUserStatus'=> 'false',
            'message' => 'Username Already Exists' 
        );
        echo json_encode($data);
    }else{
        $sql1 = "SELECT * FROM userstbl WHERE user_email = '$user_email'";
        $result1 = mysqli_query($con, $sql1);
        $count1 = mysqli_num_rows($result1);
        if($count1 > 0){
            $data = array(
                'addUserStatus'=> 'false',
                'message' => 'Email Already Exists' 
            );
            echo json_encode($data);
        }else{
            $sql = "INSERT INTO userstbl (user_username, user_email, user_password, user_type, user_profile, user_department, user_status) 
                              values ('$user_username','$user_email', '$user_password', '$user_type', '$user_profile', '$user_department' , 'active')";
                $query= mysqli_query($con,$sql);
                $lastId = mysqli_insert_id($con);

                if($query){
                    $inserttime = "INSERT INTO timelogtbl (user_id, log_action, log_date, log_time) 
                                                values ('$webID', 'Added User $user_username',  NOW(), NOW())";
                    $query1= mysqli_query($con,$inserttime);
                    $query2 = mysqli_insert_id($con);
                    if ($query1)
                    {
                        $data = array
                        (
                            'addUserStatus'=>'true',
                            'message' => 'Added Successfully' 
                        );
                        echo json_encode($data);
                        return;
                    }
                    else
                    {
                        $error = mysqli_error($con);  // Capture SQL error
                        $data = array(
                            'addUserStatus'=>'false',
                            'message' => 'Error Adding User' . $error
                        );
                        echo json_encode($data);
                        return;
                    }
                }
                else
                {
                    $error = mysqli_error($con);  // Capture SQL error
                    $data = array(
                        'addUserStatus'=>'false',
                        'message' => 'Error Adding User' . $error
                    );
                    echo json_encode($data);
                    return;
                }
            }
        }       
    }
}

//VIEW User's details
if(isset($_POST['view']))
{
    $id = $_POST['id'];
    $sql = "SELECT * FROM userstbl WHERE user_id = '$id'";
    $query = mysqli_query($con,$sql);
    $row = mysqli_fetch_assoc($query);
    echo json_encode($row);
}
// Edit User's details
if (isset($_POST['update'])) {
    $id = mysqli_real_escape_string($con, $_POST['id']);
    $webID = mysqli_real_escape_string($con, $_POST['webID']);
    $tracking_number = mysqli_real_escape_string($con, $_POST['tracking_number']);
    $issuances_title = mysqli_real_escape_string($con, $_POST['issuances_title']);
    $issuances_link = mysqli_real_escape_string($con, $_POST['issuances_link']);
    $issuances_number = mysqli_real_escape_string($con, $_POST['issuances_number']);
    $issuances_date = mysqli_real_escape_string($con, $_POST['issuances_date']);
    $issuances_type = mysqli_real_escape_string($con, $_POST['issuances_type']);

    // Use prepared statement to prevent SQL injection
    $sql = "UPDATE issuancestbl SET tracking_number = ?, 
                                    issuances_title = ?, 
                                    issuances_link = ?, 
                                    issuances_number = ?, 
                                    issuances_date = ?,
                                    issuances_type = ? WHERE issuances_id = ?";
    
    // Prepare the statement
    $stmt = mysqli_prepare($con, $sql);

    // Bind parameters
    mysqli_stmt_bind_param($stmt, "ssssssi", $tracking_number, $issuances_title, $issuances_link, $issuances_number, $issuances_date, $issuances_type, $id);

    // Execute the statement
    $query = mysqli_stmt_execute($stmt);

    // Handle the response
    if ($query) {
        $inserttime = "INSERT INTO timelogtbl (user_id, log_action, log_date, log_time) 
        VALUES ('$webID', 'Edited Issuance $tracking_number', NOW(), NOW())";
        $query1 = mysqli_query($con, $inserttime);

        if ($query1) {
            $data = array(
                'editIssuanceStatus' => 'true',
                'message' => 'Updated Successfully'
            );
        } else {
            $error = mysqli_error($con);
            $data = array(
                'editIssuanceStatus' => 'false',
                'message' => 'Error updating timelog. SQL Error: ' . $error
            );
        }
    } else {
        $error = mysqli_error($con);
        $data = array(
            'editIssuanceStatus' => 'false',
            'message' => 'Error updating issuance. SQL Error: ' . $error
        );
    }

    // Close the statement
    mysqli_stmt_close($stmt);

    // Return the JSON response
    echo json_encode($data);
    return;
}
?>