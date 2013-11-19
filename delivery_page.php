<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="style.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/menu.css" >
<link rel="stylesheet" type="text/css" href="css/cssverticalmenu.css" />
<link rel="stylesheet" type="text/css" href="css/about_page.css" />
<link rel="stylesheet" type="text/css" href="css/contact_page.css" />
<link rel="stylesheet" type="text/css" href="css/delivery_page.css" />
<link rel="stylesheet" href="footer.css" type="text/css" />
<script type="text/javascript" src="js/cssverticalmenu.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Easy Touch BD | Largest online  Shop in Bangladesh</title>
<link rel="shortcut icon" href="images/icon.ico" />

<!--META KEYWORDS-->
<?php include('connection.php');

$key=mysql_query("SELECT sub_category_name FROM sub_category");
$key2=mysql_query("SELECT product_name FROM product");

 ?>

<meta name="keywords" content="Cash on delivery,e-commerce,e-commerce bangladesh,product bangladesh,online shopping,online shopping bangladesh,Largest e-commerce, 
<?php
while($k_data=mysql_fetch_array($key))
{ 

$cat=$k_data['sub_category_name'];

echo $cat.',';
}

while($p_data=mysql_fetch_array($key2))
{ 

$pro=$p_data['product_name'];

echo $pro.',';
}

?>
">
<!-- END OF META KEYWORDS-->

<meta name="description" content="Largest online shopping in Bangladesh. Frorm this website you can get all of your beauty products and others accesories. We provide cash on delivery system.">



<!--FOR MENU ITTEMS  --> 
<meta name="viewport" content="width=device-width" />	
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="js/menu.js" ></script>

<!--END MENU ITTEMS  -->

<!--POPUP-->

<script type="text/javascript" language="javascript"> 
/* Superior Web Systems */ 
function displayHideBox(boxNumber) 
{
	
    if(document.getElementById("LightBox"+boxNumber).style.display=="none") { 
        document.getElementById("LightBox"+boxNumber).style.display="block"; 
        document.getElementById("grayBG").style.display="block"; 
    } else { 
        document.getElementById("LightBox"+boxNumber).style.display="none"; 
        document.getElementById("grayBG").style.display="none"; 
    } 
}

</script>

 

<!-- END POPUP-->


<!--UPDATE POUUP-->

<script language="javascript">

function total(price,product_id)
{



 var quantity=document.forms["form_"+product_id]["quantity"].value;
 
 
;
//var quantity= document.getElementById('quantity').value;

var total = price * quantity ;

document.getElementById("total_"+product_id).innerHTML = total;
}
</script>

<!--END OF UPDATE POPUP-->



   <!-- Form Velidation--> 
    
 <script type="text/javascript">
function validateForm(product_id)
{
	
	
	// Quantity velidation -
	 var n=document.forms["form_"+product_id]["quantity"].value;
  if (n==null || n=="")
  {
  alert("Quantity field can't be empty");
  return false;
  
  }
  
 // User Name velidation -
	 var n=document.forms["form_"+product_id]["user_name"].value;
  if (n==null || n=="")
  {
  alert("User Name field can't be empty");
  return false;
  
  }
  
 //Email velidation -
	   var x=document.forms["form_"+product_id]["email"].value;
	  var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }

  
// Phone velidation -
	 var n=document.forms["form_"+product_id]["phone"].value;
  if (n==null || n=="")
  {
  alert("Phone No. field can't be empty");
  return false;
  
  }
  
// Address velidation -
	 var n=document.forms["form_"+product_id]["address"].value;
  if (n==null || n=="")
  {
  alert("Address field can't be empty");
  return false;
  
  }  
  
  
  // shipping_address velidation -
	 var n=document.forms["form_"+product_id]["shipping_address"].value;
  if (n==null || n=="")
  {
  alert("Shipping Address field can't be empty");
  return false;
  
  }
  
      // Summation Answear velidation -
	 var n=document.forms["form_"+product_id]["answer"].value;
  if (n==null || n=="")
  {
  alert("Write Summation Value to make sure that you are Human . ");
  return false;
  
  }
  
  // agree velidation -

   if(!document.forms["form_"+product_id].checkbox.checked)
{
    alert('You must agree to the terms first.');
    return false;
}
  
  
  
  
}

</script>

<script>

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

</script>



<body>
	<div id="mainbody">
    	<!--start header-->
			<?php include('header.php') ?>
     	<!--end header-->
        
        <!--start menu-->
			<?php include('menu.php') ?>
     	<!--end menu-->
        
        <div id="content">
        <!--start content_body_left-->
			<?php include('content_body_left.php') ?>
     	<!--end content_body_left-->
        
        <!--start content_body_middle-->
			<?php include('delivery_details.php') ?>
     	<!--end content_body_middle-->
           
        <!--start content_body_right-->
			<?php include('content_body_right.php') ?>
     	<!--end content_body_right-->
            
        </div><!--end content--><div class="clear"></div>
        
        <!--start footer-->
		<?php include('footer.php') ?>
     <!--end footer-->
        
    </div><!--end mainbody-->

</body>
</html>