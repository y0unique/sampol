<?php 
    // include 'admin/headers/permission_policy_config.php';
    include 'admin/database/home/connection.php';
    include 'admin/database/home/code.php';
?>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Home | Deped Manila</title>
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
        <!-- FACEBOOK SDK code -->
	    <script>
	      window.fbAsyncInit = function() {
	        FB.init({
	          xfbml            : true,
	          version          : 'v18.0'
	        });
	      };
	
	      (function(d, s, id) {
	        var js, fjs = d.getElementsByTagName(s)[0];
	        if (d.getElementById(id)) return;
	        js = d.createElement(s); js.id = id;
	        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
	        fjs.parentNode.insertBefore(js, fjs);
	      }(document, 'script', 'facebook-jssdk'));
	    </script>
    </head>

    <!-- preloader -->
    <?php include 'admin/includes/home/preloader.php'; ?>
    <body>
        <!-- Navbar Start -->
        <?php 
            include 'admin/includes/home/navbar.php'; 
            echo '<script>document.getElementById("index").classList.add("active");</script>';
        ?>
        <!-- Navbar End -->
        
        <!-- Carousel Start -->
        <?php include 'admin/includes/home/carousel.php'; ?>
        <!-- Carousel End -->

        <!-- Issuances Start -->
        <section class="section" id="LatestIssuances">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h4 class="title text-uppercase mb-4">RECENT ISSUANCES</h4>
                            <p class="text-danger">For more issuances click <a href="issuances" target="_blank" class="text-primary">here</a></p>
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
                                    "division-advisories" => array("mdi-note", "DIVISION ADVISORIES"),
                                    "division-circulars" => array("mdi-email", "DIVISION CIRCULARS"),
                                    "office-memorandum" => array("mdi-file-multiple", "OFFICE ORDER"),
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
                                    echo '<table id="' . $tabId . '-tableindex" class="table table-striped" style="width:100%">';
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

        <!-- Services Start -->
        <section class="section bg-light" id="services">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h4 class="title text-uppercase mb-4"><a class="text-muted" href="https://sites.google.com/depedmanila.net/onlineservicesportal/home" target="_blank">Online Services</a></h4>
                            <p class="text-muted mx-auto para-desc mb-0">Services we offer online</p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row">
                    <div class="col-lg-6 col-md-6 mt-5 pt-4">
                        <div class="services border pt-5 p-4 rounded bg-white">
                            <div class="icon position-relative border rounded bg-white mb-4">
                                <i class="mdi mdi-book-open-variant"></i>
                            </div>
                            <div class="content">
                                <h4 class="title mb-3">SEND US YOUR FEEDBACK</h4>
                                <p class="text-muted">Click the "Click Here" to be redirected to the link</p>
                                <a href="https://docs.google.com/forms/d/e/1FAIpQLScp81_6TY8Bbgj6AShy33Vc0NLpvRaEc6YHFfpDC8qov4oPPw/viewform?fbclid=IwAR26DFy2TFXLzGvAa_csNJRnaZZhgcdPRiA15L7-YVHkfdEj0Xd6Kj-ijXI" target="_blank" class="text-custom">Click here<i class="mdi mdi-chevron-right"></i> </a>
                            </div>
                        </div>
                    </div><!--end col-->

                    <div class="col-lg-6 col-md-6 mt-5 pt-4">
                        <div class="services border pt-5 p-4 rounded bg-white">
                            <div class="icon position-relative border rounded bg-white mb-4">
                                <i class="mdi mdi-book-open-page-variant"></i>
                            </div>
                            <div class="content">
                                <h4 class="title mb-3">DEPED MANILA E-LIBRARY</h4>
                                <p class="text-muted">Click the "Click Here" to be redirected to the link</p>
                                <a href="https://sites.google.com/depedmanila.net/depedmanila-e-library?fbclid=IwAR1Xl7lOouFN-_pZjzG2LGJoRivq0PlJW85SWpX9OCDF9u5t7n8iy_CVBa4" target="_blank" class="text-custom">Click here<i class="mdi mdi-chevron-right"></i> </a>
                            </div>
                        </div>
                    </div><!--end col-->
                    
                    <div class="col-lg-6 col-md-6 mt-5 pt-4">
                        <div class="services border pt-5 p-4 rounded bg-white">
                            <div class="icon position-relative border rounded bg-white mb-4">
                                <i class="mdi mdi-google"></i>
                            </div>
                            <div class="content">
                                <h4 class="title mb-3">CLIENT SATISFACTORY SURVEY</h4>
                                <p class="text-muted">Click the "Click Here" to be redirected to the link</p>
                                <a href="https://docs.google.com/forms/d/e/1FAIpQLScBxijSldifsao8d8tlnbThfIokvNtKJWpRO1upKcwc4xpFRw/viewform?fbclid=IwAR3l1de7NsOIe_exJbmFe8AVZop6NqfX4fwUFKENnbuk-gnLW9V7HByQmWw" target="_blank" class="text-custom">Click here<i class="mdi mdi-chevron-right"></i> </a>
                            </div>
                        </div>
                    </div><!--end col-->
                    
                    <div class="col-lg-6 col-md-6 mt-5 pt-4">
                        <div class="services border pt-5 p-4 rounded bg-white">
                            <div class="icon position-relative border rounded bg-white mb-4">
                                <i class="mdi mdi-gmail"></i>
                            </div>
                            <div class="content">
                                <h4 class="title mb-3">RESET DEPED EMAIL</h4>
                                <p class="text-muted">Click the "Click Here" to be redirected to the link</p>
                                <a href="https://forms.gle/hmdzvWR5g29WQiEx8" target="_blank" class="text-custom">Click here<i class="mdi mdi-chevron-right"></i> </a>
                            </div>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Services End -->
        
        <!-- Video Start -->
        <section class="section" id="youtube"> 
            <div class="container">
                <div class="row justify-content-center text-center">
                    <div class="col-10">           
                        <div class="section-title">
                            <h4 class="title text-uppercase text-dark mb-4">2023 MANILA RESEARCH CONGRESS</h4>
                            <p class="text-white-50 mx-auto para-desc mb-0"><a class="text-custom" href="https://www.youtube.com/@depedmanilaYT/featured" target="_blank">@depedmanilaYT</a></p>
                        </div>
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/rt0Uss9GLlc?si=w9eLVsesp5kJneOY" allowfullscreen></iframe>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Video End -->

        <!-- Facebook News Start -->
        <section class="section bg-light" id="facebookPosts">

            <?php while($row = mysqli_fetch_array($facebook1)){ ?>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h4 class="title text-uppercase mb-4">Facebook News</h4>
                            <p class="text-muted mx-auto para-desc mb-0">Be updated with news regarding DepEd Manila with our<a class="text-primary" href="<?php echo ($row['link']);?>" target="_blank"> facebook page</a></p>
                        </div>
                    </div><!--end col-->
                </div><!--end row-->

                <div class="row">
    
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <div class="blog-post rounded bg-light">
                            
                            <div class="fb-post" data-href="<?php  echo ($row['post']);?>" data-width="350" data-show-text="true">
                            </div>

                            <div class="content pt-4 pb-4 p-3">
                                <a href="<?php  echo ($row['link']);?>" target="_blank"><h6 class="tag text-primary font-weight-normal">Department of Education - Division of City Schools, Manila</h6></a> 
                                <a href="<?php  echo ($row['post']);?>" target="_blank" class="text-dark">Read More <i class="mdi mdi-chevron-right"></i></a>
                                <hr>
                            </div><!--end content-->

                            
                        </div><!--end blog post-->
                        <?php } ?>
                    </div><!--end col-->
                    
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- Facebook News End -->

        

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