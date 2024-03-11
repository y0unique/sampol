<?php
    //include database
    include 'connection.php';
    session_start();

    function validate($con){
        $con = trim($con);
        $con = stripslashes($con);
        $con = htmlspecialchars($con);
        return $con;
    }

    // Simulating a simple login
    $username = mysqli_real_escape_string($con, $_POST['username']);
    $password = mysqli_real_escape_string($con, $_POST['password']);

    if($username == ""){
        $response = array('status' => 'error', 'message' => 'Invalid Username or Password.');
    } else if($password == "" || strlen($password) < 11) {
        $response = array('status' => 'error', 'message' => 'Invalid Username or Password.');
    } else {
        // Retrieve the hashed password from the database
        $query = "SELECT * FROM userstbl WHERE user_username='$username'";
        $result = mysqli_query($con, $query);

        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $hashedPasswordArgon2 = $row['user_password'];

            // Verify the password against Argon2id hash
            if (password_verify($password, $hashedPasswordArgon2)) {
                $response = array('status' => 'success', 'message' => 'Login successful!');
                $_SESSION['webID'] = $row['user_id'];
                $_SESSION['webUsername'] = $row['user_username'];
                $_SESSION['webEmail'] = $row['user_email'];
                $_SESSION['webType'] = $row['user_type'];
                $_SESSION['webPassword'] = $row['user_password'];
                $_SESSION['webStatus'] = $row['user_status'];
            } else {
                $response = array('status' => 'error', 'message' => 'Invalid Username or Password.');
            }
        } else {
            $response = array('status' => 'error', 'message' => 'Invalid Username or Password.');
        }
    }

    // Close the database connection
    mysqli_close($con);

    echo json_encode($response);
?>
