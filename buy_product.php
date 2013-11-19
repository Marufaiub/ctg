<?php
ob_start();
?>
<?php
session_start();

?>


<?php

if(isset($_POST["answer"])){
    $answer = $_POST["answer"];
    // start doing same math on $answer
    $answer = ($answer*3)-2;
    $answer = ($answer+4)*5;
    if($answer != $_POST["result_2"])
	{
		header('Location: ' . $_SERVER['HTTP_REFERER']);
		die();
       
    }
	else
	{
       // echo "Right Answer";
    }
}

?>



<?php

// EMAIL FUNCTION
function email($to,$subject,$message,$headers)

{


mail($to,$subject,$message,$headers);

 // echo "Mailed To -".$subject."<br/>";

	
}



$product_id=mysql_escape_string($_POST['product_id']);
$quantity=mysql_escape_string($_POST['quantity']);
$user_name=mysql_escape_string($_POST['user_name']);
$email=mysql_escape_string($_POST['email']);
$gender=mysql_escape_string($_POST['gender']);
$phone=mysql_escape_string($_POST['phone']);
$address=mysql_escape_string($_POST['address']);
$place=mysql_escape_string($_POST['place']);
$shipping_address=mysql_escape_string($_POST['shipping_address']);
$date = date('Y-m-d H:i:s');

include('connection.php');

$sql= "INSERT INTO order_table 
(
product_id,
quantity,
user_name,
email,
gender,
phone,
address,
place,
shipping_address,
date
) 

VALUES (
'$product_id',
'$quantity',
'$user_name',
'$email',
'$gender',
'$phone',
'$address',
'$place',
'$shipping_address',
'$date'
)";

if(!mysql_query($sql))
{
	$_SESSION['success']=1;
}
else
{


// Sending Email to Client 
		 
		 
										 //  recipients
											$to  = $email;
											
											// subject
											$subject = ' Confirmation Message From BeautyShopBD Website';
											
																							
												$message = "
												<html>
												<head>
												  <title> Confirmation Message From BeautyShopBD Website</title>
												</head>
												<body>
												  
												 <h2>Dear ".$user_name." , <br/>We Receive your Order . We will contact with you as soon as possible .</h2>
												 <h3>Thank you for being with us .</h3>
												
												
												</body>
												</html>
												";
									
									// Always set content-type when sending HTML email
									
									$message= wordwrap($message,70);
									$headers = "MIME-Version: 1.0" . "\r\n";
									$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
									
									// More headers
									$headers .= 'From:BeautyShopBD website';
									
									// Mail it
								email($to,$subject,$message,$headers);
								
								
								
	
		 // Sending Email to ADMIN 
		 
		 
		 //  recipients
											
											$new_to='khalid@abhworld.com';
									$new_subject = 'New Order From BeautyShopBD Website';
																					
												$new_message = "
												<html>
												<head>
												  <title> New Order From BeautyShopBD website Website</title>
												</head>
												<body>
												 <ceter> 
												 <h2>You have a new order . </h2>
												 <p>Please visit <a href='www.beautyshopbd.com' target='_blank'>wwww.beautyshopbd.com</a> to see details </p>
												 
												</center>
												
												</body>
												</html>
												";
									
									
									
									// Mail it
									email($new_to,$new_subject,$new_message,$headers);





	$_SESSION['success']=2;	
}

header('Location: ' . $_SERVER['HTTP_REFERER']);





?>