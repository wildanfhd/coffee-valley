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
  <title>Catalogue</title>
</head>

<body>
  <?php include_once('../template/header.php'); ?>
  <?php include_once('../template/navbar.php'); ?>

  <table>
    <tr>
      <th>Bean</th>
      <th>Description</th>
      <th>Price/Unit</th>
    </tr>
    <?php while ($data = $result->fetch_assoc()) { ?>
      <tr>
        <td><?php echo $data['name'] ?></td>
        <td><?php echo $data['description'] ?></td>
        <td><?php echo "$" . $data['price'] ?></td>
      </tr>
    <?php } ?>
  </table>

</body>

</html>