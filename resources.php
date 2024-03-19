<?php 
    // include 'admin/headers/permission_policy_config.php';
    include 'admin/database/home/connection.php';
    include 'admin/database/home/code.php';
?>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Resources | Deped Manila</title>
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
            echo '<script>document.getElementById("resources").classList.add("active");</script>';
        ?>
        <!-- Navbar End -->
        
        <!-- Resources Start -->
        <section class="section" id="resources">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h4 class="title text-uppercase mb-4">Resources</h4>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
                
                <div class="row mt-4">
                    <div class="col-12">
                        <ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link active" id="downloadables-tab" data-toggle="pill" href="#downloadable" role="tab" aria-controls="downloadables" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">DOWNLOADABLE<br>FILES</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="materials-tab" data-toggle="pill" href="#materials" role="tab" aria-controls="materials" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-alert text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">MONITORING<br>LINKS</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                        </ul><!--end nav pills-->

                        <div class="tab-content mt-3" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="downloadable" role="tabpanel" aria-labelledby="downloadables-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">DOWNLOADABLE FILES</h4>
                                            
                                            <table id="downloadables-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                    <th>ID</th>
                                                    <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($downloadbles1)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['id'];?></td>
                                                        <td><a class="text-primary"href="<?php echo $row['link'];?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
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
                            
                            <div class="tab-pane fade" id="materials" role="tabpanel" aria-labelledby="materials-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">materials</h4>
                                            
                                            <table id="materials-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th style="display:none;">Tracking Number</th>
                                                        <th>Department</th>  
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($materials1)){
                                                    ?>
                                                    <tr>
                                                        <td style="display:none;"><?php echo $row['ID'];?></td>
                                                        <td><?php echo $row['id'];?></td>
                                                        <td><a class="text-primary" href="<?php echo $row['link'];?>" target="_blank"><?php echo strtoupper($row['title']);?></a></td>
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
        <!-- Resources End -->

        

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