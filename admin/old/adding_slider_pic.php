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

include('../connection.php');

$position= $_POST['position'];
$title= $_POST['title'];
$description= $_POST['description'];

       // UPLOADING PICTURE 
	   
		//$folder = $category_id.'/'.$sub_category_id.'/'.$product_id;
		
		$structure = 'SLIDER_IMAGE';
		
		
			
			 $target = $structure.'/'; 
			 $target = $target . basename( $_FILES['uploaded']['name']) ; 
			 $ok=1; 
			 if(move_uploaded_file($_FILES['uploaded']['tmp_name'], $target)) 
			 {
				//echo "The file ". basename( $_FILES['uploaded']['name']). " has been uploaded";
				 
				 $query="INSERT INTO slider_image (position,title,description,picture_url) VALUES ('$position','$title','$description','$target')";
				 if(!mysql_query($query))
				 {
					
					$_SESSION['error']=1 ; 
					//echo mysql_errno();
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


