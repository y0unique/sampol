<?php
    //include database
    include 'database/connection.php';
    session_start();
    //check if user is not logged in
    if(!isset($_SESSION['webID']) && !isset($_SESSION['webUsername'])){
        header('Location: login.php');
        exit();
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include 'includes/header.php'; ?>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php include 'includes/sidebar.php';
        echo '<script>
                document.getElementById("management").classList.add("active");
                document.getElementById("collapseUsers").classList.add("show");
                document.getElementById("ausers").classList.add("active");
                document.getElementById("acollapseUsers").classList.remove("collapsed");
              </script>';?>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <?php include 'includes/topbar.php'; ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Users</h1>
                    </div>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3 d-sm-flex align-items-center justify-content-between mb-4">
                            <a href="#" data-id="" data-toggle="modal" data-target="#addUserModal" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                                <i class="fas fa-plus fa-sm text-white-50"></i> Add Users
                            </a>
                            <h6 class="m-0 font-weight-bold text-primary">Users Table</h6>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped display compact text-gray-900" id="usersTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Action</th>
                                            <th>ID</th>
                                            <th>Username</th>
                                            <th>Email</th>
                                            <th>Department</th>
                                            <th>User Type</th>
                                            <th>Profile</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php include 'includes/footer.php'; ?>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- scripts -->
    <?php include 'includes/scripts.php'; ?>

    <!-- modals -->
    <?php include 'includes/modals/usersmodal.php'; ?>
</body>

</html>
<script type="text/javascript">
    $(document).ready(function() {
      $('#usersTable').DataTable({
        "fnCreatedRow": function( nRow, aData, iDataIndex ) {
          $(nRow).attr('user_id', aData[0]);
        },
        'serverSide':'true',
        'processing':'true',
        'paging':'true',
        'order':[],
        'ajax': {
          'url':'includes/fetchdata/usersfetch.php',
          'type':'post',
        },
        "columnDefs": [{
          'target':[0,5],
          'orderable' :false
        }]
      });
    } );

    //add issuances
    $(document).on('submit','#addUserModal',function(e){
        e.preventDefault();
        var webID = $('#webID').val();
        var webUsername = $('#webUsername').val();
        var user_username= $('#user_username').val();
        var user_email= $('#user_email').val();
        var user_type= $('#user_type').val();
        var user_department= $('#user_department').val();

        if(user_username != '' && user_email != '' && user_type != ''&& user_department != ''){
            $.ajax({
                url:"includes/codes/userscode.php",
                type:"post",
                data:
                {
                    webID:webID,
                    webUsername:webUsername,
                    user_username:user_username,
                    user_email:user_email,
                    user_type:user_type,
                    user_department:user_department,
                    add: true
                },
                success:function(data){
                    var json = JSON.parse(data);
                    var addUserStatus = json.addUserStatus;
                    if(addUserStatus =='true'){
                        mytable =$('#usersTable').DataTable();
                        mytable.draw();
                        $('#addUserModal').modal('hide');
                        $('#addUser')[0].reset();
                        alertify.set('notifier','position', 'top-right');
                        alertify.success(json.message);
                    }else if(addUserStatus == 'false'){
                        alertify.set('notifier','position', 'top-right');
                        alertify.warning(json.message);
                    }else{
                        alert('failed');
                    }
                }
            });
        } else {
            alert('Fill all the required fields');
        }
    });

    //view user for edit modal
    $('#usersTable').on('click', '.edituserbtn ', function(event) {
        var table = $('#usersTable').DataTable();
        var trid = $(this).closest('tr').attr('user_id');
        var id = $(this).data('id');
        $('#editUserModal').modal('show');

        $.ajax({
        url: "includes/codes/userscode.php",
        data: {
            id: id,
            view: true
        },
        type: 'post',
        success: function(data) {
            var json = JSON.parse(data);

            $('#_user_id').val(json.user_id);
            $('#_user_username').val(json.user_username);
            $('#_user_email').val(json.user_email);
            $('#_user_department').val(json.user_department);
            $('#_user_type').val(json.user_type);
            $('#_user_password').val(json.user_password);
            $('#_user_status').val(json.user_status);
            $('#_id').val(id);
            $('#_trid').val(trid);
        }
        })
    });
    //edit user
    $(document).on('submit', '#editEmployee', function(e) {
        e.preventDefault();;
        var webID = $('#webID').val();
        var webUsername = $('#webUsername').val();
        var tracking_number = $('#_tracking_number').val();
        var issuances_title= $('#_issuances_title').val();
        var issuances_link= $('#_issuances_link').val();
        var issuances_number= $('#_issuances_number').val();
        var issuances_date= $('#_issuances_date').val();
        var issuances_type= $('#_issuances_type').val();
        var id = $('#_id').val();
        var trid = $('#_trid').val();
        if (tracking_number != '' && issuances_title != '' && issuances_link != '' && issuances_number != '' && issuances_date != '' && issuances_type != '') {
        $.ajax({
            url: "includes/codes/issuancescode.php",
            type: "post",
            data: {
                id:id,
                webID:webID,
                webUsername:webUsername,
                tracking_number:tracking_number,
                issuances_title:issuances_title,
                issuances_link:issuances_link,
                issuances_number:issuances_number,
                issuances_date:issuances_date,
                issuances_type:issuances_type,
                update: true
            },
            success: function(data) {
                var json = JSON.parse(data);
                var editIssuanceStatus = json.editIssuanceStatus;
                if (editIssuanceStatus == 'true') {
                    $('#issuancesTable').DataTable().destroy();
                    mytable = $('#issuancesTable').DataTable({
                        "fnCreatedRow": function(nRow, aData, iDataIndex) {
                            $(nRow).attr('id', aData[0]);
                        },
                        'serverSide': 'true',
                        'processing': 'true',
                        'paging': 'true',
                        'order': [],
                        'ajax': {
                            'url': 'includes/fetchdata/issuancesfetch.php',
                            'type': 'post',
                        },
                        "columnDefs": [{
                            'target': [0, 6],
                            'orderable': false
                        }]
                    });
                    alertify.set('notifier','position', 'top-right');
                    alertify.success(json.message);
                    $('#editIssuancesModal').modal('hide');
                } else if(editIssuanceStatus == 'false'){
                    alertify.set('notifier','position', 'top-right');
            	    alertify.error(json.message);
                }else{
                    alert('Error communicating with the database');
                }
            }
        });
        } else {
            alert('Fill all the required fields');
        }
    });

    //clear modal add
    $('#addUserModal').on('hidden.bs.modal', function() {
        $('#addUser')[0].reset();
    });
    //clear modal edit
    $('#editUserModal').on('hidden.bs.modal', function() {
        $('#editEmployee')[0].reset();
    });
    //clear modal delete
    $('#deleteUserModal').on('hidden.bs.modal', function() {
        $('#deleteUser')[0].reset();
    });
</script>