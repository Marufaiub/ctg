<?php







$from= $_POST['from'];
$message= $_POST['message'];
$phone= $_POST['phone'];

/*
$from='kawser';
$message = 'this is test';
$phone ='8801686960969';
*/
$from = urlencode($from);
$message = urlencode($message);


//echo $message.'<br/>';



$path ='http://121.241.242.114/bulksms/bulksms?username=abw-demo&password=demo123&type=0&dlr=1&destination='.$phone.'&source='.$from.'&message='.$message;





echo $path.'<br/>';




$ch = curl_init ($path);
curl_setopt ($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt ($ch, CURLOPT_REFERER, $path);
$page = curl_exec ($ch);
curl_close($ch);
unset($ch);
echo $page;




?>