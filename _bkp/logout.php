<?php

session_destroy();
session_unset();
setcookie("login", "", time() - 3600);
unset($_COOKIE['login']);
setcookie('login', null, -1, '/');
header("Location:http://localhost:8888/appod/");
?>
