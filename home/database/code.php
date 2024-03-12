<?php
    // index.php
    //selecting active carousel images
    $carousel = "SELECT * FROM carouselvw WHERE type = 'carousel' AND status = 'active' ORDER BY id DESC";
    $carousel1 = mysqli_query($con , $carousel);

    $elem = "SELECT * FROM elemschoolsvw";
    $elem1 = mysqli_query($con, $elem);

    $jhs = "SELECT * FROM jhsschoolsvw";
    $jhs1 = mysqli_query($con, $jhs);
    
    $shs = "SELECT * FROM shsschoolsvw";
    $shs1 = mysqli_query($con, $shs);
    
    $sped = "SELECT * FROM spedschoolsvw";
    $sped1 = mysqli_query($con, $sped);
?>