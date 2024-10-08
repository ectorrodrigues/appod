<?php include('inc/head.php'); ?>

<body>

<?php

  include('inc/database.php');

  function podcasts_menu(){

    if(isset($_COOKIE['login'])) {
      $id_user = $_COOKIE['login'];
    } else {
      $id_user = '10000000000';
    }

    $conn	= db();

    foreach($conn->query(" SELECT * FROM podcast WHERE id_user = '$id_user' ORDER BY title ") as $row) {
      $id = $row['id'];
      $title = $row['title'];
      $id_publisher = $row['id_publisher'];

      $query	= $conn->prepare(" SELECT * FROM episode WHERE id_podcast = '$id' AND status = '0' AND id_user = '$id_user' ");
      $query->execute();
      $rowcount = $query->rowCount();

      if($rowcount == 0){
        $bg_flag = '#111114';
      } else {
        $bg_flag = '#FF335E';
      }

      echo '
      <div class="podcasts_menu_items row '.$id.'" onClick="list_episodes(\''.$id.'\', \''.$id_publisher.'\', \''.$id_user.'\', \'15\')">
        <div class="col-lg-10 col-10">
          '.$title.'
        </div>
        <div class="col-lg-2 col-2">
          <div class="flag-to-listen podcast_flag_'.$id.'" style="background-color:'.$bg_flag.';">
            '.$rowcount.'
          </div>
        </div>
      </div>';
    }

    echo '
    <div class="row justify-content-center">
    <div class="text-center my-3 see-feed cursor-pointer" style="display:none;" onclick="seefeed()">
      <i class="fa-solid fa-rss"></i>  See all feed
    </div>
  </div>
    ';
    $conn	= NULL;
  }

  ?>

  <div class="loading" style="display:none;">
    <i class="fa fa-spinner red-text" aria-hidden="true"></i>
  </div>

  <div class="fullscreen" style="display:none;" >
    <div class="row justify-content-start">
      <div class="col-12 text-left">
        <div class="row justify-content-end mb-3">
          <i class="fa fa-times-circle-o red-text text-right cursor-pointer transition" aria-hidden="true" onclick="closelist()"></i>
        </div>
        <div class="row justify-content-start">
          <?php
            $conn	= db();

            foreach($conn->query("SELECT * FROM publisher WHERE id != '7' ORDER BY title ASC") as $row) {
              $id_publisher = $row['id'];
              $title_publisher = $row['title'];

              echo '<div class="col-lg-4 col-12 pl-5 pr-0 pr-lg-5 pb-3">
                      <div class="publisher_title">'.$title_publisher.'</div>';

              foreach($conn->query("SELECT * FROM podcast WHERE id_publisher = '$id_publisher' AND id_user = '0'  ORDER BY title ASC ") as $row) {
                $id_podcast = $row['id'];
                $title_podcast = $row['title'];
                echo '
                <form action="model.php" method="post" enctype="multipart/form-data" class="podcasts-list">
                  <select class="podcasts_select col-10" name="podcasts_select">
                    <option value="'.$id_podcast.'-'.$id_publisher.'-1">'.$title_podcast.'</option>
                  </select>
                  <input type="hidden" name="func" value="add_podcast">
                  <input type="hidden" name="user_id" value="'.$user_id.'">
                  <input type="submit" class="button transition" name="submit" value="+">
                </form>
                ';
              }

              echo '</div>';
            }

            foreach($conn->query("SELECT * FROM publisher WHERE id = '7' ORDER BY title ASC") as $row) {
              $id_publisher = $row['id'];
              $title_publisher = $row['title'];

              echo '<div class="col-lg-4 col-12 p-5">
                      <div class="publisher_title">'.$title_publisher.'</div>';

              foreach($conn->query("SELECT * FROM podcast WHERE id_publisher = '$id_publisher' AND id_user = '0'  ORDER BY title ASC ") as $row) {
                $id_podcast = $row['id'];
                $title_podcast = $row['title'];
                echo '
                <form action="model.php" method="post" enctype="multipart/form-data" class="podcasts-list">
                  <select class="podcasts_select col-10" name="podcasts_select">
                    <option value="'.$id_podcast.'-'.$id_publisher.'-'.$user_id.'">'.$title_podcast.'</option>
                  </select>
                  <input type="hidden" name="func" value="add_podcast">
                  <input type="hidden" name="user_id" value="'.$user_id.'">
                  <input type="submit" class="button transition" name="submit" value="+">
                </form>
                ';
              }

              echo '</div>';
            }
            $conn	= NULL;
          ?>
        </div>
      </div>

    </div>
  </div>

  <div class="container-fluid">

    <div class="row p-3 bottom-line flex nav-top">

      <div class="col-lg-4 col-12 text-lg-left text-center order-1 my-lg-auto my-5 logo">
        <img src="inc/logo.svg" alt="logo" class="col-lg-3 col-12 text-start" width="120" height="38">
      </div>

      <div class="col-lg-6 col-12 text-lg-left text-left order-2 mt-lg-0 mt-0 podcasts_select_form">
        <!--
        <form action="model.php" method="post" enctype="multipart/form-data" class="d-inline podcasts_select_form">
          <?php
          /*
            $conn	= db();
            echo '<label for="podcasts_select">Choose:</label><select class="podcasts_select col-6" name="podcasts_select">';
            echo '<option value="">Choose a podcast to add</option>';
            foreach($conn->query("SELECT * FROM podcast WHERE id_user = '0' ORDER BY title ASC ") as $row) {
              $id = $row['id'];
              $title = $row['title'];
              $id_publisher = $row['id_publisher'];
              echo '<option value="'.$id.'-'.$id_publisher.'-1">'.$title.'</option>';
            }
            echo '</select>';
            $conn	= NULL;
            */
          ?>
          <input type="hidden" name="func" value="add_podcast">
          <input type="hidden" name="user_id" value="<?php // echo $user_id; ?>">
          <input type="submit" class="button transition" name="submit" value="+ add">
        </form>
          -->

        <div class="d-inline-block ml-0 ml-lg-0 cursor-pointer openlist transition" onclick="openlist()">
          <i class="fa fa-bars mr-1" aria-hidden="true"></i>  See All
        </div>
        <div class="d-inline-block ml-4 cursor-pointer openlist transition color666" onclick="update_episodes(<?= $user_id ?>)">
          <i class="fa fa-refresh" aria-hidden="true"></i>
        </div>

      </div>

      <div class="col-lg-6 col-12 text-lg-right text-center mt-lg-0 mt-2 order-3" >
        <span class="login-form" style="display:none;">
          <span class="col-lg-3 col-12 message red-text mr-lg-2 mr-12"></span>
          <input type="text" name="user" class="mr-lg-2 mr-0 d-inline-block col-lg-3 col-12" placeholder="user" id="user" value="">
          <input type="password" name="password" class="mr-lg-2 mr-0 d-inline-block col-lg-3 col-12 mb-lg-0 mb-4 mt-lg-0 mt-3 " placeholder="password" id="password" value="">
          <input type="submit" class="button transition d-inline-block mr-2 btnlogin mb-lg-0 mb-4" name="login" value="login" onClick="login('login')"> or &nbsp;
          <input type="submit" class="button transition d-inline-block red mb-lg-0 mb-4" name="newuser"  value="create user" onClick="login('newuser')">
        </span>
        <span class="ml-2 logout color666" onClick="login('logout')" style="display:none;"><i class="fa-solid fa-right-from-bracket"></i></span>
      </div>

    </div>

    <div class="row justify-content-center welcome mt-lg-0 mt-5 px-lg-0 px-5" style="display:none;">
      <div class="mt-lg-5 pt-lg-5 mx-auto">
        <h1 class="mt-lg-5 pt-lg-5 shout">
          shout out to
        </h1>
        <h2>
          <?php

            $conn	= db();
            $query	= $conn->prepare("SELECT title FROM shout ORDER BY rand() LIMIT 1");
            $query->execute();
            $fetch = $query->fetchColumn();

            echo $fetch;

           ?>
        </h2>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-3 aside">
        <?php podcasts_menu(); ?>
      </div>

      <div class="col-lg-9 col-12 px-4 px-lg-5 py-0 py-lg-3" id="episodes_container">

      </div>
    </div>

    <div class="row justify-content-start">
      <div class="col-12 text-left signature">
        in sarah koenig we trust.
      </div>
    </div>

  </div>


<script type="text/javascript">

    $( document ).ready(function() {
        $('.fullscreen').hide();
        $('#episodes_container').hide();
        $('.loading').hide();
        $('.logout').hide();
        $( ".podcasts_select_form" ).addClass( "d-none" );
        $( ".flex" ).addClass( "justify-content-end" );


        $( ".btnlogin" ).click(function() {
          $('.loading').show();
        });

        function getCookie(name) {
          var dc = document.cookie;
          var prefix = name + "=";
          var begin = dc.indexOf("; " + prefix);
          if (begin == -1) {
            begin = dc.indexOf(prefix);
            if (begin != 0) return null;
          } else {
            begin += 2;
            var end = document.cookie.indexOf(";", begin);
            if (end == -1) {
              end = dc.length;
            }
          }
          return decodeURI(dc.substring(begin + prefix.length, end));
        }

        function cookieaction() {
            var myCookie = getCookie("login");
            if (myCookie == null) {
              $('.login-form').css('display', 'block');
              $('.welcome').css('display', 'flex');
            } else {
              $('#episodes_container').show();
              $('.login-form').hide();
              $('.logout').show();
              $('.logo').hide();
              $('.welcome').hide();
              $( ".podcasts_select_form" ).removeClass( "d-none" );
              $( ".flex" ).removeClass( "justify-content-end" );
            }
        }
        cookieaction();
    });

    function status_switch(status_id, id_podcast){

      var request = $.ajax({
        url: "model.php",
        type: "POST",
        data: {id : status_id, func : 'status_switch'},
        dataType: "html"
      });

      request.done(function(msg) {
        var podcast_flag_value = $(".podcast_flag_"+id_podcast).html();

        if(msg == '1'){
          $(".status_"+status_id).css( "background-color", "#1BCD48" );
          $("#col_episode_"+status_id).css( "opacity", "0.15" );
          var numberone = parseInt(podcast_flag_value);
          var numbertwo = parseInt(1);
          var sum = numberone-numbertwo;
          $(".podcast_flag_"+id_podcast).html(sum);

          if(sum == '0'){
            $(".podcast_flag_"+id_podcast).css( "background-color", "#111114");
          }

        } else {
          $(".status_"+status_id).css( "background-color", "#111114" );
          $("#col_episode_"+status_id).css( "opacity", "1" );
          var numberone = parseInt(podcast_flag_value);
          var numbertwo = parseInt(1);
          var sum = numberone+numbertwo;
          $(".podcast_flag_"+id_podcast).html(sum);

          if(sum > '0'){
            $(".podcast_flag_"+id_podcast).css( "background-color", "#ED0851");
          }

        }

      });

      request.fail(function(jqXHR, textStatus) {
        alert( "Request failed: " + textStatus );
      });

    }

    function list_episodes(id_podcast, id_publisher_post, user_id, limit_post){

      var request = $.ajax({
        url: "model.php",
        type: "POST",
        data: {id : id_podcast, func : 'list_episodes', id_publisher : id_publisher_post, user : user_id, limit : limit_post},
        dataType: "html"
      });

      request.done(function(msg) {
        $("#episodes_container").html(msg+'<div class="row justify-content-center text-center mt-3 seeall" onClick="list_episodes(\''+id_podcast+'\', \''+id_publisher_post+'\', \''+user_id+'\', \'500\')" ><div class="col-12 text-center cursor-pointer">See All</div></div>');

        if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
          $('.podcasts_menu_items').hide();
          $('.'+id_podcast).show();
          $('.see-feed').show();
        }
        
      });

      request.fail(function(jqXHR, textStatus) {
        alert( "Request failed: " + textStatus );
      });

    }

    function login(action){

      var user_get = $('#user').val();
      var password_get =  $('#password').val();

      var request = $.ajax({
        url: "model.php",
        type: "POST",
        data: {user : user_get, password : password_get, action_send : action, func : 'user'},
        dataType: "html"
      });

      request.done(function(msg) {
        $(".message").html(msg);
        setTimeout(function(){location.reload();}, 500);
      });

      request.fail(function(jqXHR, textStatus) {
        //alert( "Request failed: " + textStatus );
        window.location.replace("/resources/appod");
      });

    }


    function markall(id_podcast, id_user){

      var request = $.ajax({
        url: "model.php",
        type: "POST",
        data: {id : id_podcast, user : id_user, func : 'markall'},
        dataType: "html"
      });

      request.done(function(msg) {
        $(".podcast_flag_"+id_podcast).html('0');
        $(".podcast_flag_"+id_podcast).css( "background-color", "#111114");
        var exploded = msg.split(',');
        jQuery.each( exploded, function( i, val ) {
          $("#col_episode_"+val).css( "opacity", "0.15" );
          $(".status_"+val).css( "background-color", "#1BCD48" );
        });
      });

      request.fail(function(jqXHR, textStatus) {
        alert( "Request failed: " + textStatus );
      });

    }

    function remove(id_podcast, id_user){
      var modalscreen = '<div class="modalscreen">Do you really want to remove this podcast from your feed?<br><div class="remove-yes d-inline-block cursor-pointer mx-5 mt-4" onclick="remove2(\''+id_podcast+'\', \''+id_user+'\')">yes</div><div class="remove-no d-inline-block cursor-pointer mx-5 mt-4" onclick="remove_esc()">no</div></div>';
      $("body").prepend(modalscreen);
    }
    function remove_esc(id_podcast, id_user){
      $(".modalscreen").hide();
    }


    function remove2(id_podcast, id_user){

      var request = $.ajax({
        url: "model.php",
        type: "POST",
        data: {id : id_podcast, user : id_user, func : 'remove'},
        dataType: "html"
      });

      request.done(function(msg) {
        setTimeout(function(){location.reload();}, 100);
      });

      request.fail(function(jqXHR, textStatus) {
        alert( "Request failed: " + textStatus );
      });

    }

    function closelist(){
      $('.fullscreen').hide();
    }

    function openlist(){
      $('.fullscreen').show();
    }

    function getcurrenttime(id_episode) {
      var x = document.getElementById(id_episode);
      var currenttime = x.currentTime;

      var request = $.ajax({
        url: "model.php",
        type: "POST",
        data: {id : id_episode, currenttime_post : currenttime, func : 'currenttime'},
        dataType: "html"
      });

      request.done(function(msg) {
      });

      request.fail(function(jqXHR, textStatus) {
        alert( "Request failed: " + textStatus );
      });

    }


    function update_episodes(id_user){
      window.location.href = "model.php?id_user_update="+id_user;
    }

    function seefeed(){
      window.location.href = "";
    }



</script>

</body>
