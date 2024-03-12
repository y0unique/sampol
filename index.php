<?php 
    // include 'admin/headers/permission_policy_config.php';
    include 'home/database/connection.php';
    include 'home/database/code.php';
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
            echo '<script>document.getElementById("index").classList.add("active");</script>';
        ?>
        <!-- Navbar End -->
        
        <!-- Carousel Start -->
        <?php include 'home/includes/carousel.php'; ?>
        <!-- Carousel End -->

        

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