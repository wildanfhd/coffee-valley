<?php include('../db_connection.php'); ?>


<?php
session_start();

$query = "SELECT * FROM distributor";
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
  <title>Distributor</title>
</head>

<body>
  <?php include_once('../template/header.php'); ?>
  <?php include_once('../template/navbar.php'); ?>

  <table>
    <tr>
      <th>Distributor Name</th>
      <th>City</th>
      <th></th>
    </tr>
    <?php while ($data = $result->fetch_assoc()) { ?>
      <tr>
        <td><?php echo $data['distributor_name'] ?></td>
        <td><?php echo $data['city'] ?></td>
        <td><a href="" style="text-decoration: none;" id="<?= $data['id'] ?>">[Edit]</a></td>
      </tr>
    <?php } ?>
  </table>

  <a href="form_distributor.php">[Add]</a>
</body>

</html>