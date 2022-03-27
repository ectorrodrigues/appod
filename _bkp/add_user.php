<?php

$user = $_POST['user'];
$password = $_POST['password'];
$action = $_POST['action_send'];

include('inc/database.php');

$conn	= db();

$key_sk = random_bytes(32);
$key_siv = random_bytes(32);
$key_sk = base64_encode($key_sk);
$key_siv = base64_encode($key_siv);
$key_sk    = hash("sha256", $key_sk);
$key_siv   = substr(hash("sha256", $key_siv), 0, 16);

function encrypting($action, $string, $key_sk, $key_siv){
  $cypher_method = "AES-256-CBC";
  $output = false;

  if ($action == "encrypt"){
    $key    = $key_sk;
    $iv     = $key_siv;
    $output = openssl_encrypt($string, $cypher_method, $key, 0, $iv);
    $output = base64_encode($output);
  } else if($action == "decrypt"){
    $key    = $key_sk;
    $iv     = $key_siv;
    $output = base64_decode($string);
    $output = openssl_decrypt($output, $cypher_method, $key, 0, $iv);
  }
  return $output;
} //endfunction

if ($action == 'login') {

    // CHECK IF THE USER EXISTS AND IF SO, GET HIS HASHED PASSWORD

    $query	= $conn->prepare("SELECT password FROM user WHERE title = :user");
    $query->bindParam(':user', $user);
    $query->execute();
    if ($query->rowCount() > 0){
      $passfetch = $query->fetchColumn();
    } else {
      echo 'user not found.';
      die();
    }


    // ENCRYPT PASSWORD AND CHECK IF IT MATCHES THE HASHED PASSWORD STORED ON DATABASE
    foreach($conn->query("SELECT * FROM user WHERE title = '$user' ") as $row) {
      $tag		    = $row['key_tag'];
      $iv         = $row['key_iv'];
    }

    $crypted_password = encrypting("encrypt", $password, $iv, $tag);
    if($passfetch == $crypted_password){
      $password = $passfetch;
    } else {
      $password = 'wrongpass';
    }


    // CHECK IF THERE'S AN USER ATTACHED WITH THE HASHED PASSWORD
    $conn		= db();
    $query	= $conn->prepare("SELECT password FROM user WHERE title = :user AND password = :pass");
    $query->bindParam(':user', $user);
    $query->bindParam(':pass', $password);
    $query->execute();
    /*--------- IF USER AND PASS EXISTS GO TO THE ADMIN ----------*/
    if ($query->rowCount() > 0){
      $keypass = $query->fetchColumn();
      $query 	= $conn->prepare("SELECT id FROM user WHERE title = :user AND password = :pass");
      $query->bindParam(':user', $user);
      $query->bindParam(':pass', $password);
      $query->execute();
      $user_id = $query->fetchColumn();

      $cookie_name = "login";
      $cookie_value = $user_id;
      setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day

      echo "you're in.";


    } else {
      echo "wrong, try again.";
    }
    /*--------- IF USER AND PASS EXISTS GO TO THE ADMIN - END ----------*/





} else if ($action == 'newuser') {


  $query	= $conn->prepare("SELECT id FROM user WHERE title = '$user'");
  $query->execute();
  //$id_podcast_fetch = $query->fetchColumn();

  if($query->rowCount() > 0){
    echo 'user already exists, try again.';
  } else {

    $key_sk = random_bytes(32);
    $key_siv = random_bytes(32);
    $key_sk = base64_encode($key_sk);
    $key_siv = base64_encode($key_siv);
    $key_sk    = hash("sha256", $key_sk);
    $key_siv   = substr(hash("sha256", $key_siv), 0, 16);


    $crypted_password = encrypting("encrypt", $password, $key_sk, $key_siv);

    $created = date("Y-m-d");


    $query	= $conn->prepare("INSERT INTO user (title, password, keypass, key_iv, key_tag, created_at, active) VALUES ('$user', '$crypted_password', '$crypted_password', '$key_sk', '$key_siv', '$created', '1') ");
    $query->execute();

    $query	= $conn->prepare("SELECT id FROM user ORDER BY id DESC LIMIT 0,1");
    $query->execute();
    $id_user_fetch = $query->fetchColumn();

    $cookie_name = "login";
    $cookie_value = $id_user_fetch;
    setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day

    echo "you're in.";


  }

} else {
    //no button pressed
}


?>
