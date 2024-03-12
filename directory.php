<?php 
    // include 'admin/headers/permission_policy_config.php';
    include 'home/database/connection.php';
    include 'home/database/code.php';
?>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Directory of Schools | Deped Manila</title>
        <meta name="viewport"    content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Department of Education Manila" />
        <meta name="keywords"    content="DepEd, Manila, Schools Division, Division of City Schools, Website of DepEd Manila, Official Website" />
        <meta name="author"      content="zeraphm"  />
        <!-- favicon -->
        <link rel="shortcut icon" href="home/images/logo/favicon.ico">
        <!-- Magnific -->
        <link href="home/css/magnific-popup.css" rel="stylesheet" type="text/css" />
        <!-- css -->
        <link href="home/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="home/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="home/css/style.css" rel="stylesheet" type="text/css" />
        <!-- Slider -->        
        <link rel="stylesheet" href="home/css/slick-theme.css"/>
        <link rel="stylesheet" href="home/css/slick.css"/>

        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">

        <script defer src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script defer src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
        <script defer src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js" ></script>

        <script defer src="home/js/script.js"></script>

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

    <?php include 'home/includes/preloader.php'; ?>
    <body>
        <!-- Navbar Start -->
        <?php 
            include 'home/includes/navbar.php'; 
            echo '<script>document.getElementById("aboutus").classList.add("active");</script>';
        ?>
        <!-- Navbar End -->
        
        <!-- Directory of Schools Start -->
        <section class="section bg-light" id="directory">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a class="text-custom" href="index.php">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">About Us</li>
                        <li class="breadcrumb-item active" aria-current="page">Directory</li>
                    </ol>
                </nav>

                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h4 class="title text-uppercase mb-4">Directory of Schools</h4>
                            <p class="text-danger mx-auto para-desc mb-0" style="font-style: italic;"> *To look for a school, please use the search field to filter the table.*</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
                
                <div class="row mt-4">
                    <div class="col-12">
                        <ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link active" id="elementary-school-tab" data-toggle="pill" href="#elementary-school" role="tab" aria-controls="elementary-school" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-bus-school text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">ELEMENTARY<br>SCHOOL</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="junior-high-school-tab" data-toggle="pill" href="#junior-high-school" role="tab" aria-controls="junior-high-school" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-school text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">JUNIOR HIGH<br>SCHOOL</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="senior-high-school-tab" data-toggle="pill" href="#senior-high-school" role="tab" aria-controls="senior-high-school" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-school text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">SENIOR HIGH<br>SCHOOL</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                            <li class="nav-item mb-4 pt-2">
                                <a class="nav-link" id="special-education-tab" data-toggle="pill" href="#special-education" role="tab" aria-controls="special-education" aria-selected="false">
                                    <div class="capabilities text-center rounded pt-2 pb-2">
                                        <div class="icon bg-custom mb-3">
                                            <i class="mdi mdi-school text-white"></i>
                                        </div>
                                        <h4 class="title font-weight-normal mb-0">SPECIAL EDUCATION<br>CENTERS</h4>
                                    </div>
                                </a><!--end nav link-->
                            </li><!--end nav item-->
                            
                        </ul><!--end nav pills-->

                        <div class="tab-content mt-3" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="elementary-school" role="tabpanel" aria-labelledby="elementary-school-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">ELEMENTARY SCHOOL</h4>
                                            
                                            <table id="elementary-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                    <th>District</th>
                                                    <th>School ID</th>
                                                    <th>School</th>
                                                    <th>School Address</th>
                                                    <th>Principal</th>
                                                    <th>Contact #</th>
                                                    <th>Email</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($elem1)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['district'];?></td>
                                                        <td><?php echo $row['id'];?></td>
                                                        <td><?php echo $row['name'];?></td>
                                                        <td><?php echo $row['address'];?></td>
                                                        <td><?php echo $row['principal'];?></td>
                                                        <td><?php echo $row['contact'];?></td>
                                                        <td><?php echo $row['email'];?></td>
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
                            
                            <div class="tab-pane fade" id="junior-high-school" role="tabpanel" aria-labelledby="junior-high-school-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">JUNIOR HIGH SCHOOL</h4>
                                            
                                            <table id="junior-highschool-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                    <th>District</th>
                                                    <th>School ID</th>
                                                    <th>School</th>
                                                    <th>School Address</th>
                                                    <th>Principal</th>
                                                    <th>Contact #</th>
                                                    <th>Email</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($jhs1)){
                                                    ?>
                                                    <tr>
                                                    <td>
                                                        <?php echo $row['district'];?></td>
                                                        <td><?php echo $row['id'];?></td>
                                                        <td><?php echo $row['name'];?></td>
                                                        <td><?php echo $row['address'];?></td>
                                                        <td><?php echo $row['principal'];?></td>
                                                        <td><?php echo $row['contact'];?></td>
                                                        <td><?php echo $row['email'];?></td>
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
                            
                            <div class="tab-pane fade" id="senior-high-school" role="tabpanel" aria-labelledby="senior-high-school-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">SENIOR HIGH SCHOOL</h4>
                                            
                                            <table id="senior-highschool-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                    <th>District</th>
                                                    <th>School ID</th>
                                                    <th>School</th>
                                                    <th>School Address</th>
                                                    <th>Principal</th>
                                                    <th>Contact #</th>
                                                    <th>Email</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($shs1)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['district'];?></td>
                                                        <td><?php echo $row['id'];?></td>
                                                        <td><?php echo $row['name'];?></td>
                                                        <td><?php echo $row['address'];?></td>
                                                        <td><?php echo $row['principal'];?></td>
                                                        <td><?php echo $row['contact'];?></td>
                                                        <td><?php echo $row['email'];?></td>
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
                            
                            <div class="tab-pane fade" id="special-education" role="tabpanel" aria-labelledby="special-education-tab">
                                <div class="capabilities-content border rounded p-4">
                                    <div class="row align-items-center">
                                        <div class="col-md-12">
                                            <h4 class="title">SPECIAL EDUCATION CENTER</h4>
                                            
                                            <table id="special-education-table" class="table table-striped" style="width:100%">
                                                <thead>
                                                    <tr>
                                                    <th>District</th>
                                                    <th>School ID</th>
                                                    <th>School</th>
                                                    <th>School Address</th>
                                                    <th>Principal</th>
                                                    <th>Contact #</th>
                                                    <th>Tracks Offered</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        while($row = mysqli_fetch_array($sped1)){
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row['district'];?></td>
                                                        <td><?php echo $row['id'];?></td>
                                                        <td><?php echo $row['name'];?></td>
                                                        <td><?php echo $row['address'];?></td>
                                                        <td><?php echo $row['principal'];?></td>
                                                        <td><?php echo $row['contact'];?></td>
                                                        <td><?php echo $row['email'];?></td>
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
        <!-- Directory of Schools End -->

        <!-- Directory of Schools Start -->
        
        <!-- Directory of Schools End -->

        

        <!-- Seals Start -->
        <?php include 'home/includes/seals.php'; ?>
        <!-- Seals End -->

        <!-- Footer Start -->
        <?php include 'home/includes/footer.php'; ?>
        <!-- Footer End -->
        <!-- Scripts -->
        <?php include 'home/includes/scripts.php'; ?>

                
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
    table{ 
        /* width: 100% !important; */
        /* table-layout: fixed; */
    }
</style>