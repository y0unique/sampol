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

        <link rel="stylesheet" href="admin/datatables/dataTables.bootstrap5.min.css">

        <script defer src="admin/datatables/jquery-3.7.0.js"></script>
		<script defer src="admin/datatables/jquery.dataTables.min.js"></script>
		<script defer src="admin/datatables/dataTables.bootstrap5.min.js"></script>
		<script defer src="admin/datatables/dataTables.fixedColumns.min.js"></script>

        <script defer src="admin/js/home/script.js"></script>


        <script>
            document.addEventListener('contextmenu', function (e) {
                e.preventDefault();
            });
            document.addEventListener('keydown', function (e) {
                if (e.code === 'KeyU' && (e.ctrlKey || e.metaKey)) {
                    e.preventDefault();
                }
            });
        </script>
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
                                    "office-memorandum" => array("mdi-file-multiple", "OFFICE ORDER"),
                                    "office-order" => array("mdi-file-document", "MISCELLANEOUS MEMOS"),
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
                                    
                                    $isActive = ($tabId === "numbered-memorandum") ? "show active" : "";
                                    echo '<div class="tab-pane fade ' . $isActive . '" id="' . $tabId . '" role="tabpanel" aria-labelledby="' . $tabId . '-tab">';
                                    echo '<div class="capabilities-content border rounded p-4">';
                                    echo '<div class="row align-items-center">';
                                    echo '<div class="col-md-12">';
                                    echo '<h4 class="title">' . $tabInfo[1] . '</h4>';
                                    echo '<table id="' . $tabId . '-table" class="table table-striped" style="width:100%">';
                                    echo '<thead>';
                                    echo '<tr>';
                                    echo '<th>Date</th> ';
                                    echo '<th style="display:none;">Tracking Number</th> ';
                                    if($tabId=='unnumbered-memorandum'){
                                        echo '<th style="display:none;">No.</th>  ';
                                    }else{
                                        echo '<th>No.</th>  ';
                                    }
                                    echo '<th>Title</th>';
                                    echo '</tr>';
                                    echo '</thead>';
                                    echo '<tbody>';
                                    $issuances = "SELECT * FROM issuancesvw WHERE status = 'active'AND type = '" . $tabInfo[1] . "' ORDER BY date DESC";
                                    $issuances1 = mysqli_query($con, $issuances);
                                    while($row = mysqli_fetch_array($issuances1)){
                                        echo '<tr>';
                                        echo '<td>'.$row['date'].'</td>';
                                        if($tabId=='unnumbered-memorandum'){
                                            echo '<td style="display:none;">'.$row['number'].'</td>';
                                        }else{
                                            echo '<td>'.$row['number'].'</td>';
                                        }
                                        echo '<td style="display:none;">'.$row['tracking_number'].'</td>';
                                        echo '<td><a class="text-primary" href="'.$row['link'].'" target="_blank">'.$row['title'].'</a></td>';
                                        echo '</tr>';
                                    }
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

        <!-- Archives Start -->
        <section class="section" id="pastIssuances">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h4 class="title text-uppercase mb-4">past issuances</h4>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
                <div class="row mt-4">
                    <div class="col-12">
                        <!-- Tab navigation -->
                        <ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
                            <?php
                            // Array containing issuance types and their corresponding icons
                            $pastissuances1 = array(
                                "past-2019" => array("mdi mdi-file-multiple", "2019"),
                                "past-2020" => array("mdi mdi-file-multiple", "2020"),
                                "past-2021" => array("mdi mdi-file-multiple", "2021"),
                                "past-2022" => array("mdi mdi-file-multiple", "2022"),
                                "past-2023" => array("mdi mdi-file-multiple", "2023")
                            );

                            // Iterate through the issuance types array to generate tabs
                            foreach ($pastissuances1 as $tabId => $tabInfo) {
                                $iconClass = $tabInfo[0];
                                $title = $tabInfo[1];
                                $isActive = ($tabId === "past-2019") ? "active" : "";
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
                            foreach ($pastissuances1 as $tabId => $tabInfo) {
                                $isActive = ($tabId === "past-2019") ? "show active" : "";
                                echo '<div class="tab-pane fade ' . $isActive . '" id="' . $tabId . '" role="tabpanel" aria-labelledby="' . $tabId . '-tab">';
                                echo '<div class="capabilities-content border rounded p-4">';
                                echo '<div class="row align-items-center">';
                                echo '<div class="col-md-12">';
                                echo '<h4 class="title">' . $tabInfo[1] . '</h4>';
                                echo '<table id="' . $tabId . '-table" class="table table-striped" style="width:100%">';
                                echo '<thead>';
                                echo '<tr>';
                                if($tabId=='past-2019' || $tabId=='past-2020'){
                                    echo '<th style="display:none;">Date</th> ';
                                    echo '<th style="display:none;">Tracking Number</th> ';
                                    echo '<th style="display:none;">No.</th>  ';
                                    echo '<th style="display:none;">Title</th>';
                                }else{
                                    echo '<th>Date</th> ';
                                    echo '<th>Tracking Number</th> ';
                                    echo '<th>No.</th>  ';
                                    echo '<th>Title</th>';
                                }
                                echo '</tr>';
                                // Add more headers as needed
                                echo '</tr>';
                                echo '</thead>';
                                echo '<tbody>';
                                // Fetch data from the database and display in the table
                                $year = substr($tabId, 5); // Extract year from tabId
                                $issuances = "SELECT * FROM issuancesvw WHERE status = 'active' AND YEAR(date) = $year ORDER BY date DESC";
                                $issuances1 = mysqli_query($con, $issuances);
                                while($row = mysqli_fetch_array($issuances1)){
                                    echo '<tr>';
                                    echo '<td>' . $row['date'] . '</td>';
                                    echo '<td>' . $row['tracking_number'] . '</td>';
                                    echo '<td>' . $row['number'] . '</td>';
                                    echo '<td><a class="text-primary" href="' . $row['link'] . '" target="_blank">' . $row['title'] . '</a></td>';
                                    
                                    echo '</tr>';
                                }
                                if($tabId=='past-2019'){
                                    echo '<iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSp9NyIpsd60bSwcSGSR-XT7LTN8If-_Dpis23lBFSn5LJh4sIAPc4JV4bjL0Ue4kPrW65gqqEsuqgM/pubhtml?widget=true&amp;headers=false" style="width:100%; height:1000px; border: 2px solid black;"></iframe>';
                                }else if($tabId=='past-2020'){
                                    echo '<iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTG3yIf5CgEzqCfaWI78lIfi83s57gBxKp0DBSZV7ye1NVNU3iq_yLoJr2NFZUavzP8jyuvAbbOubUf/pubhtml?widget=true&amp;headers=false" style="width:100%; height:1000px; border: 2px solid black;"></iframe>';
                                }else if($tabId=='past-2021'){
                                    echo '<iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQ4AjFZqmXZfhSgG5Q8o0qjuRJk5HcxoYvnXWe7vJ7GrDCagJgImjtBgaPiDGHcaXN7Pa8uHXIVPJRA/pubhtml?widget=true&amp;headers=false" style="width:100%; height:500px; border: 2px solid black;"></iframe>';
                                }
                                echo '</tbody>';
                                echo '</table>';
                                echo '</div><!--end col-->';
                                echo '</div><!--end row-->';
                                echo '</div>';
                                echo '</div><!--end tab pane-->';
                            }
                            ?>
                        </div><!--end tab content-->
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Archives End -->
        

        <!-- Seals Start -->
        <?php include 'admin/includes/home/seals.php'; ?>
        <!-- Seals End -->

        <!-- Footer Start -->
        <?php include 'admin/includes/home/footer.php'; ?>
        <!-- Footer End -->
        <!-- Scripts -->
        <?php include 'admin/includes/home/scripts.php'; ?>

                
    </body>

</html>
<style>
/* Ensure that the demo table scrolls */
    th, td { white-space: nowrap; }
    div.dataTables_wrapper {
        margin: 0 auto;
        overflow-x: scroll;
    }
 
    tr { height: 50px; }
</style>
<?php
// Close database connection
$con->close();
?>