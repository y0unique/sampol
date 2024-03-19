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
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
                
                <div class="row mt-4">
                    <div class="col-12">
                        <ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link active" id="numbered-memorandum-tab" data-toggle="pill" href="#numbered-memorandum" role="tab" aria-controls="numbered-memorandum" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-bullhorn text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">NUMBERED<br>MEMORANDUM</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="unnumbered-memorandum-tab" data-toggle="pill" href="#unnumbered-memorandum" role="tab" aria-controls="unnumbered-memorandum" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-alarm text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">UNNUMBERED<br>MEMORANDUM</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="division-advisories-tab" data-toggle="pill" href="#division-advisories" role="tab" aria-controls="division-advisories" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-note text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">DIVISION<br>ADVISORIES</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->

                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="division-circulars-tab" data-toggle="pill" href="#division-circulars" role="tab" aria-controls="division-circulars" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-email text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">DIVISION<br>CIRCULARS</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->

                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="office-memorandum-tab" data-toggle="pill" href="#office-memorandum" role="tab" aria-controls="office-memorandum" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-multiple text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">OFFICE<br>MEMORANDUM/ORDER</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->

                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="office-order-tab" data-toggle="pill" href="#office-order" role="tab" aria-controls="office-order" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-document text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">MISCELLANEOUS <br> MEMOS</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="city-memorandum-tab" data-toggle="pill" href="#city-memorandum" role="tab" aria-controls="city-memorandum" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-document text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">CITY <br> MEMORANDUM</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                        </ul><!--end nav pills-->

                        <div class="tab-content mt-3" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="numbered-memorandum" role="tabpanel" aria-labelledby="numbered-memorandum-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">NUMBERED MEMORANDUM</h4>
                                            
                                            <table id="numbered-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th> 
                                                        <th style="display:none;">Tracking Number</th> 
                                                        <th>No.</th>  
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($numbered3)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['date'];?></td>
                                                        <td><?php echo $row['number'];?></td>
                                                        <td style="display:none;"><?php echo $row['tracking_number'];?></td>
                                                        <td><a class="text-primary"href="<?php echo $row['link']?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
                                                    </tr>

                                                    <?php
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>

                                        </div><!--end col-->

                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->
                            
                            <div class="tab-pane fade" id="unnumbered-memorandum" role="tabpanel" aria-labelledby="unnumbered-memorandum-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">UNNUMBERED MEMORANDUM</h4>
                                            
                                            <table id="unnumbered-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th> 
                                                        <th style="display:none;">Tracking Number</th> 
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($unnumbered3)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['date'];?></td>
                                                        <td style="display:none;"><?php echo $row['tracking_number'];?></td>
                                                        <td><a class="text-primary" href="<?php echo $row['link']?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
                                                    </tr>

                                                    <?php
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>

                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->

                            <div class="tab-pane fade" id="division-advisories" role="tabpanel" aria-labelledby="division-advisories-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">DIVISION ADVISORIES</h4>
                                            
                                            <table id="adivsories-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th> 
                                                        <th style="display:none;">Tracking Number</th> 
                                                        <th>No.</th>  
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($advisory3)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['date'];?></td>
                                                        <td style="display:none;"><?php echo $row['tracking_number'];?></td>
                                                        <td><?php echo $row['number'];?></td>
                                                        <td><a class="text-primary" href="<?php echo $row['link']?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
                                                    </tr>

                                                    <?php
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>

                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->

                            <div class="tab-pane fade" id="division-circulars" role="tabpanel" aria-labelledby="division-circulars-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">DIVISION CIRCULARS</h4>
                                            
                                            <table id="circulars-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th> 
                                                        <th style="display:none;">Tracking Number</th> 
                                                        <th>No.</th>  
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($circulars3)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['date'];?></td>
                                                        <td style="display:none;"><?php echo $row['tracking_number'];?></td>
                                                        <td><?php echo $row['number'];?></td>
                                                        <td><a class="text-primary" href="<?php echo $row['link']?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
                                                    </tr>

                                                    <?php
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>

                                        </div><!--end col-->

                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->

                            <div class="tab-pane fade" id="office-memorandum" role="tabpanel" aria-labelledby="office-memorandum-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">OFFICE MEMORANDUM / ORDER</h4>
                                            
                                            <table id="office-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th> 
                                                        <th style="display:none;">Tracking Number</th> 
                                                        <th>No.</th>  
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($officeMemorandum3)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['date'];?></td>
                                                        <td style="display:none;"><?php echo $row['tracking_number'];?></td>
                                                        <td><?php echo $row['number'];?></td>
                                                        <td><a class="text-primary" href="<?php echo $row['link']?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
                                                    </tr>

                                                    <?php
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>

                                        </div><!--end col-->

                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->

                            <div class="tab-pane fade" id="office-order" role="tabpanel" aria-labelledby="office-order-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">MISCELLANEOUS</h4>
                                            
                                            <table id="miscellaneous-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th> 
                                                        <th style="display:none;">Tracking Number</th> 
                                                        <th>No.</th>  
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($miscellaneous3)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['date'];?></td>
                                                        <td style="display:none;"><?php echo $row['tracking_number'];?></td>
                                                        <td><?php echo $row['number'];?></td>
                                                        <td><a class="text-primary" href="<?php echo $row['link']?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
                                                    </tr>

                                                    <?php
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>

                                        </div><!--end col-->
                                        
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->
                            
                            <div class="tab-pane fade" id="city-memorandum" role="tabpanel" aria-labelledby="city-memorandum-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">CITY MEMORANDUM</h4>
                                            
                                            <table id="miscellaneous-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th> 
                                                        <th style="display:none;">Tracking Number</th> 
                                                        <th>No.</th>  
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($cityMemorandum1)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['date'];?></td>
                                                        <td style="display:none;"><?php echo $row['tracking_number'];?></td>
                                                        <td><?php echo $row['number'];?></td>
                                                        <td><a class="text-primary" href="<?php echo $row['link']?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
                                                    </tr>

                                                    <?php
                                                    }
                                                    ?>
                                                </tbody>
                                            </table>

                                        </div><!--end col-->
                                        
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->
                            
                            
                        </div><!--end tab content-->
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Issuances End -->

        <!-- Archives Start -->
        <section class="section" id="archives">
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
                        <ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link active" id="invitaion-bid-tab" data-toggle="pill" href="#invitaion-bid" role="tab" aria-controls="invitaion-bid" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-multiple text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">2019</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="projects-completed-tab" data-toggle="pill" href="#projects-completed" role="tab" aria-controls="projects-completed" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-multiple text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">2020</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="financial-reports-tab" data-toggle="pill" href="#financial-reports" role="tab" aria-controls="financial-reports" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-multiple text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">2021</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->

                        </ul><!--end nav pills-->

                        <div class="tab-content mt-3" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="invitaion-bid" role="tabpanel" aria-labelledby="invitaion-bid-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">2019</h4>
                                        	
                                        	<iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSp9NyIpsd60bSwcSGSR-XT7LTN8If-_Dpis23lBFSn5LJh4sIAPc4JV4bjL0Ue4kPrW65gqqEsuqgM/pubhtml?widget=true&amp;headers=false" style="width:100%; height:1000px; border: 2px solid black;"></iframe>
                                            
                                            

                                        </div><!--end col-->

                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->
                            
                            <div class="tab-pane fade" id="projects-completed" role="tabpanel" aria-labelledby="projects-completed-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">2020</h4>
                                            
                                            <iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTG3yIf5CgEzqCfaWI78lIfi83s57gBxKp0DBSZV7ye1NVNU3iq_yLoJr2NFZUavzP8jyuvAbbOubUf/pubhtml?widget=true&amp;headers=false" style="width:100%; height:1000px; border: 2px solid black;"></iframe>

                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->

                            <div class="tab-pane fade" id="financial-reports" role="tabpanel" aria-labelledby="financial-reports-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">2021</h4>
                                            
                                            <iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQ4AjFZqmXZfhSgG5Q8o0qjuRJk5HcxoYvnXWe7vJ7GrDCagJgImjtBgaPiDGHcaXN7Pa8uHXIVPJRA/pubhtml?widget=true&amp;headers=false" style="width:100%; height:1000px; border: 2px solid black;"></iframe>

                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->
                            
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