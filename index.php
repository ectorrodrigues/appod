<?php include('inc/head.php'); ?>

<body>

  <?php

  include('vendor/simplehtmldom/simple_html_dom.php');
  include('inc/database.php');


  function add_gimlet_episodes(){

    $html = file_get_html('https://gimletmedia.com/shows/reply-all/episodes#show-tab-picker');
    $conn	= db();

    foreach($html->find('.episode-card') as $title) {
        $item_title = $title->find('.episode-title', 0)->plaintext;
        $titles[] = $item_title;
    }
    //print_r($titles);

    foreach($html->find('.episode-card') as $dateep) {
        $item_dateep = $dateep->find('.episode-date', 0)->plaintext;

        $finaldate = strtotime($item_dateep);
        $finaldate = date('Y-m-d',$finaldate);

        $dateeps[] = $finaldate;
    }
    //print_r($dateeps);

    foreach($html->find('div[class=listen-now]') as $element){
        $classurl = 'data-listen-now-player-url';
        $audiourls[] = $element->$classurl;
    }
    //print_r($audiourls);

    $arrlenght = count($titles);
    $today = date("Y-m-d");

    for($i = 0; $i < $arrlenght; $i++){

      $query	= $conn->prepare("SELECT url FROM episode WHERE url = '$audiourls[$i]' ");
      $query->execute();

      if($query->rowCount() == 0){
        $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '2', '1', '1', '0')");
        $addurl->execute();
      }

    }

    $conn	= NULL;


  }

  //add_gimlet_episodes();

  function list_gimlet_episodes(){

    $conn	= db();
    foreach($conn->query("SELECT * FROM episode WHERE id_user = '2'") as $row) {
      $id = $row['id'];
      $url = $row['url'];
      $status = $row['status'];
      $id_podcast = $row['id_podcast'];

      if($status == '1'){
        $bg_color = "#1BCD48";
        $opacity = "0.15";
      } elseif($status == '0'){
        $bg_color = "#111114";
        $opacity = "1";
      }


      echo '
      <div class="row justify-content-around">
        <div class="col-11 my-auto" style="opacity:'.$opacity.';" id="col_episode_'.$id.'">
          <iframe data-target="persistent-player.spotifyEmbed" src="'.$url.'" width="100%" height="152" frameborder="0" allowtransparency="true" allow="encrypted-media" style="height: 152px;" class="mt-2 test" id="'.$id.'"></iframe>
        </div>
        <div class="col-1 my-auto">
          <div class="row justify-content-center">
            <div class="status-circle status_'.$id.'" id="'.$id.'" onClick="status_switch(this.id, \''.$id_podcast.'\')" style="background-color:'.$bg_color.';">
              <i class="fa-solid fa-check"></i>
            </div>
          </div>
        </div>
      </div>


      ';
      //echo '<audio controls><source src="'.$url.'" type="audio/mpeg"></audio>';

    }
    $conn	= NULL;

  }


  function podcasts_menu(){
    $conn	= db();

    foreach($conn->query("SELECT * FROM podcast WHERE id_user = '1' ") as $row) {
      $id = $row['id'];
      $title = $row['title'];



      $query	= $conn->prepare(" SELECT * FROM episode WHERE id_podcast = '$id' AND status = '0' AND id_user = '1' ");
      $query->execute();
      $rowcount = $query->rowCount();

      echo '
      <div class="podcasts_menu_items row">
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
    <div class="row">

    </div>
    <div class="row">
      <div class="col-3 aside">
        <?php podcasts_menu(); ?>
      </div>
      <div class="col-9 px-5 py-3">
        <?php list_gimlet_episodes(); ?>
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
</script>


</body>
