 <?php
 
 //  recipients
											$to  = 'kowser127441@yahoo.com';
											
											// subject
											$subject = ' Confirmation Message ';
											
																							
												$message = "
												<html>
												<head>
												  <title> Confirmation Message From Skyshopbd Website</title>
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
									$headers .= 'From:testing';
									
									// Mail it
								if(!mail($to,$subject,$message,$headers))
								{
								echo 'not success';
								}
								
								else
								{
								echo 'Success';
								}
								
								?>