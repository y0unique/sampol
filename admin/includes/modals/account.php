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
                    <input class="form-control" type="hidden" name="id" id="_id" value="">
                    <input class="form-control" type="hidden" name="trid" id="_trid" value="">

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Username:</label>
                        <div class="col-md-9">
                            <input class="form-control" value="<?php echo $_SESSION['webUsername'];?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Email:</label>
                        <div class="col-md-9">
                            <input class="form-control" value="<?php echo $_SESSION['webEmail'];?>">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">User Type:</label>
                        <div class="col-md-9">
                            <input class="form-control" value="<?php echo $_SESSION['webType'];?>">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Password:</label>
                        <div class="col">
                            <input class="form-control" type="password" value="<?php echo $_SESSION['webPassword'];?>" readonly>
                        </div>
                        
                        <div class="col">
                            <button id="changePassword" type="button" class="btn btn-danger"><i class="fas fa-unlock-alt"></i></button>
                        </div>
                    </div>


                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Department:</label>
                        <div class="col-md-9">
                            <input class="form-control" value="<?php echo $_SESSION['webDepartment'];?>">
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="UserField" class="col-md-3 form-label">Status:</label>
                        <div class="col-md-9">
                            <input class="form-control" value="<?php echo $_SESSION['webStatus'];?>">
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-danger" type="button" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    // JavaScript code to handle button click
    $(document).ready(function() {
        $('#changePassword').on('click', function() {
            // Open the settingsModal when the button is clicked
            $('#settingsModal').modal('show');
        });
    });
</script>