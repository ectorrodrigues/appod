<?php
include('inc/database.php');

// See if a func was sent
if(isset($_POST['func'])){
  $func = $_POST['func'];

  // LIST EPISODES ------------------------------------------------------------------------------------------
  // --------------------------------------------------------------------------------------------------------
  if($func == 'list_episodes'){

    // Check the publisher
    $id_publisher = $_POST['id_publisher'];
    $id_podcast_post = $_POST['id'];
    $id_user = $_POST['user'];

    if($id_publisher == '1'){

      function list_gimlet_episodes($id_podcast_post, $id_user){

        $conn	= db();
        foreach($conn->query("SELECT * FROM episode WHERE id_podcast = '$id_podcast_post' AND id_user = '$id_user' LIMIT 10") as $row) {
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

      list_gimlet_episodes($id_podcast_post, $id_user);

    } else if ($id_publisher == '2'){

      function list_b9_episodes($id_podcast_post, $id_user){

        $conn	= db();
        foreach($conn->query("SELECT * FROM episode WHERE id_podcast = '$id_podcast_post' AND id_user = '$id_user' LIMIT 10") as $row) {
          $id = $row['id'];
          $url = $row['url'];
          $status = $row['status'];
          $title = $row['title'];
          $date_publish = $row['date_publish'];
          $date_publish = strtotime($date_publish);
          $date_publish = date("d/m/Y", $date_publish);
          $id_podcast = $row['id_podcast'];

          if($status == '1'){
            $bg_color = "#1BCD48";
            $opacity = "0.15";
          } elseif($status == '0'){
            $bg_color = "#111114";
            $opacity = "1";
          }

          echo '
          <div class="row justify-content-around mb-3">
            <div class="col-11 my-auto" style="opacity:'.$opacity.';" id="col_episode_'.$id.'">
              <div class="col-12 px-4 mb-1">'.$title.' - '.$date_publish.'</div>
              <audio controls id='.$id.' class="col-12">
                <source src="'.$url.'" type="audio/mpeg">
              </audio>
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

      list_b9_episodes($id_podcast_post, $id_user);

    } else if ($id_publisher == '3'){

      function list_jovemnerd_episodes($id_podcast_post, $id_user){

        $conn	= db();
        foreach($conn->query("SELECT * FROM episode WHERE id_podcast = '$id_podcast_post' AND id_user = '$id_user' LIMIT 10") as $row) {
          $id = $row['id'];
          $url = $row['url'];
          $status = $row['status'];
          $title = $row['title'];
          $date_publish = $row['date_publish'];
          $date_publish = strtotime($date_publish);
          $date_publish = date("d/m/Y", $date_publish);
          $id_podcast = $row['id_podcast'];

          if($status == '1'){
            $bg_color = "#1BCD48";
            $opacity = "0.15";
          } elseif($status == '0'){
            $bg_color = "#111114";
            $opacity = "1";
          }

          echo '
          <div class="row justify-content-around mb-3">
            <div class="col-11 my-auto" style="opacity:'.$opacity.';" id="col_episode_'.$id.'">
              <div class="col-12 px-4 mb-1">'.$title.' - '.$date_publish.'</div>
              <audio controls id='.$id.' class="col-12">
                <source src="'.$url.'" type="audio/mpeg">
              </audio>
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

      list_jovemnerd_episodes($id_podcast_post, $id_user);

    } else if ($id_publisher == '4'){

      function list_central3_episodes($id_podcast_post, $id_user){

        $conn	= db();
        foreach($conn->query("SELECT * FROM episode WHERE id_podcast = '$id_podcast_post' AND id_user = '$id_user' LIMIT 10") as $row) {
          $id = $row['id'];
          $url = $row['url'];
          $status = $row['status'];
          $title = $row['title'];
          $date_publish = $row['date_publish'];
          $date_publish = strtotime($date_publish);
          $date_publish = date("d/m/Y", $date_publish);
          $id_podcast = $row['id_podcast'];

          if($status == '1'){
            $bg_color = "#1BCD48";
            $opacity = "0.15";
          } elseif($status == '0'){
            $bg_color = "#111114";
            $opacity = "1";
          }

          echo '
          <div class="row justify-content-around mb-3">
            <div class="col-11 my-auto" style="opacity:'.$opacity.';" id="col_episode_'.$id.'">
              <div class="col-12 px-4 mb-1">'.$title.' - '.$date_publish.'</div>
              <audio controls id='.$id.' class="col-12">
                <source src="'.$url.'" type="audio/mpeg">
              </audio>
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

      list_central3_episodes($id_podcast_post, $id_user);

    }

    else if ($id_publisher == '5'){

      function list_halfdeaf_episodes($id_podcast_post, $id_user){

        $conn	= db();
        foreach($conn->query("SELECT * FROM episode WHERE id_podcast = '$id_podcast_post' AND id_user = '$id_user' LIMIT 10") as $row) {
          $id = $row['id'];
          $url = $row['url'];
          $status = $row['status'];
          $title = $row['title'];
          $date_publish = $row['date_publish'];
          $date_publish = strtotime($date_publish);
          $date_publish = date("d/m/Y", $date_publish);
          $id_podcast = $row['id_podcast'];

          if($status == '1'){
            $bg_color = "#1BCD48";
            $opacity = "0.15";
          } elseif($status == '0'){
            $bg_color = "#111114";
            $opacity = "1";
          }

          echo '
          <div class="row justify-content-around mb-3">
            <div class="col-11 my-auto" style="opacity:'.$opacity.';" id="col_episode_'.$id.'">
              <div class="col-12 px-4 mb-1">'.$title.' - '.$date_publish.'</div>
              <audio controls id='.$id.' class="col-12">
                <source src="'.$url.'" type="audio/mpeg">
              </audio>
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

      list_halfdeaf_episodes($id_podcast_post, $id_user);

    } else if ($id_publisher == '6'){

      function list_wnyc_episodes($id_podcast_post, $id_user){

        $conn	= db();
        foreach($conn->query("SELECT * FROM episode WHERE id_podcast = '$id_podcast_post' AND id_user = '$id_user' LIMIT 10") as $row) {
          $id = $row['id'];
          $url = $row['url'];
          $status = $row['status'];
          $title = $row['title'];
          $date_publish = $row['date_publish'];
          $date_publish = strtotime($date_publish);
          $date_publish = date("d/m/Y", $date_publish);
          $id_podcast = $row['id_podcast'];

          if($status == '1'){
            $bg_color = "#1BCD48";
            $opacity = "0.15";
          } elseif($status == '0'){
            $bg_color = "#111114";
            $opacity = "1";
          }

          echo '
          <div class="row justify-content-around mb-3">
            <div class="col-11 my-auto" style="opacity:'.$opacity.';" id="col_episode_'.$id.'">
              <div class="col-12 px-4 mb-1">'.$title.' - '.$date_publish.'</div>
              <audio controls id='.$id.' class="col-12">
                <source src="'.$url.'" type="audio/mpeg">
              </audio>
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

      list_wnyc_episodes($id_podcast_post, $id_user);

    }

    // STATUS SWITCH ------------------------------------------------------------------------------------------
    // --------------------------------------------------------------------------------------------------------
  } else if($func == 'status_switch'){

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

    status_switch_action();

    // ADD PODCAST ------------------------------------------------------------------------------------------
    // --------------------------------------------------------------------------------------------------------
  } else if($func == 'add_podcast'){

    // Check the publisher
    $parameters = $_POST['podcasts_select'];
    $parameters = explode("-",$parameters);
    $id_publisher = $parameters[1];
    $id_podcast = $parameters[0];
    $user_id = $_POST['user_id'];


    // IF GIMLET
    if($id_publisher == '1'){

      include('vendor/simplehtmldom/simple_html_dom.php');

      function add_gimlet_episodes($id_podcast, $user_id){

        $conn	= db();
        foreach($conn->query(" SELECT * FROM podcast WHERE id = '$id_podcast' ") as $row) {
          $title = $row['title'];
          $id_publisher = $row['id_publisher'];
          $url = $row['url'];
          $query	= $conn->prepare("INSERT INTO podcast (title, id_publisher, url, id_user) VALUES ('$title', '$id_publisher', '$url', '$user_id') ");
          $query->execute();
        }

        $query	= $conn->prepare("SELECT id FROM podcast ORDER BY id DESC LIMIT 0,1");
        $query->execute();
        $id_podcast_fetch = $query->fetchColumn();
        //https://gimletmedia.com/shows/heavyweight/episodes#show-tab-picker
        $html = file_get_html($url);

        $i = 0;
        foreach($html->find('.episode-card') as $title) {
          $item_title = $title->find('.episode-title', 0)->plaintext;
          if($i != 100){
            $titles[] = $item_title;
          }
          $i++;
        }
        //print_r($titles);

        $i = 0;
        foreach($html->find('.episode-card') as $dateep) {
          $item_dateep = $dateep->find('.episode-date', 0)->plaintext;
          $finaldate = strtotime($item_dateep);
          $finaldate = date('Y-m-d',$finaldate);
          if($i != 100){
            $dateeps[] = $finaldate;
          }
          $i++;
        }
        //print_r($dateeps);

        $i = 0;
        foreach($html->find('div[class=listen-now]') as $element){
          $classurl = 'data-listen-now-player-url';
          $audiourls[] = $element->$classurl;
          $i++;
        }
        //print_r($audiourls);

        $arrlenght = count($titles);
        $today = date("Y-m-d");
        for($i = 0; $i < $arrlenght; $i++){
          $query	= $conn->prepare("SELECT url FROM episode WHERE url = '$audiourls[$i]' AND id_user = '$user_id' ");
          $query->execute();
          if($query->rowCount() == 0){
            $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '$id_podcast_fetch', '$id_publisher', '$user_id', '0')");
            $addurl->execute();
          }
        }

        $conn	= NULL;

      }

    } else if($id_publisher == '2'){

      include('vendor/simplehtmldom/simple_html_dom.php');

      function add_b9_episodes($id_podcast, $user_id){

        $conn	= db();
        foreach($conn->query(" SELECT * FROM podcast WHERE id = '$id_podcast' ") as $row) {
          $title = $row['title'];
          $id_publisher = $row['id_publisher'];
          $url = $row['url'];
          $query	= $conn->prepare("INSERT INTO podcast (title, id_publisher, url, id_user) VALUES ('$title', '$id_publisher', '$url', '$user_id') ");
          $query->execute();
        }

        $query	= $conn->prepare("SELECT id FROM podcast ORDER BY id DESC LIMIT 0,1");
        $query->execute();
        $id_podcast_fetch = $query->fetchColumn();
        $html = file_get_html($url);

        foreach($html->find('.LTUrYb') as $title) {
          $item_title = $title->find('.e3ZUqe', 0)->plaintext;
          $titles[] = $item_title;
        }
        //print_r($titles);

        $i = 0;
        $dateepsarr = array();
        foreach($html->find('.oD3fme') as $dateep) {
          $item_dateep = $dateep->find('.OTz6ee', 0)->plaintext;
          $finaldate = strtotime($item_dateep);
          $finaldate = date('Y-m-d',$finaldate);
          $dateeps[] = $finaldate;
          $i++;
        }
        //print_r($dateeps);

        $i = 0;
        foreach($html->find('div[jsdata]') as $title) {
          $title_get =  $title->jsdata;
          $title_get = explode(";",$title_get);
          $audiourls[] = $title_get[1];
        }
        //print_r($audiourls);

        $arrlenght = count($titles);
        $today = date("Y-m-d");
        $i = 0;

        for($i = 0; $i < $arrlenght; $i++){

          $query	= $conn->prepare("SELECT url FROM episode WHERE url = '$audiourls[$i]' AND id_user = '$user_id' ");
          $query->execute();

          if($query->rowCount() == 0){
            $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '$id_podcast_fetch', '$id_publisher', '$user_id', '0')");
            $addurl->execute();
          }
        }

        $conn	= NULL;

      }

    } else if($id_publisher == '3'){

      include('vendor/simplehtmldom/simple_html_dom.php');

      function add_jovemnerd_episodes($id_podcast, $user_id){

        $conn	= db();
        foreach($conn->query(" SELECT * FROM podcast WHERE id = '$id_podcast' ") as $row) {
          $title = $row['title'];
          $id_publisher = $row['id_publisher'];
          $url = $row['url'];
          $query	= $conn->prepare("INSERT INTO podcast (title, id_publisher, url, id_user) VALUES ('$title', '$id_publisher', '$url', '$user_id') ");
          $query->execute();
        }

        $query	= $conn->prepare("SELECT id FROM podcast ORDER BY id DESC LIMIT 0,1");
        $query->execute();
        $id_podcast_fetch = $query->fetchColumn();
        $html = file_get_html($url);

        foreach($html->find('.LTUrYb') as $title) {
          $item_title = $title->find('.e3ZUqe', 0)->plaintext;
          $titles[] = $item_title;
        }
        //print_r($titles); die();

        $i = 0;
        $dateepsarr = array();
        foreach($html->find('.oD3fme') as $dateep) {
          $item_dateep = $dateep->find('.OTz6ee', 0)->plaintext;
          $finaldate = strtotime($item_dateep);
          $finaldate = date('Y-m-d',$finaldate);
          $dateeps[] = $finaldate;
          $i++;
        }
        //print_r($dateeps); die();

        $i = 0;
        foreach($html->find('div[jsdata]') as $title) {
          $title_get =  $title->jsdata;
          $title_get = explode(";",$title_get);
          $audiourls[] = $title_get[1];
        }
        //print_r($audiourls); die();

        $arrlenght = count($titles);
        $today = date("Y-m-d");
        $i = 0;

        for($i = 0; $i < $arrlenght; $i++){

          $query	= $conn->prepare("SELECT url FROM episode WHERE url = '$audiourls[$i]' AND id_user = '$user_id' ");
          $query->execute();

          if($query->rowCount() == 0){
            $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '$id_podcast_fetch', '$id_publisher', '$user_id', '0')");
            $addurl->execute();
          }
        }

        $conn	= NULL;

      }

    } else if($id_publisher == '4'){

      include('vendor/simplehtmldom/simple_html_dom.php');

      function add_central3_episodes($id_podcast, $user_id){

        $conn	= db();
        foreach($conn->query(" SELECT * FROM podcast WHERE id = '$id_podcast' ") as $row) {
          $title = $row['title'];
          $id_publisher = $row['id_publisher'];
          $url = $row['url'];
          $query	= $conn->prepare("INSERT INTO podcast (title, id_publisher, url, id_user) VALUES ('$title', '$id_publisher', '$url', '$user_id') ");
          $query->execute();
        }

        $query	= $conn->prepare("SELECT id FROM podcast ORDER BY id DESC LIMIT 0,1");
        $query->execute();
        $id_podcast_fetch = $query->fetchColumn();
        $html = file_get_html($url);

        foreach($html->find('.LTUrYb') as $title) {
          $item_title = $title->find('.e3ZUqe', 0)->plaintext;
          $titles[] = $item_title;
        }
        //print_r($titles); die();

        $i = 0;
        $dateepsarr = array();
        foreach($html->find('.oD3fme') as $dateep) {
          $item_dateep = $dateep->find('.OTz6ee', 0)->plaintext;
          $finaldate = strtotime($item_dateep);
          $finaldate = date('Y-m-d',$finaldate);
          $dateeps[] = $finaldate;
          $i++;
        }
        //print_r($dateeps); die();

        $i = 0;
        foreach($html->find('div[jsdata]') as $title) {
          $title_get =  $title->jsdata;
          $title_get = explode(";",$title_get);
          $audiourls[] = $title_get[1];
        }
        //print_r($audiourls); die();

        $arrlenght = count($titles);
        $today = date("Y-m-d");
        $i = 0;

        for($i = 0; $i < $arrlenght; $i++){

          $query	= $conn->prepare("SELECT url FROM episode WHERE url = '$audiourls[$i]' AND id_user = '$user_id' ");
          $query->execute();

          if($query->rowCount() == 0){
            $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '$id_podcast_fetch', '$id_publisher', '$user_id', '0')");
            $addurl->execute();
          }
        }

        $conn	= NULL;

      }

    } else if($id_publisher == '5'){

      // XML PARSING
      function add_halfdeaf_episodes($id_podcast, $user_id){

        $conn	= db();
        foreach($conn->query(" SELECT * FROM podcast WHERE id = '$id_podcast' ") as $row) {
          $title = $row['title'];
          $id_publisher = $row['id_publisher'];
          $url = $row['url'];
          $query	= $conn->prepare("INSERT INTO podcast (title, id_publisher, url, id_user) VALUES ('$title', '$id_publisher', '$url', '$user_id') ");
          $query->execute();
        }

        $query	= $conn->prepare("SELECT id FROM podcast ORDER BY id DESC LIMIT 0,1");
        $query->execute();
        $id_podcast_fetch = $query->fetchColumn();
        $xml = simplexml_load_file("$url");


        foreach($xml->channel->item as $title) {
          $title_get = $title->title;
          $titles[] = strval($title_get);
        }
        //print_r($titles).'<br>';

        foreach($xml->channel->item as $title) {
          $dateep_get = $title->pubDate;
          $finaldate = strtotime($dateep_get);
          $finaldate = date('Y-m-d',$finaldate);
          $dateeps[] = strval($finaldate);
        }
        //print_r($dateeps).'<br>';

        $xml = simplexml_load_file("https://www.spreaker.com/show/3221921/episodes/feed");
        foreach($xml->channel->item as $title) {
          $audiourls_get = $title->enclosure->attributes();
          $audiourls[] = strval($audiourls_get);
        }
        //print_r($audiourls).'<br>';

        $arrlenght = count($titles);
        $today = date("Y-m-d");
        $i = 0;

        for($i = 0; $i < $arrlenght; $i++){

          $query	= $conn->prepare("SELECT url FROM episode WHERE url = '$audiourls[$i]' AND id_user = '$user_id' ");
          $query->execute();

          if($query->rowCount() == 0){
            $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '$id_podcast_fetch', '$id_publisher', '$user_id', '0')");
            $addurl->execute();
          }
        }

        $conn	= NULL;

      }

    } else if($id_publisher == '6'){

      include('vendor/simplehtmldom/simple_html_dom.php');

      function add_wnyc_episodes($id_podcast, $user_id){

        $conn	= db();
        foreach($conn->query(" SELECT * FROM podcast WHERE id = '$id_podcast' ") as $row) {
          $title = $row['title'];
          $id_publisher = $row['id_publisher'];
          $url = $row['url'];
          $query	= $conn->prepare("INSERT INTO podcast (title, id_publisher, url, id_user) VALUES ('$title', '$id_publisher', '$url', '$user_id') ");
          $query->execute();
        }

        $query	= $conn->prepare("SELECT id FROM podcast ORDER BY id DESC LIMIT 0,1");
        $query->execute();
        $id_podcast_fetch = $query->fetchColumn();
        $html = file_get_html($url);

        foreach($html->find('.LTUrYb') as $title) {
          $item_title = $title->find('.e3ZUqe', 0)->plaintext;
          $titles[] = $item_title;
        }
        //print_r($titles); die();

        $i = 0;
        $dateepsarr = array();
        foreach($html->find('.oD3fme') as $dateep) {
          $item_dateep = $dateep->find('.OTz6ee', 0)->plaintext;
          $finaldate = strtotime($item_dateep);
          $finaldate = date('Y-m-d',$finaldate);
          $dateeps[] = $finaldate;
          $i++;
        }
        //print_r($dateeps); die();

        $i = 0;
        foreach($html->find('div[jsdata]') as $title) {
          $title_get =  $title->jsdata;
          $title_get = explode(";",$title_get);
          $audiourls[] = $title_get[1];
        }
        //print_r($audiourls); die();

        $arrlenght = count($titles);
        $today = date("Y-m-d");
        $i = 0;

        for($i = 0; $i < $arrlenght; $i++){

          $query	= $conn->prepare("SELECT url FROM episode WHERE url = '$audiourls[$i]' AND id_user = '$user_id' ");
          $query->execute();

          if($query->rowCount() == 0){
            $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '$id_podcast_fetch', '$id_publisher', '$user_id', '0')");
            $addurl->execute();
          }
        }

        $conn	= NULL;

      }

    }

    if($id_publisher == '1'){
      add_gimlet_episodes($id_podcast, $user_id);
    } else if($id_publisher == '2'){
      add_b9_episodes($id_podcast, $user_id);
    }else if($id_publisher == '3'){
      add_jovemnerd_episodes($id_podcast, $user_id);
    }else if($id_publisher == '4'){
      add_central3_episodes($id_podcast, $user_id);
    }else if($id_publisher == '5'){
      add_halfdeaf_episodes($id_podcast, $user_id);
    }else if($id_publisher == '6'){
      add_wnyc_episodes($id_podcast, $user_id);
    }




    header("Location:http://localhost:8888/appod/");


    // USER MANAGEMENT ------------------------------------------------------------------------------------------
    // --------------------------------------------------------------------------------------------------------
  } else if($func == 'user'){

    $user = $_POST['user'];
    $password = $_POST['password'];
    $action = $_POST['action_send'];
    $conn	= db();


    $key_sk = random_bytes(32);
    $key_siv = random_bytes(32);
    $key_sk = base64_encode($key_sk);
    $key_siv = base64_encode($key_siv);
    $key_sk    = hash("sha256", $key_sk);
    $key_siv   = substr(hash("sha256", $key_siv), 0, 16);

    function encrypting($action, $string, $key_sk, $key_siv){
      $cypher_method = "AES-256-CBC";
      $output = false;

      if ($action == "encrypt"){
        $key    = $key_sk;
        $iv     = $key_siv;
        $output = openssl_encrypt($string, $cypher_method, $key, 0, $iv);
        $output = base64_encode($output);
      } else if($action == "decrypt"){
        $key    = $key_sk;
        $iv     = $key_siv;
        $output = base64_decode($string);
        $output = openssl_decrypt($output, $cypher_method, $key, 0, $iv);
      }
      return $output;
    } //endfunction

    if ($action == 'login') {

        // CHECK IF THE USER EXISTS AND IF SO, GET HIS HASHED PASSWORD
        $query	= $conn->prepare("SELECT password FROM user WHERE title = :user");
        $query->bindParam(':user', $user);
        $query->execute();
        if ($query->rowCount() > 0){
          $passfetch = $query->fetchColumn();
        } else {
          echo 'user not found.';
        }
        // ENCRYPT PASSWORD AND CHECK IF IT MATCHES THE HASHED PASSWORD STORED ON DATABASE
        foreach($conn->query("SELECT * FROM user WHERE title = '$user' ") as $row) {
          $tag		    = $row['key_tag'];
          $iv         = $row['key_iv'];
        }

        $crypted_password = encrypting("encrypt", $password, $iv, $tag);
        if($passfetch == $crypted_password){
          $password = $passfetch;
        } else {
          $password = 'wrongpass';
        }

        // CHECK IF THERE'S AN USER ATTACHED WITH THE HASHED PASSWORD
        $conn		= db();
        $query	= $conn->prepare("SELECT password FROM user WHERE title = :user AND password = :pass");
        $query->bindParam(':user', $user);
        $query->bindParam(':pass', $password);
        $query->execute();
        /*--------- IF USER AND PASS EXISTS GO TO THE ADMIN ----------*/
        if ($query->rowCount() > 0){
          $keypass = $query->fetchColumn();
          $query 	= $conn->prepare("SELECT id FROM user WHERE title = :user AND password = :pass");
          $query->bindParam(':user', $user);
          $query->bindParam(':pass', $password);
          $query->execute();
          $user_id = $query->fetchColumn();

          $cookie_name = "login";
          $cookie_value = $user_id;
          setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day

          echo "you're in.";

        } else {
          echo "wrong, try again.";
        }

    } else if ($action == 'newuser') {

      $query	= $conn->prepare("SELECT id FROM user WHERE title = '$user'");
      $query->execute();
      //$id_podcast_fetch = $query->fetchColumn();
      if($query->rowCount() > 0){
        echo 'user already exists, try again.';
      } else {

        $crypted_password = encrypting("encrypt", $password, $key_sk, $key_siv);
        $created = date("Y-m-d");

        $query	= $conn->prepare("INSERT INTO user (title, password, keypass, key_iv, key_tag, created_at, active) VALUES ('$user', '$crypted_password', '$crypted_password', '$key_sk', '$key_siv', '$created', '1') ");
        $query->execute();

        $query	= $conn->prepare("SELECT id FROM user ORDER BY id DESC LIMIT 0,1");
        $query->execute();
        $id_user_fetch = $query->fetchColumn();

        $cookie_name = "login";
        $cookie_value = $id_user_fetch;
        setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day

        echo "you're in.";

      }

    } else if($action == 'logout'){

      session_destroy();
      session_unset();
      setcookie("login", "", time() - 3600);
      unset($_COOKIE['login']);
      setcookie('login', null, -1, '/');
      header("Location:http://localhost:8888/appod/");

    }


     else {
        //no button pressed
    }

  }


}


 ?>
