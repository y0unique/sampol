<div class="modal fade" id="accountInfoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-gradient-primary">
                <h5 class="modal-title  text-gray-100" id="exampleModalLabel">Hello <?php echo $_SESSION['webUsername'];?></h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <h5 class="modal-title text-gray-900 mb-3" id="exampleModalLabel">Account Information</h5>
                <form action="" id="accountInfo">

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Username:</label>
                        <div class="col-md-9">
                            <input class="form-control form-control-account" value="<?php echo $_SESSION['webUsername'];?>" readonly>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Email:</label>
                        <div class="col-md-9">
                            <input class="form-control form-control-account" value="<?php echo $_SESSION['webEmail'];?>" readonly>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">User Type:</label>
                        <div class="col-md-9">
                            <input class="form-control form-control-account" value="<?php echo $_SESSION['webType'];?>" readonly>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Password:</label>
                        <div class="col">
                            <input class="form-control form-control-account" type="password" value="<?php echo $_SESSION['webPassword'];?>" readonly>
                        </div>
                    </div>


                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Department:</label>
                        <div class="col-md-9">
                            <input class="form-control form-control-account" value="<?php echo $_SESSION['webDepartment'];?>" readonly>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Status:</label>
                        <div class="col-md-9">
                            <input class="form-control form-control-account" value="<?php echo $_SESSION['webStatus'];?>" readonly>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button id="changeInfo" class="btn btn-info" type="button">Edit</button>
                        <button class="btn btn-danger" type="button" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal d-block" id="accountEditModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-gradient-primary">
                <h5 class="modal-title  text-gray-100" id="exampleModalLabel">Hello <?php echo $_SESSION['webUsername'];?></h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <h5 class="modal-title text-gray-900 mb-3" id="exampleModalLabel">Account Information</h5>
                <form id="accountEdit">
                    <input class="form-control" type="hidden" name="id_" id="_id_" value="">
                    <input class="form-control" type="hidden" name="trid_" id="_trid_" value="">

                    
                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">ID:</label>
                        <div class="col-md-9">
                            <input class="form-control" type="text" id="userid" name="userid" readonly>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Username:</label>
                        <div class="col-md-9">
                            <input class="form-control" type="text" id="username" name="username">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Email:</label>
                        <div class="col-md-9">
                            <input class="form-control" type="email" id="useremail" name="useremail">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Current Password:</label>
                        <div class="col">
                            <input class="form-control" type="text" id="currpassword" name="currpassword">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">New Password:</label>
                        <div class="col">
                            <input class="form-control" type="text" id="newuserpassword" name="newuserpassword">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Retype New Password:</label>
                        <div class="col">
                            <input class="form-control" type="text" id="reuserpassword" name="reuserpassword">
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button id="updateaccountuser" class="btn btn-success" type="button">Save</button>
                        <button class="btn btn-danger" type="button" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<style>
.form-control-account[readonly] {
    background-color: #fff;
    color: #495057;
    cursor: not-allowed; 
}
.form-control-account[readonly]:focus {
    -webkit-user-select: none; 
    -moz-user-select: none; 
    -ms-user-select: none; 
    user-select: none;
    outline: none; 
}
</style>

<script>
    $(document).ready(function() {
        $('#changeInfo').on('click', function(event) {
            var id = <?php echo $_SESSION['webID']; ?>;
            $('#accountInfoModal').modal('hide');
            $('#accountEditModal').modal('show');
            fetchUserData(id);
        });

        function fetchUserData(userId) {
            $.ajax({
                url: 'includes/fetchdata/accountfetch.php',
                type: 'POST',
                dataType: 'json',
                data: { user_id: userId },
                success: function(response) {
                    if(response.error) {
                        console.error(response.error);
                        return;
                    }
                    $('#userid').val(response.user_id);
                    $('#username').val(response.user_username);
                    $('#useremail').val(response.user_email);
                    $('#accountEditModal').modal('show');
                },
                error: function(xhr, status, error) {
                    console.error(xhr.responseText);
                }
            });
        }
    });

    //update current user
    $(document).on('submit', '#accountEdit', function(e) {
        e.preventDefault();
        var user_id = $('#userid').val();
        var user_username= $('#username').val();
        var user_email= $('#useremail').val();
        var currpassword= $('#currpassword').val();
        var newuserpassword= $('#newuserpassword').val();
        var reuserpassword= $('#reuserpassword').val();

        var id = $('#_id').val();
        var trid = $('#_trid').val();
        if (user_id != '' && user_username != '' && user_email != '' && user_password != '') {
        $.ajax({
            url: "includes/codes/userscode.php",
            type: "post",
            data: {
                id:id,
                user_id:user_id,
                user_username:user_username,
                user_email:user_email,
                user_password:user_password,
                updateaccountuser: true
            },
            success: function(data) {
                var json = JSON.parse(data);
                var updateAccount = json.updateAccount;
                if (updateAccount == 'true') {
                    
                    alertify.set('notifier','position', 'top-right');
                    alertify.success(json.message);
                    $('#editUserModal').modal('hide');
                } else if(updateAccount == 'false'){
                    alertify.set('notifier','position', 'top-right');
            	    alertify.warning(json.message);
                }else{
                    alert('Error communicating with the database');
                }
            }
        });
        } else {
            alert('Fill all the required fields');
        }
    });
</script>