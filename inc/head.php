<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="Appod" />
    <meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="content-language" content="en-us" />
    <meta name="description" content="Appod" />
    <meta name="DC.description" content="Appod Podcast Player." />
    <meta name="keywords" content="Appod, podcast, player" />
    <meta name="DC.subject" content="Appod, podcast, player" />
    <meta name="robots" content="all" />
    <meta name="rating" content="general" />
    <meta name="DC.title" content="Appod" />
    <meta name="theme-color" content="#000000"/>

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

    <?php
    $protocol = strtolower(substr($_SERVER["SERVER_PROTOCOL"],0,5))=='https'?'https':'http';
    $sitename = explode('/', $_SERVER['PHP_SELF']);
    array_shift($sitename);
    array_pop($sitename);
    $sitename = implode('/', $sitename);
    $header_url = $protocol.'://'.$_SERVER['HTTP_HOST'].'/'.$sitename;
    ?>
    <link rel="canonical" href="<?=$header_url?>"/>

    <link rel="apple-touch-icon" sizes="16x16" href="inc/favicon.ico">
    <link rel="icon" type="image/png" sizes="96x96" href="inc/favicon-96x96.png">


    <title>appod</title>

</head>

<?php
  if(isset($_COOKIE['login'])) {
    $user_id = $_COOKIE['login'];
  }
?>
