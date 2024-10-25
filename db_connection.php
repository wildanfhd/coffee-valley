<?php

define("HOSTNAME", "localhost");
define("USERNAME", "root");
define("PASSWORD", "1234");
define("DATABASE", "coffee_valley");

// Connect to Database
$connection = mysqli_connect(HOSTNAME, USERNAME, PASSWORD, DATABASE);

if (!$connection) {
  die("Koneksi Gagal : " . mysqli_connect_error());
} else {
  // echo "Connected Successfully";
}
