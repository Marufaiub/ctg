<?php
ob_start();
?>
<?php
session_start();
if (isset($_SESSION['admin_access']) && isset($_SESSION['user_id'])  && isset($_SESSION['password']) ) 
{

	include('verification.php');
	$verification = new Verification();
	
	if($verification->isValid())
	{
		//echo "success";	
	}

else
{
	header("Location:index.php");
	die();
	}
	
	
// Session Time out


$inactive =600; // Set timeout period in seconds

if (isset($_SESSION['timeout'])) {
    $session_life = time() - $_SESSION['timeout'];
    if ($session_life > $inactive) {
        session_destroy();
        header("Location: logout.php");
		die();
		echo "session time out";
    }
}
$_SESSION['timeout'] = time();


?>



<?php
//session_start();
include '../connection.php';

$position = mysql_escape_string($_POST['position']);
$name = mysql_escape_string($_POST['name']);


//$image_name = mysql_escape_string($_POST['uploaded']);



$sql="INSERT INTO upcoming_products 

(
position,
name

)

VALUES
(
'$position',
'$name'

)";




if (!mysql_query($sql))
  {
	 
	  $_SESSION['error']= 1;

	 
	  
 // die('Error: ' . mysql_error());
  }
  
  
 else
  {
	  $position=mysql_insert_id();
	  
	  
		
		// Creating New Folder If not Exist
		$folder =$position."/".$name;
		
		$structure = "UPCOMING PICTURE/".$folder;
		
		//echo $structure;
		//mkdir($structure,0777, true);
		

		if (!is_dir('$structure')) 
		{
			mkdir($structure,0777, true);
			
			
			// Uploading Picture
			
			
			
			 $target = $structure."/"; 
			 $target = $target . basename( $_FILES['uploaded']['name']) ; 
			 $ok=1; 
			 if(move_uploaded_file($_FILES['uploaded']['tmp_name'], $target)) 
			 {
				//echo "The file ". basename( $_FILES['uploaded']['name']). " has been uploaded";
				 
				 $query="UPDATE upcoming_products SET up_image_url= '$target' WHERE name='$name'";
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
			 		// echo "Sorry, there was a problem uploading your file.";
			 }
			
			
			
		}
		
		else {
			
			}
			
			
		
			  
	  
	 
	  
  }

}


header('Location: ' . $_SERVER['HTTP_REFERER']);
die();


?>