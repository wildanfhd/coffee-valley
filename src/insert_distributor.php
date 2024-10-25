<?php include('../db_connection.php'); ?>

<?php


if (isset($_POST['add_distributor'])) {
  // Mengambil inputan
  $distributor_name = $_REQUEST['distributor_name'];
  $city = $_REQUEST['city'];
  $region = $_REQUEST['region'];
  $country = $_REQUEST['country'];
  $phone = $_REQUEST['phone'];
  $email = $_REQUEST['email'];
}

$query = "INSERT INTO distributor(distributor_name, city, region, country, phone, email) VALUES('$distributor_name', '$city', '$region', '$country', '$phone', '$email')";
$result = mysqli_query($connection, $query);

if ($result) {
  // echo "Records added successfully.";
  header("location: form_distributor.php");
  exit(); // use exit. It's a good practice
} else {
  echo "ERROR: Could not able to execute $sql. " . mysqli_error($connection);
}

// close connection
mysqli_close($connection);
?>