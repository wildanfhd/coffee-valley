<?php include('db_connection.php'); ?>

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
    $result = mysqli_fetch_array($query);

    if ($result['username'] == '') {
      $err .= "<li>Username $username does not exist</li>";
    } elseif ($result['password'] != md5($password)) {
      $err .= "<li>Password salah</li>";
    }

    if (empty($err)) {
      $_SESSION['username'] = $username;
      $_SESSION['password'] = md5($password);

      // // Mengecek apakah session
      // if ($sessionCheck == 1) {
      //   $cookie_name = "cookie_username";
      //   $cookie_value = "cookie_value";
      //   $cookie_time = time() + (60 * 60 * 24); // Menyimpan cookie selama 1 hari
      //   setcookie($cookie_name, $cookie_value, $cookie_time, "/");

      //   $cookie_name = "cookie_password";
      //   $cookie_value = md5($password);
      //   $cookie_time = time() + (60 * 60 * 24);
      //   setcookie($cookie_name, $cookie_value, $cookie_time, "/");
      //   header("location:src/dashboard.php");
      // }
    }
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="public/style.css">
  <title>Coffee Valley</title>
</head>

<body>
  <img src="" alt="">
  <h1>Coffee Valley</h1>
  <p>Taste the love in every cup!</p>
  <p>One Alewife Center 3rd Floor</p>
  <p>Cambridge, MA 02140</p>


  <form action="src/home.php" class="form" method="post" role="form">
    <div class="form-input">
      <label for="username">Username</label>
      <input type="text" name="username" id="username">

      <label for="password">Password</label>
      <input type="password" name="password" id="password">
      <input id="login-remember" type="hidden" name="session_check" value="1">
      <input type="submit" name="login" value="Login">
    </div>
  </form>
</body>


</html>