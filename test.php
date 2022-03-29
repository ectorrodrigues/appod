<?php

//include('inc/database.php');
include('vendor/simplehtmldom/simple_html_dom.php');


$html = file_get_html("http://feeds.wnyc.org/radiolab");

var_dump($html->find('div[class]'));



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

 ?>
