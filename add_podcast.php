<?php

include('vendor/simplehtmldom/simple_html_dom.php');
include('inc/database.php');

function add_gimlet_episodes(){

  $html = file_get_html('https://gimletmedia.com/shows/reply-all/episodes#show-tab-picker');
  $conn	= db();

  $i = 0;
  foreach($html->find('.episode-card') as $title) {
      $item_title = $title->find('.episode-title', 0)->plaintext;

      if($i != 100){
        $titles[] = $item_title.'---'.$i;
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
      $addurl	= $conn->prepare("INSERT INTO episode (title, url, date_publish, date_added, id_podcast, id_publisher, id_user, status) VALUES ('$titles[$i]', '$audiourls[$i]', '$dateeps[$i]', '$today', '2', '1', '1', '0')");
      $addurl->execute();
    }

  }


  $conn	= NULL;


}

add_gimlet_episodes();

 ?>
