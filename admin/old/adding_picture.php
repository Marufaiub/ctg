<?php
ob_start();
?>
<?php
session_start();

if (isset($_SESSION['admin_access'])) 
{
}
else
{
	header("Location:logout.php");
	}
	
include('timeout.php');
?>

<?php

$category_id = mysql_escape_string($_POST['category']);
$sub_category_id = mysql_escape_string($_POST['sub_category']);
$product_id = mysql_escape_string($_POST['product_id']);

include('../connection.php');


       // UPLOADING PICTURE 
	   
		$folder = $category_id."/".$sub_category_id."/".$product_id;
		
		$structure = "PICTURE/".$folder;
		
		
			
			 $target = $structure."/"; 
			 $target = $target . basename( $_FILES['uploaded']['name']) ; 
			 $ok=1; 
			 if(move_uploaded_file($_FILES['uploaded']['tmp_name'], $target)) 
			 {
				//echo "The file ". basename( $_FILES['uploaded']['name']). " has been uploaded";
				 
				 $query="INSERT INTO picture (product_id,picture_url) VALUES ('$product_id','$target')";
				 if(!mysql_query($query))
				 {
					
					$_SESSION['error']=1 ; 
				 }
				 else
				 {
				 	
					$_SESSION['error']= 2;

				 }
			 } 
			 else
			  {
				  $_SESSION['error']= 1;
			 		echo "Sorry, there was a problem uploading your file.";
			 }
			
			
		







header('Location: ' . $_SERVER['HTTP_REFERER']);


?>


