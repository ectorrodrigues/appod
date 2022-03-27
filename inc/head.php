<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="Appod" />
    <meta http-equiv="cache-control" content="Public, max-age=31536000">
    <meta http-equiv="Pragma" content="Public">
    <meta http-equiv="content-language" content="en-us" />
    <meta name="description" content="Appod" />
    <meta name="DC.description" content="Appod Podcast Player." />
    <meta name="keywords" content="Appod, podcast, player" />
    <meta name="DC.subject" content="Appod, podcast, player" />
    <meta name="robots" content="all" />
    <meta name="rating" content="general" />
    <meta name="DC.title" content="Appod" />
    <meta name="theme-color" content="#000000"/>
    <meta name="viewport" content="width=640, initial-scale=1.0, maximum-scale=5" />

    <!-- Jquery and Ajax Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- Personal Styling -->
    <link rel="stylesheet" href="inc/style.css">
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:300,400,400i,700,900&display=swap" rel="stylesheet">

    <!-- Fontawesome -->
    <script src="https://kit.fontawesome.com/4b4ca867c1.js" crossorigin="anonymous"></script>
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">-->


    <link rel="canonical" href="http://localhost:8888/apod"/>


    <title>Appod</title>

</head>

<?php
  if(isset($_COOKIE['login'])) {
    $user_id = $_COOKIE['login'];
  }
?>
