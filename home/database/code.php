<?php
    // index.php
    //selecting active carousel images
    $carousel = "SELECT * FROM carouselvw WHERE type = 'carousel' AND status = 'active' ORDER BY id DESC";
    $carousel1 = mysqli_query($con , $carousel);
?>