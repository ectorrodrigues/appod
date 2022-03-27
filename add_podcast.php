<?php

include('vendor/simplehtmldom/simple_html_dom.php');
include('inc/database.php');

function add_gimlet_episodes($id_podcast){

  $conn	= db();

  foreach($conn->query(" SELECT * FROM podcast WHERE id = '$id_podcast' ") as $row) {

    $title = $row['title'];
    $id_publisher = $row['id_publisher'];
    $url = $row['url'];

    $query	= $conn->prepare("INSERT INTO podcast (title, id_publisher, url, id_user) VALUES ('$title', '$id_publisher', '$url', '1') ");
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

      //Presenting: Heavyweight > error on replyall

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

    $query	= $conn->prepare("SELECT url FROM episode WHERE url = '$audiourls[$i]' ");
    $query->execute();

    if($query->rowCount() == 0){
      $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '$id_podcast_fetch', '1', '1', '0')");
      $addurl->execute();
    }

  }






  $conn	= NULL;


}


// See if a func was sent
if(isset($_GET['func'])){

  $func = $_GET['func'];

  // Get the func
  if($func == 'add_podcast'){

    // Check the publisher
    $id_publisher = $_GET['id_publisher'];

    if($id_publisher == '1'){
      $id_podcast = $_GET['id_podcast'];
      add_gimlet_episodes($id_podcast);
    }

  }

}

header("Location:http://localhost:8888/appod/");


 ?>
