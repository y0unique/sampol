<?php 
    // include 'admin/headers/permission_policy_config.php';
    include 'admin/database/home/connection.php';
    include 'admin/database/home/code.php';
?>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Division Issuances  | Deped Manila</title>
        <meta name="viewport"    content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Department of Education Manila" />
        <meta name="keywords"    content="DepEd, Manila, Schools Division, Division of City Schools, Website of DepEd Manila, Official Website" />
        <meta name="author"      content="zeraphm"  />
        <!-- favicon -->
        <link rel="shortcut icon" href="admin/images/logo/favicon.ico">
        <!-- Magnific -->
        <link href="admin/css/home/magnific-popup.css" rel="stylesheet" type="text/css" />
        <!-- css -->
        <link href="admin/css/home/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="admin/css/home/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="admin/css/home/style.css" rel="stylesheet" type="text/css" />
        <!-- Slider -->        
        <link rel="stylesheet" href="admin/css/home/slick-theme.css"/>
        <link rel="stylesheet" href="admin/css/home/slick.css"/>
        
        <!-- Data Table -->
        <link rel="stylesheet" href="admin/datatables/dataTables.bootstrap5.min.css">
		<script defer src="admin/datatables/dataTables.fixedColumns.min.js"></script>

        <!-- Scripts -->
        <script defer src="admin/js/home/script.js"></script>
    </head>

    <?php include 'admin/includes/home/preloader.php'; ?>
    <body>
        <!-- Navbar Start -->
        <?php 
            include 'admin/includes/home/navbar.php'; 
            echo '<script>document.getElementById("issuances").classList.add("active");</script>';
        ?>
        <!-- Navbar End -->
        
        <!-- Issuances Start -->
        <section class="section" id="issuances">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a class="text-custom" href="index.php">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">Issuances</li>
                        <li class="breadcrumb-item active" aria-current="page">Division Offce</li>
                    </ol>
                </nav>

                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h4 class="title text-uppercase mb-4">ISSUANCES</h4>
                            <p class="text-danger mx-auto para-desc mb-0" style="font-style: italic;"> *To look for an issuance, please use the search field to filter the table.*</p>
                            <p class="text-danger mx-auto para-desc mb-0" style="font-style: italic;"> *For past issuances click <a class="past-issuances text-primary" href="#pastIssuances">here</a>*</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
                
                <div class="row mt-4">
                    <div class="col-12">
                        <!-- Tab navigation -->
                        <ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
                            <?php
                                // Array containing issuance types and their corresponding icons
                                $issuancestype1 = array(
                                    "numbered-memorandum" => array("mdi-bullhorn", "NUMBERED MEMORANDUM"),
                                    "unnumbered-memorandum" => array("mdi-alarm", "UNNUMBERED MEMORANDUM"),
                                    "division-advisories" => array("mdi-note", "DIVISION ADVISORIES"),
                                    "division-circulars" => array("mdi-email", "DIVISION CIRCULARS"),
                                    "division-orders" => array("mdi-email-alert", "DIVISION ORDERS"),
                                    "office-order" => array("mdi-file-multiple", "OFFICE ORDER"),
                                    "office-memorandum" => array("mdi-file-document", "MISCELLANEOUS MEMOS"),
                                    "city-memorandum" => array("mdi-feather", "CITY MEMORANDUM / EXECUTIVE ORDER")
                                );
                                // Iterate through the issuance types array to generate tabs
                                foreach ($issuancestype1 as $tabId => $tabInfo) {
                                    $iconClass = $tabInfo[0];
                                    $title = $tabInfo[1];
                                    $isActive = ($tabId === "numbered-memorandum") ? "active" : "";
                                    echo '<li class="nav-item mb-4 pt-2">';
                                    echo '<a class="nav-link ' . $isActive . '" id="' . $tabId . '-tab" data-toggle="pill" href="#' . $tabId . '" role="tab" aria-controls="' . $tabId . '" aria-selected="false">';
                                    echo '<div class="capabilities text-center rounded pt-2 pb-2">';
                                    echo '<div class="icon bg-custom mb-3">';
                                    echo '<i class="mdi ' . $iconClass . ' text-white"></i>';
                                    echo '</div>';
                                    echo '<h4 class="title font-weight-normal mb-0">' . $title . '</h4>';
                                    echo '</div>';
                                    echo '</a><!--end nav link-->';
                                    echo '</li><!--end nav item-->';
                                }
                            ?>
                        </ul><!--end nav pills-->

                        <!-- Tab content -->
                        <div class="tab-content mt-3" id="pills-tabContent">
                            <?php
                                // Iterate through the issuance types array to generate tab content
                                foreach ($issuancestype1 as $tabId => $tabInfo) {
                                echo "<script>console.log('" . $tabInfo[1] . "');</script>";
                                    $isActive = ($tabId === "numbered-memorandum") ? "show active" : "";
                                    echo '<div class="tab-pane fade ' . $isActive . '" id="' . $tabId . '" role="tabpanel" aria-labelledby="' . $tabId . '-tab">';
                                    echo '<div class="capabilities-content border rounded p-4">';
                                    echo '<div class="row align-items-center">';
                                    echo '<div class="col-md-12">';
                                    echo '<h4 class="title">' . $tabInfo[1] . '</h4>';
                                    echo '<table id="' . $tabId . '-table" class="table table-striped" style="width:100%">';
                                    
                                    echo "<script>console.log('" . $tabId . "');</script>";
                                        echo '<thead>';
                                            echo '<tr>';
                                                echo '<th>Date</th> ';
                                                if($tabId=='unnumbered-memorandum'){
                                                    echo '<th style="display:none;">No.</th>  ';
                                                }else{
                                                    echo '<th>No.</th>  ';
                                                }
                                                echo '<th>Title</th>';
                                            echo '</tr>';
                                        echo '</thead>';
                                        
                                    echo '<tbody>';

                                    echo '</tbody>';
                                    echo '</table>';
                                    echo '</div><!--end col-->';
                                    echo '</div><!--end row-->';
                                    echo '</div>';
                                    echo '</div><!--end teb pane-->';
                                }
                            ?>
                        </div><!--end tab content-->
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Issuances End -->

        
        

        <!-- Seals Start -->
        <?php include 'admin/includes/home/seals.php'; ?>
        <!-- Seals End -->

        <!-- Footer Start -->
        <?php include 'admin/includes/home/footer.php'; ?>
        <!-- Footer End -->
        <!-- Scripts -->
        <?php include 'admin/includes/home/scripts.php'; ?>

        <script src="admin/vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    </body>

</html>
<!-- style for table -->
<style>
/* Ensure that the demo table scrolls */
    th, td { white-space: nowrap; }
    div.dataTables_wrapper {
        margin: 0 auto;
        overflow-x: scroll;
    }
 
    tr { height: 50px; }
</style>
<!-- script for fetchdata -->
<script>
$(document).ready(function() {
    // Function to initialize DataTables
    function initializeDataTables() {
        $('#numbered-memorandum-table').DataTable({
            "fnCreatedRow": function(nRow, aData, iDataIndex) {
                $(nRow).attr('id', aData[0]);
            },
            'serverSide': 'true',
            'processing': 'true',
            'paging': 'true',
            'order': [],
            'ajax': {
                'url': 'admin/includes/fetchdata/issuances/issuancenumbered.php',
                'type': 'post',
            },
            "columnDefs": [{
                'target': [0, 7],
                'orderable': false
            }]
        });

        $('#unnumbered-memorandum-table').DataTable({
            "fnCreatedRow": function(nRow, aData, iDataIndex) {
                $(nRow).attr('id', aData[0]);
            },
            'serverSide': 'true',
            'processing': 'true',
            'paging': 'true',
            'order': [],
            'ajax': {
                'url': 'admin/includes/fetchdata/issuances/issuanceunnumbered.php',
                'type': 'post',
            },
            "columnDefs": [{
                'target': [0, 7],
                'orderable': false
            },{
                'targets': 1,
                'visible': false,
            }]
        });

        $('#division-advisories-table').DataTable({
            "fnCreatedRow": function(nRow, aData, iDataIndex) {
                $(nRow).attr('id', aData[0]);
            },
            'serverSide': 'true',
            'processing': 'true',
            'paging': 'true',
            'order': [],
            'ajax': {
                'url': 'admin/includes/fetchdata/issuances/issuanceadvisories.php',
                'type': 'post',
            },
            "columnDefs": [{
                'target': [0, 7],
                'orderable': false
            }]
        });

        $('#division-circulars-table').DataTable({
            "fnCreatedRow": function(nRow, aData, iDataIndex) {
                $(nRow).attr('id', aData[0]);
            },
            'serverSide': 'true',
            'processing': 'true',
            'paging': 'true',
            'order': [],
            'ajax': {
                'url': 'admin/includes/fetchdata/issuances/issuancecirculars.php',
                'type': 'post',
            },
            "columnDefs": [{
                'target': [0, 7],
                'orderable': false
            }]
        });

        $('#division-orders-table').DataTable({
            "fnCreatedRow": function(nRow, aData, iDataIndex) {
                $(nRow).attr('id', aData[0]);
            },
            'serverSide': 'true',
            'processing': 'true',
            'paging': 'true',
            'order': [],
            'ajax': {
                'url': 'admin/includes/fetchdata/issuances/issuanceorders.php',
                'type': 'post',
            },
            "columnDefs": [{
                'target': [0, 7],
                'orderable': false
            }]
        });

        $('#office-memorandum-table').DataTable({
            "fnCreatedRow": function(nRow, aData, iDataIndex) {
                $(nRow).attr('id', aData[0]);
            },
            'serverSide': 'true',
            'processing': 'true',
            'paging': 'true',
            'order': [],
            'ajax': {
                'url': 'admin/includes/fetchdata/issuances/issuanceofficememo.php',
                'type': 'post',
            },
            "columnDefs": [{
                'target': [0, 7],
                'orderable': false
            }]
        });

        $('#office-order-table').DataTable({
            "fnCreatedRow": function(nRow, aData, iDataIndex) {
                $(nRow).attr('id', aData[0]);
            },
            'serverSide': 'true',
            'processing': 'true',
            'paging': 'true',
            'order': [],
            'ajax': {
                'url': 'admin/includes/fetchdata/issuances/issuanceofficeorder.php',
                'type': 'post',
            },
            "columnDefs": [{
                'target': [0, 7],
                'orderable': false
            }]
        });

        $('#city-memorandum-table').DataTable({
            "fnCreatedRow": function(nRow, aData, iDataIndex) {
                $(nRow).attr('id', aData[0]);
            },
            'serverSide': 'true',
            'processing': 'true',
            'paging': 'true',
            'order': [],
            'ajax': {
                'url': 'admin/includes/fetchdata/issuances/issuancecitymemo.php',
                'type': 'post',
            },
            "columnDefs": [{
                'target': [0, 7],
                'orderable': false
            }]
        });
    }

    // Call the function initially
    initializeDataTables();

    // Refresh the DataTables every 10 mins
    setInterval(function() {
        // Destroy existing DataTables instances
        $('#numbered-memorandum-table').DataTable().destroy();
        $('#unnumbered-memorandum-table').DataTable().destroy();
        $('#division-advisories-table').DataTable().destroy();
        $('#division-circulars-table').DataTable().destroy();
        $('#division-orders-table').DataTable().destroy();
        $('#office-memorandum-table').DataTable().destroy();
        $('#office-order-table').DataTable().destroy();
        $('#city-memorandum-table').DataTable().destroy();

        // Re-initialize DataTables
        initializeDataTables();
    }, 100000); // 10000 milliseconds = 10 mins
});
</script>