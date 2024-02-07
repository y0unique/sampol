<!-- Add Issuances Modal class="modal fade d-block" -->
<div class="modal fade" id="addIssuancesModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-gradient-primary">
                <h5 class="modal-title text-gray-100" id="staticBackdropLabel">Add Isuances</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-gray-900">
                <form id="addIssuances" action="">
                    <div class="mb-3 row">
                        <label for="addIssuanceField" class="col-md-2 form-label">Tracking Number:</label>
                        <div class="col-md-4">
                            <input class="form-control" type="text" id="tracking_number" name="tracking_number">
                        </div>

                        <label for="addIssuanceField" class="col-md-2 form-label">Issuance Type:</label>
                        <div class="col-md-4">
                            <select class="form-control" id="issuances_type" name="issuances_type" required>
                                <option disabled selected hidden></option>
                                <option value="Numbered"> Numbered Memo </option>
                                <option value="Unnumbered"> Unnumbered Memo </option>
                                <option value="Advisories"> Division Advisories </option>
                                <option value="Circulars"> Division Letters / Circulars </option>
                                <option value="Miscellaneous"> Miscellaneous </option>
                                <option value="Notices"> Notices </option>
                                <option value="Office Memorandum"> Office Memorandum </option>
                                <option value="Office Order"> Office Order </option>
                                <option value="City Memorandum"> City Memorandum </option>
                             </select>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="addIssuanceField" class="col-md-2 form-label">Title:</label>
                        <div class="col-md-10">
                            <textarea class="form-control" type="text" id="issuances_title" name="issuances_title" rows="2"></textarea>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="addIssuanceField" class="col-md-2 form-label">Link:</label>
                        <div class="col-md-10">
                            <textarea class="form-control" type="text" id="issuances_link" name="issuances_link" rows="2"> </textarea>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="addIssuanceField" class="col-md-2 form-label">Issuance Number:</label>
                        <div class="col-md-4">
                            <input class="form-control" type="number" id="issuances_number" name="issuances_number">
                        </div>

                        <label for="addIssuanceField" class="col-md-2 form-label">Memo Date:</label>
                        <div class="col-md-4">
                            <input class="form-control" type="date" id="issuances_date" name="issuances_date">
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
<div class="modal fade" id="editIssuancesModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-gradient-info">
                <h5 class="modal-title text-gray-100" id="staticBackdropLabel">Edit Isuances</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-gray-900">
                <form id="editIssuances">
                    <input class="form-control" type="hidden" name="id" id="_id" value="">
                    <input class="form-control" type="hidden" name="trid" id="_trid" value="">

                    <div class="mb-3 row">
                        <label for="editIssuanceField" class="col-md-2 form-label">Tracking Number:</label>
                        <div class="col-md-4">
                            <input class="form-control" type="text" id="_tracking_number" name="tracking_number">
                        </div>

                        <label for="editIssuanceField" class="col-md-2 form-label">Issuance Type:</label>
                        <div class="col-md-4">
                            <select class="form-control" id="_issuances_type" name="issuances_type" required>
                                <option disabled selected hidden></option>
                                <option value="Numbered"> Numbered Memo </option>
                                <option value="Unnumbered"> Unnumbered Memo </option>
                                <option value="Advisories"> Division Advisories </option>
                                <option value="Circulars"> Division Letters / Circulars </option>
                                <option value="Miscellaneous"> Miscellaneous </option>
                                <option value="Notices"> Notices </option>
                                <option value="Office Memorandum"> Office Memorandum </option>
                                <option value="Office Order"> Office Order </option>
                                <option value="City Memorandum"> City Memorandum </option>
                             </select>
                        </div>

                    </div>
                    
                    <div class="mb-3 row">
                        <label for="editIssuanceField" class="col-md-2 form-label">Title:</label>
                        <div class="col-md-10">
                            <textarea class="form-control" type="text" id="_issuances_title" name="issuances_title" rows="4"></textarea>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="editIssuanceField" class="col-md-2 form-label">Link:</label>
                        <div class="col-md-10">
                            <textarea class="form-control" type="text" id="_issuances_link" name="issuances_link" rows="2"> </textarea>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label for="editIssuanceField" class="col-md-2 form-label">Issuance Number:</label>
                        <div class="col-md-4">
                            <input class="form-control" type="number" id="_issuances_number" name="issuances_number">
                        </div>

                        <label for="editIssuanceField" class="col-md-2 form-label">Memo Date:</label>
                        <div class="col-md-4">
                            <input class="form-control" type="date" id="_issuances_date" name="issuances_date">
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
    <div class="modal-dialog modal-sm">
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