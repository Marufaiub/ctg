<?php
ob_start();
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="style.css" type="text/css" />
<link rel="stylesheet" href="css/view_page.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/menu.css" >
<link rel="stylesheet" type="text/css" href="css/cssverticalmenu.css" />
<link rel="stylesheet" href="footer.css" type="text/css" />
<script type="text/javascript" src="js/cssverticalmenu.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="shortcut icon" href="images/favicon.ico" />



<!--META KEYWORDS-->
<?php include('connection.php');

$p_id = $_REQUEST['product_id'];

$key=mysql_query("SELECT sub_category_name FROM sub_category ");
$key2=mysql_query("SELECT product_name , details FROM product WHERE product_id='$p_id'");

 ?>


<!--Dianamic Title-->
<?php
$title=mysql_query("SELECT product_name FROM product WHERE product_id='$p_id'");
while($t_data = mysql_fetch_array($title))
{
	$tt= $t_data['product_name'];	
}



?>
<!-- END of Dianamic Title--> 
 
 <title><?php echo $tt;?> in Bangladesh | Shop Bangladesh</title>


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

$des = $p_data['details'];

echo $pro.',';
}

?>
">
<!-- END OF META KEYWORDS-->
<meta name="description" content="<?php echo $des; ?>">


<script>

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

</script>




<!--FOR MENU ITTEMS  --> 
<meta name="viewport" content="width=device-width" />	
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="js/menu.js" ></script>

<!--END MENU ITTEMS  -->

<!--vertical menu-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="js/ddaccordion.js"></script>

<!--end vertical menu-->

<!--IMAGE ZOOMER-->
<script type="text/javascript" src="js/zoomer.js"></script>
<script src='js/jquery-1.8.3.min.js'></script>
<script src='js/jquery.elevateZoom-2.5.5.min.js'></script>
    
<!--END IMAGE ZOOMER-->



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

/*	   var x=document.forms["form_"+product_id]["email"].value;
	  var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
*/
  
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








</head>


<script type="text/javascript">

//Initialize Arrow Side Menu:
ddaccordion.init({
	headerclass: "menuheaders", //Shared CSS class name of headers group
	contentclass: "menucontents", //Shared CSS class name of contents group
	revealtype: "clickgo", //Reveal content when user clicks or onmouseover the header? Valid value: "click", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["unselected", "selected"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["none", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: 500, //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})

</script>

<script type="text/javascript">

function fbShare(url, title, descr, image, winWidth, winHeight) {
        var winTop = (screen.height / 2) - (winHeight / 2);
        var winLeft = (screen.width / 2) - (winWidth / 2);
        window.open('http://www.facebook.com/sharer.php?s=100&p[title]=' + title + '&p[summary]=' + descr + '&p[url]=' + url + '&p[images][0]=' + image, 'sharer', 'top=' + winTop + ',left=' + winLeft + ',toolbar=0,status=0,width='+winWidth+',height='+winHeight);
    }

</script>


</head>

<body>

 <!--FACEBOOK PLUGIN-->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=158478044226466";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!--END FACEBOOK PLUGIN-->


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
			<?php include('view_details.php') ?>
     	<!--end content_body_middle-->
           
        <!--start content_body_right-->
			<?php include('content_body_right.php') ?>
     	<!--end content_body_right-->
            
        </div><!--end content--><div class="clear"></div>
        
        <!--start footer-->
		<?php include('footer.php') ?>
     <!--end footer-->
        
    </div><!--end mainbody-->
    <!-- Google Code for Beauty Shop BD Conversion Page -->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 955647303;
var google_conversion_language = "en";
var google_conversion_format = "3";
var google_conversion_color = "ffffff";
var google_conversion_label = "RcFgCPnstAcQx4rYxwM";
var google_conversion_value = 0;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/955647303/?value=0&amp;label=RcFgCPnstAcQx4rYxwM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>

</body>
</html>