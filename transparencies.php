<?php 
    // include 'admin/headers/permission_policy_config.php';
    include 'admin/database/connection.php';
    include 'admin/database/code.php';
?>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Transparencies | Deped Manila</title>
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

        
        <!-- css -->
        <link href="admin/css/home/bootstrap1.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        
        <link href="admin/css/home/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="admin/css/home/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="admin/css/home/style.css" rel="stylesheet" type="text/css" />

        
        <!-- for tables --> 
        <!-- <link rel="stylesheet" href="css/bootstrap5.min.css"> -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
        

        <script defer src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script defer src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script defer src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js" ></script>

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
            echo '<script>document.getElementById("transparencies").classList.add("active");</script>';
        ?>
        <!-- Navbar End -->
        
        <!-- Transparency Start -->
        <section class="section bg-light" id="transparency">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h4 class="title text-uppercase mb-4">Transparencies</h4>
                            <p class="text-danger mx-auto para-desc mb-0" style="font-style: italic;"> *Please use the search field to filter the table.*</p>
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
                                            <i class="mdi mdi-email-open text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">INVITATION<br>TO BID</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="projects-completed-tab" data-toggle="pill" href="#projects-completed" role="tab" aria-controls="projects-completed" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-timetable text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">PROJECTS<br>COMPLETED</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="financial-reports-tab" data-toggle="pill" href="#financial-reports" role="tab" aria-controls="financial-reports" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-chart text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">FINANCIAL<br>REPORTS</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="transparency-board-tab" data-toggle="pill" href="#transparency-board" role="tab" aria-controls="transparency-board" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-file-pdf text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">TRANSPARENCY<br>BOARD</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->

                        </ul><!--end nav pills-->

                        <div class="tab-content mt-3" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="invitaion-bid" role="tabpanel" aria-labelledby="invitaion-bid-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">INVITATION TO BID</h4>
                                            
                                            <table id="invitation-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>Publish Date</th> 
                                                    	<th>Closing Date</th> 
                                                        <th>Procurement mode</th>
                                                        <th>No.</th>
                                                        <th>Title</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($tranparencyInvitation1)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['date'];?></td>
                                                        <td><?php echo $row['closing_date'];?></td>
                                                        <td><?php echo $row['procurement_year'];?></td>
                                                        <td><?php echo $row['reference_number'];?></td>
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
                            
                            <div class="tab-pane fade" id="projects-completed" role="tabpanel" aria-labelledby="projects-completed-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">PROJECTS COMPLETED</h4>
                                            
                                            <iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQJulImJ56sAxWatBCKbwxszAtFuPBN_i00YFYkkzVGDMQFcxbpyHYPOSMXYPNkIQ/pubhtml?widget=true&amp;headers=false" style="width:100%; height:1000px; border: 2px solid black;"></iframe>

                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->

                            <div class="tab-pane fade" id="financial-reports" role="tabpanel" aria-labelledby="financial-reports-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">FINANCIAL REPORTS</h4>
                                            
                                            <iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQwgHOs9osEa_CIt-XsfgxkGIFMfRw_6MFBFJqFojRP0m1QfmFWyj4ynquiX2ByFXMuuSBKLRP5dqVB/pubhtml?widget=true&amp;headers=false" style="width:100%; height:1000px; border: 2px solid black;"></iframe>

                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->
                            
                            
                            <div class="tab-pane fade" id="transparency-board" role="tabpanel" aria-labelledby="transparency-board-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                        <h4 class="title">TRANSPARENCY BOARD</h4>
                                            <div class="row">
                                            <div class="col-xl-12">
				                                    <div class="card">
				                                        <div class="card-body">
				            
				                                            <!-- Nav tabs -->
				                                            <ul class="nav nav-tabs" role="tablist">
				                                                <li class="nav-item">
				                                                    <a class="nav-link active" data-bs-toggle="tab" href="#home" role="tab">
				                                                        <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
				                                                        <span class="d-none d-sm-block">Transparency Board Files</span>    
				                                                    </a>
				                                                </li>
				                                                <li class="nav-item">
				                                                    <a class="nav-link" data-bs-toggle="tab" href="#profile" role="tab">
				                                                        <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
				                                                        <span class="d-none d-sm-block">Procurements</span>    
				                                                    </a>
				                                                </li>
				                                            </ul>

                                                            <!-- Tab panes -->
				                                            <!-- Transparancy Board Files Tab -->
				                                            <div class="tab-content p-3 text-muted">
				                                                <div class="tab-pane active" id="home" role="tabpanel">
				                                                    <p class="mb-0">
				                                                        <table id="transparency_board-table" class="table table-striped" style="width:100%">
							                                                <thead>
							                                                    <tr>
							                                                    	<th>ID</th>
							                                                    	<th>Title</th>
							                                                    </tr>
							                                                </thead>
							                                                <tbody>
							                                                    <?php
							                                                        while($row = mysqli_fetch_array($transparency_board1)){
							                                                    ?>
							                                                    <tr>
								                                                    <td><?php echo $row['board_id'];?></td>
							                                                        <td><a class="text-primary"href="<?php echo $row['board_link'];?>" target="_blank"><?php echo strtoupper($row['board_title']);?></a></td>
							                                                    </tr>
							
							                                                    <?php
							                                                    }
							                                                    ?>
							                                                </tbody>
							                                            </table>
				                                                    </p>
				                                                </div>
                                                                


                                                            </div>

                                                            
				                                            
				            
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>

                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div>
                            </div><!--end teb pane-->
                            
                        </div><!--end tab content-->
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Transparency End -->

        

        <!-- Seals Start -->
        <?php include 'admin/includes/home/seals.php'; ?>
        <!-- Seals End -->

        <!-- Footer Start -->
        <?php include 'admin/includes/home/footer.php'; ?>
        <!-- Footer End -->
        <!-- Scripts -->
        <?php include 'admin/includes/home/scripts.php'; ?>
        <script src="admin/js/home/bootstrap.bundle1.min.js"></script>
                
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