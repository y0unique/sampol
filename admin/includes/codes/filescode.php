<?php
include "../../database/connection.php";

//Add File
if(isset($_POST['add'])){

    $webID = $_POST['webID'];
    $webUsername = $_POST['webUsername'];
    $file_type = $_POST['file_type'];
    $file_title = mysqli_real_escape_string($con, $_POST['file_title']);
    $file_link = $_POST['file_link'];
    $file_department = $_POST['file_department'];
    $file_publishDate = $_POST['file_publishDate'];
    $file_closingDate = $_POST['file_closingDate'];
    $awarded_to = $_POST['awarded_to'];
    $reference_number = $_POST['reference_number'];
    $procurement_mode = $_POST['procurement_mode'];
    $procurement_year = $_POST['procurement_year'];
    $procurement_type = $_POST['procurement_type'];

    // $sql = "INSERT INTO filestbl (file_type, file_title, file_link, file_date, file_department, file_publishDate, file_closingDate, file_awardedTo, file_referenceNum, file_procurementMode, file_procurementYear, file_procurementType, file_status) 
    //                           values ('$file_type','$file_title', '$file_link', NOW(), '$file_department' , '$file_publishDate', '$file_closingDate', '$awarded_to', '$reference_number', '$procurement_mode', '$procurement_year', '$procurement_type', 'active')";
    // $query= mysqli_query($con,$sql);
    // $lastId = mysqli_insert_id($con);

    // if($query){
    //     $inserttime = "INSERT INTO timelogtbl (user_id, log_action, log_date, log_time) 
    //                                    values ('$webID', 'Added Issuance $file_type',  NOW(), NOW())";
    //     $query1= mysqli_query($con,$inserttime);
    //     $query2 = mysqli_insert_id($con);
    //     if ($query1)
    //     {
    //         $data = array
    //         (
    //             'addFileStatus'=>'true',
    //             'message' => 'Added Successfully' 
    //         );
    //         echo json_encode($data);
    //         return;
    //     }
    //     else
    //     {
    //         $data = array(
    //             'addFileStatus'=>'false',
    //         );
    //         echo json_encode($data);
    //     }
    // }
    // else
    // {
    //     $data = array(
    //         'addFileStatus'=>'false',
    //     );
    //     echo json_encode($data);
    // }
    
    if($file_type == 'downloadable'){
        $sql = "INSERT INTO filestbl (file_type, file_title, file_link, file_date, file_status) 
                                values ('$file_type','$file_title', '$file_link', NOW(), 'active')";
        $query= mysqli_query($con,$sql);
        $lastId = mysqli_insert_id($con);

        if($query){
            $inserttime = "INSERT INTO timelogtbl (user_id, log_action, log_date, log_time) 
                                        values ('$webID', 'Added $file_type File $file_title', NOW(), NOW())";
            $query1= mysqli_query($con,$inserttime);
            $query2 = mysqli_insert_id($con);
            if ($query1)
            {
                $data = array
                (
                    'addFileStatus'=>'true',
                    'message' => 'Added Successfully' 
                );
                echo json_encode($data);
                return;
            }
            else
            {
                $data = array(
                    'addFileStatus'=>'false',
                );
                echo json_encode($data);
            }
        } else {
            $data = array(
                'addFileStatus'=>'false',
            );
            echo json_encode($data);
        } 
    } else if ($file_type == 'procurement'){
        $sql = "INSERT INTO filestbl (file_type, file_title, file_link, file_date, file_procurementYear, file_procurementType,  file_status) 
                                values ('$file_type','$file_title', '$file_link', NOW(), $procurement_year, '$procurement_type','active')";
        $query= mysqli_query($con,$sql);
        $lastId = mysqli_insert_id($con);

        if($query){
            $inserttime = "INSERT INTO timelogtbl (user_id, log_action, log_date, log_time) 
                                        values ('$webID', 'Added $file_type File $file_title',  NOW(), NOW())";
            $query1= mysqli_query($con,$inserttime);
            $query2 = mysqli_insert_id($con);
            if ($query1)
            {
                $data = array
                (
                    'addFileStatus'=>'true',
                    'message' => 'Added Successfully' 
                );
                echo json_encode($data);
                return;
            }
            else
            {
                $data = array(
                    'addFileStatus'=>'false',
                );
                echo json_encode($data);
            }
        } else {
            $data = array(
                'addFileStatus'=>'false',
            );
            echo json_encode($data);
        } 
    } else if ($file_type == 'material'){
        $sql = "INSERT INTO filestbl (file_type, file_title, file_link, file_date, file_department, file_status) 
                                values ('$file_type','$file_title', '$file_link', NOW(), '$file_department','active')";
        $query= mysqli_query($con,$sql);
        $lastId = mysqli_insert_id($con);

        if($query){
            $inserttime = "INSERT INTO timelogtbl (user_id, log_action, log_date, log_time) 
                                        values ('$webID', 'Added $file_type File $file_title',  NOW(), NOW())";
            $query1= mysqli_query($con,$inserttime);
            $query2 = mysqli_insert_id($con);
            if ($query1)
            {
                $data = array
                (
                    'addFileStatus'=>'true',
                    'message' => 'Added Successfully' 
                );
                echo json_encode($data);
                return;
            }
            else
            {
                $data = array(
                    'addFileStatus'=>'false',
                );
                echo json_encode($data);
            }
        } else {
            $data = array(
                'addFileStatus'=>'false',
            );
            echo json_encode($data);
        } 
    } else if ($file_type == 'transparency'){
        $sql = "INSERT INTO filestbl (file_type, file_title, file_link, file_date, file_publishDate, file_closingDate, file_awardedTo, 	file_referenceNum, 	file_procurementMode, file_status) 
                                values ('$file_type','$file_title', '$file_link', NOW(), '$file_publishDate', '$file_closingDate' , '$awarded_to', '$reference_number', '$procurement_mode', 'active')";
        $query= mysqli_query($con,$sql);
        $lastId = mysqli_insert_id($con);

        if($query){
            $inserttime = "INSERT INTO timelogtbl (user_id, log_action, log_date, log_time) 
                                        values ('$webID', 'Added $file_type File $file_title',  NOW(), NOW())";
            $query1= mysqli_query($con,$inserttime);
            $query2 = mysqli_insert_id($con);
            if ($query1)
            {
                $data = array
                (
                    'addFileStatus'=>'true',
                    'message' => 'Added Successfully' 
                );
                echo json_encode($data);
                return;
            }
            else
            {
                $data = array(
                    'addFileStatus'=>'false',
                );
                echo json_encode($data);
            }
        } else {
            $data = array(
                'addFileStatus'=>'false',
            );
            echo json_encode($data);
        } 
    } else{
        $data = array(
            'addFileStatus'=>'false',
        );
        echo json_encode($data);
    }
}





if(isset($_POST['view']))
{
    $id = $_POST['id'];
    $sql = "SELECT * FROM filesvw WHERE id = '$id'";
    $query = mysqli_query($con,$sql);
    $row = mysqli_fetch_assoc($query);
    echo json_encode($row);
}
?>