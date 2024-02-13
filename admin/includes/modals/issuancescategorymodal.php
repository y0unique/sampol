<!-- Add Issuances Modal class="modal fade d-block" -->
<div class="modal fade" id="addIssuanceCategoryModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-gradient-primary">
                <h5 class="modal-title text-gray-100" id="staticBackdropLabel">Add Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-gray-900">
                <form id="addIssuanceCategory" action="">
                    <div class="mb-12 row">
                        <label for="addIssuanceCategoryField" class="col-md-12 form-label">Issuance Type:</label>
                        <div class="col-md-12">
                            <input class="form-control" type="text" id="issuancecategory_type" name="issuancecategory_type">
                        </div>

                        <label for="addIssuanceCategoryField" class="col-md-12 form-label">Display Name:</label>
                        <div class="col-md-12">
                            <input class="form-control" type="text" id="issuancecategory_name" name="issuancecategory_name">
                        </div>
                    </div>
                    
                    <input class="form-control" type="hidden" id="webID" value="<?php echo $_SESSION['webID'] ?>">
                    <input class="form-control" type="hidden" id="webUsername" value="<?php echo $_SESSION['webUsername'] ?>">

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" id="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Edit Issuances Modal class="modal fade d-block" -->
<div class="modal fade" id="editIssuanceCategoryModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-gradient-info">
                <h5 class="modal-title text-gray-100" id="staticBackdropLabel">Edit Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-gray-900">
                <form id="editIssuanceCategory">
                    <input class="form-control" type="hidden" name="id" id="_id" value="">
                    <input class="form-control" type="hidden" name="trid" id="_trid" value="">

                    <div class="mb-12 row">
                        <label for="editIssuanceCategoryField" class="col-md-12 form-label">Issuance Type:</label>
                        <div class="col-md-12">
                            <input class="form-control" type="text" id="_issuancecategory_type" name="issuancecategory_type">
                        </div>

                        <label for="editIssuanceCategoryField" class="col-md-12 form-label">Display Name:</label>
                        <div class="col-md-12">
                            <input class="form-control" type="text" id="_issuancecategory_name" name="issuancecategory_name">
                        </div>
                    </div>

                    <input class="form-control" type="hidden" id="webID" value="<?php echo $_SESSION['webID'] ?>">
                    <input class="form-control" type="hidden" id="webUsername" value="<?php echo $_SESSION['webUsername'] ?>">

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" id="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Delete Issuances Modal class="modal fade d-block" -->
<div class="modal fade" id="deleteIssuancesModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm">
        <div class="modal-content">
            <div class="modal-header bg-gradient-danger">
                <h5 class="modal-title text-gray-100" id="staticBackdropLabel">Delete Isuances</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-gray-900">
                <form id="deleteIssuances">
                    <input class="form-control" type="hidden" name="id" id="_id_" value="">
                    <input class="form-control" type="hidden" name="trid" id="_trid_" value="">

                    <div class="mb-3 row">
                        <label for="deleteIssuancesField" class="col-md-12 form-label">Tracking Number:</label>
                        <div class="col-md-12">
                            <input class="form-control" type="text" id="_tracking_number_" name="tracking_number" disabled>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="deleteIssuancesField" class="col-md-12 form-label">Title:</label>
                        <div class="col-md-12">
                            <textarea class="form-control" type="text" id="_issuances_title_" name="issuances_title" rows="2" disabled></textarea>
                        </div>
                    </div>

                    <input class="form-control" type="hidden" id="webID" value="<?php echo $_SESSION['webID'] ?>">
                    <input class="form-control" type="hidden" id="webUsername" value="<?php echo $_SESSION['webUsername'] ?>">

                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Cancel</button>
                        <button type="submit" id="submit" class="btn btn-danger">Yes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>