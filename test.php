<?php

//include('inc/database.php');
include('vendor/simplehtmldom/simple_html_dom.php');



$url = 'https://podcasts.google.com/feed/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvNjUxYTI1MWUtMDZlMS00N2UwLTkzMzYtYWM1YTAwZjQxNjI4L2ZjMjQzYjY2LWYzNGMtNDY1Ni05MDQyLWFjZDQwMGVkY2NhNS9kNGM4ZTM5OC00NDZjLTQ0N2EtYWQ0MS1hY2Q0MDBlZGNjYzEvcG9kY2FzdC5yc3M';
$html = file_get_html($url);


$i = 0;
$titlesarr = array();
foreach($html->find('.e3ZUqe') as $title) {
  $titlesarr[] = $title;
  $titlesarrstr = strval($titlesarr[$i]);
  $titles[] = $titlesarrstr;
  $i++;
}
print_r($titles);

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






 ?>
