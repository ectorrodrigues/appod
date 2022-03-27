<?php
include('inc/database.php');

function list_gimlet_episodes($id_podcast_post){

  $conn	= db();
  foreach($conn->query("SELECT * FROM episode WHERE id_podcast = '$id_podcast_post' AND id_user = '1' LIMIT 10") as $row) {
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

  }
  $conn	= NULL;

}

// See if a func was sent
if(isset($_POST['func'])){

  $func = $_POST['func'];

  // Get the func
  if($func == 'list_episodes'){

    // Check the publisher
    $id_publisher = $_POST['id_publisher'];
    if($id_publisher == '1'){
      $id_podcast_post = $_POST['id'];

      list_gimlet_episodes($id_podcast_post);
    }

  }

}

 ?>
