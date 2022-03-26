<?php

include('inc/database.php');
$func = $_POST['func'];

function status_switch_action(){
  $id = $_POST['id'];
  $conn	= db();

  $query = $conn->prepare(" SELECT status FROM episode WHERE id = '$id' ");
  $query->execute();
  $fetch = $query->fetchColumn();

  if($fetch == '0'){
    $switch = '1';
  } elseif($fetch == '1'){
    $switch = '0';
  }

  $query = $conn->prepare(" UPDATE episode SET status = '$switch' WHERE id = '$id' ");
  $query->execute();


  echo $switch;

}

if($func == 'status_switch'){
  status_switch_action();
}

 ?>
