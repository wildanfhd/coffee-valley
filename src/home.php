<?php include('../db_connection.php'); ?>

<?php
session_start();

$query = "SELECT * FROM beans";
$result = mysqli_query($connection, $query);
if ($result->num_rows > 0) {
  $row = $result->fetch_assoc();
} else {
  echo "0 results";
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../public/style.css">
  <title>Home</title>
</head>

<body>
  <?php include_once('../template/header.php'); ?>
  <?php include_once('../template/navbar.php'); ?>



  <div class="container">
    <p><strong>Bean of The Day</strong></p>
    <p><?php echo $row['name'] ?></p>
    <p><strong>Sale Price</strong></p>
    <p><?php echo $row['price'] ?></p>
    <p><strong>Description</strong></p>
    <p><?php echo $row['description'] ?></p>
  </div>

  <footer><?php date_default_timezone_set("Asia/Jakarta");
          echo date('F j, Y'); ?></footer>
</body>

</html>