<?php
// Enable Permissions-Policy header
header("Permissions-Policy: ");

header("Permissions-Policy: geolocation=(self 'https://trusted-geolocation.com'), camera=(), microphone=()");
?>
