<?php

    if (isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS'] == 'on' || $_SERVER['HTTPS'] == 1) || isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') {
        $protocol = 'https://';
    } else {
        $protocol = 'http://';
    }
    $sitename = explode('/', $_SERVER['PHP_SELF']);
    array_shift($sitename);
    array_pop($sitename);
    $sitename = implode('/', $sitename);
    

    if($_SERVER['HTTP_HOST'] == 'localhost'){
        $server = 'localhost/';
    } else {
        $server = 'mova.ppg.br/resources/appod';
        $sitename = rtrim($sitename, "/");
        $sitename = '';
    }

    $header_url = $protocol.$server.$sitename;

