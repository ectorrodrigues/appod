<?php

include('inc/database.php');
//include('vendor/simplehtmldom/simple_html_dom.php');

/*
$xml = simplexml_load_file("https://www.spreaker.com/show/3221921/episodes/feed");
foreach($xml->channel->item as $title) {
  $dateep_get = $title->pubDate;
  $finaldate = strtotime($dateep_get);
  $finaldate = date('Y-m-d',$finaldate);
  $dateeps[] = strval($finaldate);
}
print_r($dateeps);
*/


/*
$xml = simplexml_load_file("https://www.spreaker.com/show/3221921/episodes/feed");
foreach($xml->channel->item as $title) {
  $audiourls_get = $title->enclosure->attributes();
  $audiourls[] = strval($audiourls_get);
}
print_r($audiourls);
*/




/*
$url = 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2ZjMjQzYjY2LWYzNGMtNDY1Ni05MDQyLWFjZDQwMGVkY2NhNS9kNGM4ZTM5OC00NDZjLTQ0N2EtYWQ0MS1hY2Q0MDBlZGNjYzEvcG9kY2FzdC5yc3M';
$html = file_get_html($url);
$i = 0;
foreach($html->find('div[jsdata]') as $title) {
  $title_get =  $title->jsdata;
  $title_get = explode(";",$title_get);
  $audiourls[] = $title_get[1];
}
print_r($audiourls);
*/

/*
$publisher_arr = array();
$conn = db();
$sql = "SELECT * FROM episode INNER JOIN podcast ON episode.id_podcast = podcast.id WHERE episode.id_user = '1'";
foreach($conn->query($sql) as $row) {
  $publisher_title = $row['title'];
  //$slug = array( ' '=>'-', 'À'=>'A', 'Á'=>'A', 'Â'=>'A', 'Ã'=>'A', 'Ä'=>'A', 'Å'=>'A', 'Æ'=>'A', 'Ç'=>'C', 'È'=>'E', 'É'=>'E', 'Ê'=>'E', 'Ë'=>'E', 'Ì'=>'I', 'Í'=>'I', 'Î'=>'I', 'Ï'=>'I', 'Ò'=>'O', 'Ó'=>'O', 'Ô'=>'O', 'Õ'=>'O', 'Ö'=>'O', 'Ø'=>'O', 'Ù'=>'U', 'Ú'=>'U', 'Û'=>'U', 'Ü'=>'U', 'Þ'=>'B', 'ß'=>'Ss', 'à'=>'a', 'á'=>'a', 'â'=>'a', 'ã'=>'a', 'ä'=>'a', 'å'=>'a', 'æ'=>'a', 'ç'=>'c', 'è'=>'e', 'é'=>'e', 'ê'=>'e', 'ë'=>'e', 'ì'=>'i', 'í'=>'i', 'î'=>'i', 'ï'=>'i', 'ð'=>'o', 'ò'=>'o', 'ó'=>'o', 'ô'=>'o', 'õ'=>'o', 'ö'=>'o', 'ø'=>'o', 'ù'=>'u', 'ú'=>'u', 'û'=>'u', 'ý'=>'y', 'þ'=>'b' );
	//$publisher_title = mb_strtolower(strtr( $publisher_title, $slug ));
  $publisher_arr[] = $publisher_title;
}

$publisher_arr = array_unique($publisher_arr);
$count_arr = count($publisher_arr);
$keys = array();
for($i = 0; $i < $count_arr; $i++){
  $keys[] = $i;
}
$publisher_arr = array_values($publisher_arr);

for($i = 0; $i < $count_arr; $i++){
  $publisher_title_fetch = $publisher_arr[$i];
  if($publisher_title_fetch == 'Gimlet'){
    add_gimlet_episodes($id_podcast, $user_id);
  } else if($publisher_title_fetch == 'B9'){
    add_b9_episodes($id_podcast, $user_id);
  }else if($publisher_title_fetch == 'Jovemnerd'){
    add_jovemnerd_episodes($id_podcast, $user_id);
  }else if($publisher_title_fetch == 'Central 3'){
    add_central3_episodes($id_podcast, $user_id);
  }else if($publisher_title_fetch == 'Half Deaf'){
    add_halfdeaf_episodes($id_podcast, $user_id);
  }else if($publisher_title_fetch == 'WNYC'){
    add_wnyc_episodes($id_podcast, $user_id);
  }
}



$podcast_arr = array();
$conn = db();
$sql = "SELECT * FROM episode WHERE id_user = '$user_id'";
foreach($conn->query($sql) as $row) {
  $podcast_title = $row['id_podcast' ];
  //$slug = array( ' '=>'-', 'À'=>'A', 'Á'=>'A', 'Â'=>'A', 'Ã'=>'A', 'Ä'=>'A', 'Å'=>'A', 'Æ'=>'A', 'Ç'=>'C', 'È'=>'E', 'É'=>'E', 'Ê'=>'E', 'Ë'=>'E', 'Ì'=>'I', 'Í'=>'I', 'Î'=>'I', 'Ï'=>'I', 'Ò'=>'O', 'Ó'=>'O', 'Ô'=>'O', 'Õ'=>'O', 'Ö'=>'O', 'Ø'=>'O', 'Ù'=>'U', 'Ú'=>'U', 'Û'=>'U', 'Ü'=>'U', 'Þ'=>'B', 'ß'=>'Ss', 'à'=>'a', 'á'=>'a', 'â'=>'a', 'ã'=>'a', 'ä'=>'a', 'å'=>'a', 'æ'=>'a', 'ç'=>'c', 'è'=>'e', 'é'=>'e', 'ê'=>'e', 'ë'=>'e', 'ì'=>'i', 'í'=>'i', 'î'=>'i', 'ï'=>'i', 'ð'=>'o', 'ò'=>'o', 'ó'=>'o', 'ô'=>'o', 'õ'=>'o', 'ö'=>'o', 'ø'=>'o', 'ù'=>'u', 'ú'=>'u', 'û'=>'u', 'ý'=>'y', 'þ'=>'b' );
  //$publisher_title = mb_strtolower(strtr( $publisher_title, $slug ));
  $podcast_arr[] = $podcast_title;
}

$podcast_arr = array_unique($podcast_arr);
$count_arr = count($podcast_arr);
$keys = array();
for($i = 0; $i < $count_arr; $i++){
  $keys[] = $i;
}
$podcast_arr = array_values($podcast_arr);

for($i = 0; $i < $count_arr; $i++){

  $podcast_id_fetch = $podcast[$i];
  $query 	= $conn->prepare("SELECT id_publisher FROM podcast WHERE id = '$podcast_id_fetch' AND id_user = '$user_id' ");
  $query->execute();

  if($query->rowCount() > 0){
    $id_publisher = $query->fetchColumn();
    if($id_publisher == '1'){
      add_gimlet_episodes($podcast_id_fetch, $user_id);
    } else if($id_publisher == '2'){
      add_b9_episodes($podcast_id_fetch, $user_id);
    }else if($id_publisher == '3'){
      add_jovemnerd_episodes($podcast_id_fetch, $user_id);
    }else if($id_publisher == '4'){
      add_central3_episodes($podcast_id_fetch, $user_id);
    }else if($id_publisher == '5'){
      add_halfdeaf_episodes($podcast_id_fetch, $user_id);
    }else if($id_publisher == '6'){
      add_wnyc_episodes($podcast_id_fetch, $user_id);
    }
  }

}

*/

$protocol = strtolower(substr($_SERVER["SERVER_PROTOCOL"],0,5))=='https'?'https':'http';
$sitename = explode('/', $_SERVER['PHP_SELF']);
array_shift($sitename);
array_pop($sitename);
$sitename = implode('/', $sitename);
$header_url = $protocol.'://'.$_SERVER['HTTP_HOST'].'/'.$sitename;


 ?>
