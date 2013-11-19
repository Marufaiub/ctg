<style>
.divider
{
	width: 1px;
	position: absolute;
	height: 40px;
	background-color: #98D98B !important;
}

</style>		


<?php
error_reporting(0);
session_start();
if(isset($_SESSION['success']))
{
	if($_SESSION['success']=='2')
	{
		?>
        
        
        <script language="javascript">
// POPUP FUNCTION STARTS
$(document).ready(function () {			
			
var popupStatus = 0;

function loadPopup(){
	if(popupStatus==0){
		$("#backgroundPopup").css({
			"opacity": "0.7"
		});
		$("#backgroundPopup").fadeIn("slow");
		$("#myPopup").fadeIn("slow");
		
		$("#backgroundPopup").fadeOut("slow");
		$("#myPopup").fadeOut(11000);
		
		
	}
}

function disablePopup(){
	if(popupStatus==1){
		$("#backgroundPopup").fadeOut("slow");
		$("#myPopup").fadeOut("slow");
		popupStatus = 0;
	}
}

//centering popup
function centerPopup(){
	//request data for centering
	var windowWidth = document.documentElement.clientWidth;
	var windowHeight = document.documentElement.clientHeight;
	var popupHeight = $("#myPopup").height();
	var popupWidth = $("#myPopup").width();
	

	$("#myPopup").css({
		"position": "fixed",
		"top": windowHeight/2-popupHeight/2,
		"left": windowWidth/2-popupWidth/2,
		"z-index": 999
	});
	
	$("#backgroundPopup").css({
		"height": windowHeight
	});
}
			
			
			
			//centering with css
		centerPopup();
		//load popup
		loadPopup();
			
});		
		
</script>
        
        
        
		<!-- PUPUP DIV -->

			
			<div id="backgroundPopup"></div>
			
			
			<div id="myPopup">
					<center>
					<h1>Order Successful . <br/>
                    	We will contact with you as soon as possible . <br/>
                        Thank you for being with us . 
                    </h1>
					</center>	
				</div>
				
			 
			<!-- END PUPUP  -->
	<?php            
	}
	unset($_SESSION['success']);
}

?>

<?php 
include('connection.php');
?>

	<div class="container">
        <ul id="nav" >
		<li><a class="hsubs" href="index.php">Home</a></li><div class="divider"></div>

		
		<li>
			<a class="hsubs" href="man_page.php?category_id=1" id="one">Beauty</a><div class="divider"></div>
			<ul class="subs">
            
            <?php
				$woman_query =mysql_query("SELECT * FROM sub_category WHERE category_id=1");
				while($woman=mysql_fetch_array($woman_query))
				{
					$sub_category_id=$woman['sub_category_id'];
				?>
            
				<li><a href="man_page.php?category_id=1&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $woman['sub_category_name']; ?></a></li>
				
                <?php
				}
				?>
            

			</ul>		
		</li>
		<li><a class="hsubs" href="man_page.php?category_id=2" id="two">Doctor & Health</a><div class="divider"></div>
        	<ul class="subs">
				
               <?php
				$kids_query =mysql_query("SELECT * FROM sub_category WHERE category_id=2");
				while($kids=mysql_fetch_array($kids_query))
				{
					$sub_category_id=$kids['sub_category_id'];
				?>
            
				<li><a href="man_page.php?category_id=2&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $kids['sub_category_name']; ?></a></li>
				
                <?php
				}
				?>  
                
                
			</ul>
        </li>
		<li><a class="hsubs" href="man_page.php?category_id=3" id="three">Electronics</a><div class="divider"></div>
        	<ul class="subs">
				
               <?php
				$fairness_query =mysql_query("SELECT * FROM sub_category WHERE category_id=3");
				while($fairness=mysql_fetch_array($fairness_query))
				{
					$sub_category_id=$fairness['sub_category_id'];
				?>
            
				<li><a href="man_page.php?category_id=3&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $fairness['sub_category_name']; ?></a></li>
				
                <?php
				}
				?>   
                
                
			</ul>
        </li>
        <li><a class="hsubs" href="man_page.php?category_id=4" id="four">Fashion & Clothes</a><div class="divider"></div>
        	<ul class="subs">
				
                
               <?php
				$perfume_query =mysql_query("SELECT * FROM sub_category WHERE category_id=4");
				while($perfume=mysql_fetch_array($perfume_query))
				{
					$sub_category_id=$perfume['sub_category_id'];
				?>
            
				<li><a href="man_page.php?category_id=4&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $perfume['sub_category_name']; ?></a></li>
				
                <?php
				}
				?>   
                
                
			</ul>
        </li>
        <li><a class="hsubs" href="man_page.php?category_id=5" id="five">Home Appliances & Foods</a><div class="divider"></div>
        	<ul class="subs"> 
				
                 <?php
				$elec_query =mysql_query("SELECT * FROM sub_category WHERE category_id=5");
				while($elec=mysql_fetch_array($elec_query))
				{
					$sub_category_id=$elec['sub_category_id'];
				?>
            
				<li><a href="man_page.php?category_id=5&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $elec['sub_category_name']; ?></a></li>
				
                <?php
				}
				?> 
                
                
			</ul>
        </li>
        
        
        
        <li><a class="hsubs" href="man_page.php?category_id=6" id="six">Hotel & Tours</a><div class="divider"></div>
        	<ul class="subs">
			      <?php
				
				$others_query =mysql_query("SELECT * FROM sub_category WHERE category_id=6");
				$count= mysql_num_rows($others_query);
				
				if($count != 0)
				{
				while($others=mysql_fetch_array($others_query))
				{
					$sub_category_id=$others['sub_category_id'];
				?>
            
				<li><a href="man_page.php?category_id=6&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $others['sub_category_name']; ?></a></li>
				
                <?php
				}
				}
				
				?> 
            </ul>
        </li>
        
        
         <li><a class="hsubs" href="man_page.php?category_id=7" id="seven">Kids & Baby</a><div class="divider"></div>
        	<ul class="subs">
			      <?php
				
				$others_query =mysql_query("SELECT * FROM sub_category WHERE category_id=7");
				$count= mysql_num_rows($others_query);
				
				if($count != 0)
				{
				while($others=mysql_fetch_array($others_query))
				{
					$sub_category_id=$others['sub_category_id'];
				?>
            
				<li><a href="man_page.php?category_id=7&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $others['sub_category_name']; ?></a></li>
				
                <?php
				}
				}
				
				?> 
            </ul>
        </li>
        
        <li><a class="hsubs" href="man_page.php?category_id=8" id="eight">Others</a><div class="divider"></div>
        	<ul class="subs">
			      <?php
				
				$others_query =mysql_query("SELECT * FROM sub_category WHERE category_id=8");
				$count= mysql_num_rows($others_query);
				
				if($count != 0)
				{
				while($others=mysql_fetch_array($others_query))
				{
					$sub_category_id=$others['sub_category_id'];
				?>
            
				<li><a href="man_page.php?category_id=8&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $others['sub_category_name']; ?></a></li>
				
                <?php
				}
				}
				
				?> 
            </ul>
        </li>
        
        <li ><a class="hsubs" href="hot_deals_page.php" id="hot"><span style=" font-weight:bolder;" >Hot Deals </span></a> <div class="divider"></div>  </li>
        <li><a href="contact_page.php" style="border-right:0 !important;" id="contact">Contact</a> <div class="divider"></div> </li>
        
	</ul>
</div>