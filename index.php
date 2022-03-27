<?php include('inc/head.php'); ?>

<body>

<?php

  include('inc/database.php');


  function podcasts_menu(){
    $conn	= db();

    foreach($conn->query(" SELECT * FROM podcast WHERE id_user = '1' ") as $row) {
      $id = $row['id'];
      $title = $row['title'];
      $id_publisher = $row['id_publisher'];

      $query	= $conn->prepare(" SELECT * FROM episode WHERE id_podcast = '$id' AND status = '0' AND id_user = '1' ");
      $query->execute();
      $rowcount = $query->rowCount();

      echo '
      <div class="podcasts_menu_items row" onClick="list_episodes(\''.$id.'\', \''.$id_publisher.'\')">
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

        <?php
          $conn	= db();

          echo '<select class="podcasts_select col-2" name="podcasts_select">';
          foreach($conn->query("SELECT * FROM podcast WHERE id_user = '0' ") as $row) {
            $id = $row['id'];
            $title = $row['title'];
            $id_publisher = $row['id_publisher'];
            echo '<option value="'.$id.'">'.$title.'</value>';
          }
          echo '</select>';

          echo '<a href="add_podcast.php?func=add_podcast&id_podcast=2&id_user=1&id_publisher='.$id_publisher.'" class="ml-2 button">+ add</a>';
          $conn	= NULL;
        ?>

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
        url: "functions.php",
        type: "POST",
        data: {id : status_id, func : 'status_switch'},
        dataType: "html"
      });

      request.done(function(msg) {
        //$("#log").html( msg );
        //var msgsplit = msg.split('|');
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


    function list_episodes(id_podcast, id_publisher_post){

      var request = $.ajax({
        url: "model.php",
        type: "POST",
        data: {id : id_podcast, func : 'list_episodes', id_publisher : id_publisher_post},
        dataType: "html"
      });

      request.done(function(msg) {
        $("#episodes_container").html(msg);
      });

      request.fail(function(jqXHR, textStatus) {
        alert( "Request failed: " + textStatus );
      });

    }



</script>


</body>
