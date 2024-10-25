<?php include('../db_connection.php'); ?>

<?php
session_start();

$err = "";
$username = "";
$sessionCheck = "";


if (isset($_POST['login'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];
  $sessionCheck = $_POST['session_check'];

  if ($username == '' || $password == '') {
    $err .= "<li>Please enter both username and password</li>";
  } else {
    $checkUser = "SELECT * FROM login WHERE username  = '$username'";
    $query = mysqli_query($connection, $checkUser);
    $result = mysqli_fetch_array($result);

    if ($result['username'] == '') {
      $err .= "<li>Username $username does not exist</li>";
    } elseif ($result['password'] != md5($password)) {
      $err .= "<li>Password salah</li>";
    }

    if (empty($err)) {
      $_SESSION['username'] = $username;
      $_SESSION['password'] = md5($password);

      // Mengecek apakah session
      if ($sessionCheck == 1) {
        $cookie_name = "cookie_username";
        $cookie_value = "cookie_value";
        $cookie_time = time() + (60 * 60 * 24); // Menyimpan cookie selama 1 hari
        setcookie($cookie_name, $cookie_value, $cookie_time, "/index.php");

        $cookie_name = "cookie_password";
        $cookie_value = md5($password);
        $cookie_time = time() + (60 * 60 * 24);
        setcookie($cookie_name, $cookie_value, $cookie_time, "/index.php");
        header("location:dashboard.php");
      }
    }
  }
}

?>
