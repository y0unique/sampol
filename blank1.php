<?php 
    // include 'admin/headers/permission_policy_config.php';
    include 'admin/database/home/connection.php';
    include 'admin/database/home/code.php';
?>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Blank | Deped Manila</title>
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
        <!-- <link href="admin/css/home/404.css" rel="stylesheet" type="text/css" /> -->
        <link href="admin/css/home/style.css" rel="stylesheet" type="text/css" />

        <!-- Custom fonts for this template-->
        <link href="admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Slider -->        
        <link rel="stylesheet" href="admin/css/home/slick-theme.css"/>
        <link rel="stylesheet" href="admin/css/home/slick.css"/>
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

    <?php //include 'admin/includes/home/preloader.php'; ?>
    <body>
        <!-- Navbar Start -->
        <?php 
            include 'admin/includes/home/navbar.php'; 
            echo '<script>document.getElementById("index").classList.add("active");</script>';
        ?>
        <!-- Navbar End -->
        
        <!-- 404 Start -->
        <section class="section" id="404">
        <div id="wrapper">

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">
                        <!-- Begin Page Content -->
                        <div class="container-fluid">

                            <!-- 404 Error Text -->
                            <div class="text-center">
                                <div class="error404 mx-auto" data-text="404">404</div>
                                <p class="lead text-gray-800 mb-5">Page Not Found</p>
                                <p class="text-gray-500 mb-0">It looks like you found a glitch in the matrix...</p>
                                <a href="index">&larr; Back to Dashboard</a>
                            </div>
                        </div>
                        <!-- /.container-fluid -->
                    </div>
                    <!-- End of Main Content -->

                    

                </div>
                <!-- End of Content Wrapper -->

                </div>
        </section><!--end section-->
        <!-- 404 End -->

        

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