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
  <title>Document</title>
</head>

<body>
  <?php include_once('../template/header.php'); ?>


  <div>
    <p>Bean of The Day</p>
    <p><?php echo $row['name'] ?></p>
    <p>Sale Price</p>
    <p><?php echo $row['price'] ?></p>
    <p>Description</p>
    <p><?php echo $row['description'] ?></p>
  </div>

  <footer><?php date_default_timezone_set("Asia/Jakarta");
          echo date('Y-m-d'); ?></footer>
</body>

</html>