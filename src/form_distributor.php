<?php include('../db_connection.php'); ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../public/style.css">
  <title>Add Distributor</title>
</head>

<body>
  <?php include_once('../template/header.php'); ?>
  <?php include_once('../template/navbar.php'); ?>


  <form action="insert_distributor.php" method="post">
    <label for="distributor">Distributor Name</label>
    <input type="text" id="distributor" name="distributor_name" placeholder="Enter">
    <label for="city">City Name</label>
    <input type="text" id="city" name="city" placeholder="Enter">
    <label for="region">State/Region</label>
    <input type="text" id="region" name="region" placeholder="Enter">
    <label for="country">Country Name</label>
    <input type="text" id="country" name="country" placeholder="Enter">
    <label for="phone">Phone</label>
    <input type="text" id="phone" name="phone" placeholder="Enter">
    <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="Enter">

    <input type="submit" name="add_distributor" value="Add">
  </form>

</body>

</html>