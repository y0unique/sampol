<!-- Add Files Modal -->
<div class="modal fade" id="addFilesModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-gradient-primary">
                <h5 class="modal-title text-gray-100" id="staticBackdropLabel">Add Files</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-gray-900">
                <form id="addFiles" action="">
                    <!-- File Type -->
                    <div class="mb-3 row">
                        <label for="addFileField" class="col-md-3 form-label">File Type:</label>
                        <div class="col-md-9">
                            <select class="form-control" id="file_type" name="file_type" required>
                                <option disabled selected hidden> <-- SELECT --> </option>
                                <option value="downloadables"> Downloadables </option>
                                <option value="materials"> Materials </option>
                             </select>
                        </div>
                    </div>
                    <!-- For Materials: Department -->
                    <div class="mb-3 row" id="department_div" hidden>
                        <label for="addFileField" class="col-md-3 form-label">Department:</label>
                        <div class="col-md-9">
                            <select class="form-control" id="file_department" name="file_department" disabled>
                                <option disabled selected hidden> <-- SELECT --> </option>
                                <option value="admin"> Admin </option>
                                <option value="asds"> ASDS </option>
                                <option value="accounting"> Accounting </option>
                                <option value="cid"> CID </option>
                                <option value="budget"> Budget </option>
                                <option value="ict"> ICT </option>
                                <option value="osds"> OSDS </option>
                                <option value="records"> Records </option>
                                <option value="sgod"> SGOD </option>
                                <option value="legal"> Legal </option>
                                <option value="hrms"> HRMS </option>
                                <option value="drrmo"> DRRMO </option>
                                <option value="coa"> COA </option>
                                <option value="property"> Property </option>
                                <option value="health"> Health </option>
                                <option value="publication"> Publication </option>
                                <option value="school plant"> School Plant </option>

                            </select>
                        </div>
                    </div>
                    <!-- File Title -->
                    <div class="mb-3 row">
                        <label for="addFileField" class="col-md-3 form-label">Title:</label>
                        <div class="col-md-9">
                            <textarea class="form-control" type="text" id="file_title" name="file_title" rows="3" required></textarea>
                        </div>
                    </div>
                    <!-- File Link -->
                    <div class="mb-3 row">
                        <label for="addFileField" class="col-md-3 form-label">Link:</label>
                        <div class="col-md-9">
                            <textarea class="form-control" type="text" id="file_link" name="file_link" rows="3" required></textarea>
                        </div>
                    </div>

                    <input class="form-control" type="hidden" id="webID" value="<?php echo $_SESSION['webID'] ?>">
                    <input class="form-control" type="hidden" id="webUsername" value="<?php echo $_SESSION['webUsername'] ?>">

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        var fileType = $('#file_type');
        var fileDepartment = $('#file_department');
        var departmentDiv = $('#department_div');

        function disableAndHideElements() {
            fileDepartment.prop('disabled', true);
            departmentDiv.prop('hidden', true);
        }

        function handleFileTypeChange() {
            var selectedFileType = fileType.val();

            disableAndHideElements();

            if (selectedFileType === 'procurement') {
                fileDepartment.prop('disabled', true);
            } else if (selectedFileType === 'downloadable') {
                // No need to do anything extra, elements are already disabled and hidden
            } else if (selectedFileType === 'material') {
                fileDepartment.prop('disabled', false);
                departmentDiv.prop('hidden', false);
            } else {

            }
        }

        // Initial setup
        disableAndHideElements();

        // Handle file type change event
        fileType.change(handleFileTypeChange);
    });
</script>

<!-- Edit Files Modal -->
<div class="modal fade" id="editFilesModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header bg-gradient-info">
                <h5 class="modal-title text-gray-100" id="staticBackdropLabel">Edit Files</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form id="editFiles">
                    <input class="form-control" type="hidden" name="id" id="_id" value="">
                    <input class="form-control" type="hidden" name="trid" id="_trid" value="">

                    <!-- File Type -->
                    <div class="mb-3 row">
                        <label for="editFilesField" class="col-md-3 form-label">File Type:</label>
                        <div class="col-md-9">
                            <select class="form-control" id="_file_type" name="file_type" required>
                                <option disabled selected hidden> <-- SELECT --> </option>
                                <option value="downloadables"> Downloadables </option>
                                <option value="materials"> Materials </option>
                             </select>
                        </div>
                    </div>
                    <!-- For Materials: Department -->
                    <div class="mb-3 row" id="_department_div" hidden>
                        <label for="editFilesField" class="col-md-3 form-label">Department:</label>
                        <div class="col-md-9">
                            <select class="form-control" id="_file_department" name="file_department" disabled>
                                <option disabled selected hidden> <-- SELECT --> </option>
                                <option value="admin"> Admin </option>
                                <option value="asds"> ASDS </option>
                                <option value="accounting"> Accounting </option>
                                <option value="cash and budget"> Accounting </option>
                                <option value="cid"> CID </option>
                                <option value="budget"> Budget </option>
                                <option value="ict"> ICT </option>
                                <option value="osds"> OSDS </option>
                                <option value="records"> Records </option>
                                <option value="sgod"> SGOD </option>
                                <option value="legal"> Legal </option>
                                <option value="hrms"> HRMS </option>
                                <option value="drrmo"> DRRMO </option>
                                <option value="coa"> COA </option>
                                <option value="property"> Property </option>
                                <option value="health"> Health </option>
                                <option value="publication"> Publication </option>
                                <option value="school plant"> School Plant </option>

                            </select>
                        </div>
                    </div>
                    <!-- File Title -->
                    <div class="mb-3 row">
                        <label for="editFilesField" class="col-md-3 form-label">Title:</label>
                        <div class="col-md-9">
                            <textarea class="form-control" type="text" id="_file_title" name="file_title" rows="3"></textarea>
                        </div>
                    </div>
                    <!-- File Link -->
                    <div class="mb-3 row">
                        <label for="editFilesField" class="col-md-3 form-label">Link:</label>
                        <div class="col-md-9">
                            <textarea class="form-control" type="text" id="_file_link" name="file_link" rows="3"></textarea>
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

<script>
        // Function to disable or enable textareas based on the selected _file_type
    function disableElementsBasedOnFileType(fileType) {
        var fileDepartment = $('#_file_department');
        var departmentDiv = $('#_department_div');

        // Disable and hide all elements
        disableAndHideElements();

        // Enable and show elements based on _file_type
        if (fileType === 'procurement') {
            fileDepartment.prop('disabled', true);
        } else if (fileType === 'downloadable') {
            // No need to do anything extra, elements are already disabled and hidden
        } else if (fileType === 'material') {
            fileDepartment.prop('disabled', false);
            departmentDiv.prop('hidden', false);
        } else {
        }
    }

    // Function to disable and hide all relevant elements
    function disableAndHideElements() {
        var fileDepartment = $('#_file_department');
        var departmentDiv = $('#_department_div');

        fileDepartment.prop('disabled', true);
        departmentDiv.prop('hidden', true);
    }
</script>

<!-- Delete File Modal class="modal fade d-block" -->
<div class="modal fade" id="deleteFilesModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm">
        <div class="modal-content">
            <div class="modal-header bg-gradient-danger">
                <h5 class="modal-title text-gray-100" id="staticBackdropLabel">Delete File</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-gray-900">
                <form id="deleteFiles">
                    <input class="form-control" type="hidden" name="id" id="_id_" value="">
                    <input class="form-control" type="hidden" name="trid" id="_trid_" value="">

                    <div class="mb-3 row">
                        <label for="deletefilesField" class="col-md-12 form-label">File Type:</label>
                        <div class="col-md-12">
                            <input class="form-control" type="text" id="_file_type_" name="file_type" disabled>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="deletefilesField" class="col-md-12 form-label">File Title:</label>
                        <div class="col-md-12">
                            <textarea class="form-control" type="text" id="_file_title_" name="file_title" rows="2" disabled></textarea>
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