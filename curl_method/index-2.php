<?php

$path ="http://121.241.242.114/bulksms/bulksms?username=abw-demo&password=demo123&type=0&dlr=1&destination=8801686960969&source=DANY&message=TESTINGPURPOSE";

$ch = curl_init ($path);
curl_setopt ($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt ($ch, CURLOPT_REFERER, $path);
$page = curl_exec ($ch);
curl_close($ch);
unset($ch);
echo $page;

/*

$urls = array(
'http://www.skyshopbd.com/curl_method/db.php',
'http://www.skyshopbd.com/curl_method/db.php',
'http://www.skyshopbd.com/curl_method/db.php',
'http://www.skyshopbd.com/curl_method/db.php',
'http://www.skyshopbd.com/curl_method/db.php',
'http://www.skyshopbd.com/curl_method/db.php',
'http://www.skyshopbd.com/curl_method/db.php',

);

foreach($urls as $url)
{
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_exec($ch);
curl_close($ch);
unset($ch);
} 
*/
?>