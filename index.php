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

      echo '
      <div class="podcasts_menu_items row" onClick="list_episodes(\''.$id.'\', \''.$id_publisher.'\', \''.$id_user.'\', \'15\')">
        <div class="col-10">
          '.$title.'
        </div>
        <div class="col-2">
          <div class="flag-to-listen podcast_flag_'.$id.'">
            '.$rowcount.'
          </div>
        </div>
      </div>';
    }

    $conn	= NULL;
  }

  ?>




  <div class="container-fluid">
    <div class="row p-3 bottom-line">
      <div class="col-4">
        <form action="model.php" method="post" enctype="multipart/form-data" class="login-form">
          <?php
            $conn	= db();

            echo '<select class="podcasts_select col-6" name="podcasts_select">';
            echo '<option value="">Choose a podcast to add</option>';
            foreach($conn->query("SELECT * FROM podcast WHERE id_user = '0' ") as $row) {
              $id = $row['id'];
              $title = $row['title'];
              $id_publisher = $row['id_publisher'];
              echo '<option value="'.$id.'-'.$id_publisher.'-1">'.$title.'</option>';
            }
            echo '</select>';

            $conn	= NULL;
          ?>
          <input type="hidden" name="func" value="add_podcast">
          <input type="hidden" name="user_id" value="<?= $user_id ?>">
          <input type="submit" class="button transition" name="submit" value="+ add">
        </form>
      </div>
      <div class="col-8 text-right">
          <span class="message red-text mr-2"></span>
          <input type="text" name="user" class="mr-2 d-inline-block" placeholder="user" id="user" value="">
          <input type="password" name="password" class="mr-2 d-inline-block" placeholder="password" id="password" value="">
          <input type="submit" class="button transition d-inline-block mr-2" name="login" value="login" onClick="login('login')"> or &nbsp;
          <input type="submit" class="button transition d-inline-block red" name="newuser"  value="newuser" onClick="login('newuser')">
          <span class="ml-2 logout" onClick="login('logout')">logout</span>
      </div>
    </div>

    <div class="row">
      <div class="col-3 aside">
        <?php podcasts_menu(); ?>
      </div>
      <div class="col-9 px-5 py-3" id="episodes_container">

      </div>
    </div>

  </div>

<script type="text/javascript">

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
      });

      request.fail(function(jqXHR, textStatus) {
        alert( "Request failed: " + textStatus );
      });

    }


    $( document ).ready(function() {
        console.log( "ready!" );
    });

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
        alert( "Request failed: " + textStatus );
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

</script>

</body>
