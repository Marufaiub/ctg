<?php
include('connection.php');
?>
			<div id="content_left">
			<div class="cata_title">
			<h3 class="cata" style="margin-top:10px; height:30px;">CATEGORIES</h3>
			</div>
            	<ul id="verticalmenu" class="glossymenu">
                   
                   <li><a href="man_page.php?category_id=1">BEAUTY & CARE</a>
                    	 <ul>
                            
                            <?php
							$man_query =mysql_query("SELECT * FROM sub_category WHERE category_id=1");
							while($man=mysql_fetch_array($man_query))
							{
								$sub_category_id=$man['sub_category_id'];
							?>
						
							<li><a href="man_page.php?category_id=1&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $man['sub_category_name']; ?></a></li>
							
							<?php
							}
							?>
                            
                            
                        </ul>
                    </li>
                    
                    <li><a href="man_page.php?category_id=2">DOCTOR & HEALTH</a>
                    	 <ul>
                            
                            <?php
							$woman_query =mysql_query("SELECT * FROM sub_category WHERE category_id=2");
							while($woman=mysql_fetch_array($woman_query))
							{
								$sub_category_id=$woman['sub_category_id'];
							?>
						
							<li><a href="man_page.php?category_id=2&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $woman['sub_category_name']; ?></a></li>
							
							<?php
							}
							?>
                            
                        </ul>
                    </li>
                    
                    <li><a href="man_page.php?category_id=3">ELECTRONICS</a>
                    	<ul>
                           
                            <?php
							$kids_query =mysql_query("SELECT * FROM sub_category WHERE category_id=3");
							while($kids=mysql_fetch_array($kids_query))
								{
									$sub_category_id=$kids['sub_category_id'];
								?>
							
								<li><a href="man_page.php?category_id=3&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $kids['sub_category_name']; ?></a></li>
								
								<?php
								}
							?>  
                
                           
                        </ul>
                    </li>
                    
                    <li><a href="man_page.php?category_id=4">FASHION & CLOTHS</a>
                        <ul>
                            
                             <?php
							$fairness_query =mysql_query("SELECT * FROM sub_category WHERE category_id=4");
							while($fairness=mysql_fetch_array($fairness_query))
							{
					$sub_category_id=$fairness['sub_category_id'];
							?>
						
							<li><a href="man_page.php?category_id=4&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $fairness['sub_category_name']; ?></a></li>
							
							<?php
							}
							?> 
                            
                        </ul>
                    </li>
                    
                    <li><a href="man_page.php?category_id=5" >HOME APPLIANCES & FOODS</a>
                    	<ul>
                           
                            <?php
							$perfume_query =mysql_query("SELECT * FROM sub_category WHERE category_id=5");
							while($perfume=mysql_fetch_array($perfume_query))
							{
								$sub_category_id=$perfume['sub_category_id'];
							?>
						
							<li><a href="man_page.php?category_id=5&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $perfume['sub_category_name']; ?></a></li>
							
							<?php
							}
							?>
                           
                           
                        </ul>
                    </li>
                    
                    <li><a href="man_page.php?category_id=6">HOTEL & TOURS</a>
                    	<ul>
                            
                              <?php
								$elec_query =mysql_query("SELECT * FROM sub_category WHERE category_id=6");
								while($elec=mysql_fetch_array($elec_query))
								{
									$sub_category_id=$elec['sub_category_id'];
								?>
							
								<li><a href="man_page.php?category_id=6&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $elec['sub_category_name']; ?></a></li>
								
								<?php
								}
								?>
                            
                            
                        </ul>
                    </li>
                   
                
                    
                    
                    
                    
                    
                     <li><a href="man_page.php?category_id=7" >KIDS & BABY</a>
                        <ul>
                            
                             <?php
							$others_query =mysql_query("SELECT * FROM sub_category WHERE category_id=7");
							while($others=mysql_fetch_array($others_query))
							{
							$sub_category_id=$others['sub_category_id'];
							?>
						
							<li><a href="man_page.php?category_id=7&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $others['sub_category_name']; ?></a></li>
							
							<?php
							}
							?> 
                            
                            
                        </ul>
                    </li>
                    
                      <li><a href="man_page.php?category_id=8" >OTHERS</a>
                        <ul>
                            
                             <?php
							$others_query =mysql_query("SELECT * FROM sub_category WHERE category_id=8");
							while($others=mysql_fetch_array($others_query))
							{
							$sub_category_id=$others['sub_category_id'];
							?>
						
							<li><a href="man_page.php?category_id=8&sub_category_id=<?php echo $sub_category_id; ?>"><?php echo $others['sub_category_name']; ?></a></li>
							
							<?php
							}
							?> 
                            
                            
                        </ul>
                    </li>
                    
                    
                    
                    
                    
                    <li><a href="hot_deals_page.php" >Hot Deals</a></li>
                    </ul>
            	
            	<!--<div class="cata_bg">
                	<div  class="cata_title">
                    	<h3 class="cata">Catagory</h3>
                        
                        <ul class="cata_nav">
                           	<a href="#"><li>Man</li></a>
                            <a href="#"><li>Women</li></a>
                            <a href="#"><li>Kids</li></a>
                            <a href="#"><li>Fairness</li></a>
                            <a href="#"><li>Perfume & Body Spray</li></a>
                            <a href="#"><li>Electronics</li></a>
                            <a href="#"><li>Harbal</li></a>
                        </ul>
                    </div><!--end cata_title-->
                <!--</div><!--end cata_bg-->
                
                <!--end cata_bg-->
                
                <!--end cata_bg-->
                
               <div class="cata_title">
                <?php 
				 include('connection.php');
				 $query = mysql_query("SELECT position FROM upcoming_products ");
				 $count = mysql_num_rows($query);
				 
				 if($count != 0)
				 {
				 
				 
				 
				 ?>
               
                <div class="cata_bg">
                	<div class="cata_title">
                    
                    	<h3 class="cata" style="padding-bottom:15px;">UpComing Products</h3>
                        <div id="our_sponsored">
                       
                         <!--ADD START-->
   
       <?php 
	
	include('connection.php');    
	$sql= mysql_query("SELECT * FROM upcoming_products ORDER BY position");
	while($data= mysql_fetch_array($sql))
	{
	$name = $data['name'];
	$pic_url=$data['up_image_url'];
	
	
    ?>
   
    
   
            
	<div class="" style="  padding-top:10px;">
    
  
    <img src="<?php echo 'admin/'.$pic_url; ?>" style="width:205px;" />
      
	     
    
	
   
   	</div>
    
   <?php
   
   }
	?> 
   
   				
	<!--END ADD-->
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        	<!--<img src="images/brands/1.png" />
                            <img src="images/brands/2.png" />
                            <img src="images/brands/3.png" />
                            <img src="images/brands/4.png" />
                            <img src="images/brands/5.png" />
                            <img src="images/brands/9.png" />
                            <img src="images/brands/6.png" />
                            <img src="images/brands/7.png" />
                            <img src="images/brands/8.png" />-->
                        </div><!--end our_brand-->
                    </div><!--end cata_title-->
                    
                </div><!--end cata_bg-->
                
                
           <?php
				 }
		   ?>
                    	
                </div>
                
                <br/>
                 <div class="cata_title">
                    	<h3 class="cata">We Accept </h3>
                    	<br/>
                 <img src="images/accept.png" style="width:211px;"/>
                 <img src="images/cash.jpg" style="width:211px;"/>
                </div>
                
                
                <div class="cata_bg">
                	<div class="cata_title">
                    	<h3 class="cata" style="padding-bottom:15px;">Sponsored Ads</h3>
                        <div id="our_sponsored">
                        
                         <!--ADD START-->
   
      
    <?php 
	
	include('connection.php');    
	$sql= mysql_query("SELECT * FROM advertaisement ORDER BY position");
	while($data= mysql_fetch_array($sql))
	{
	
	$pic_url=$data['pic_url'];
	$code=$data['code'];
	$flash=$data['flash'];	
	$height=$data['height'];
	$url=$data['url'];	
	
    ?>
    
   
            
	<div class="" style="  padding-top:10px;">
    
    <?php
	
	
	// FOR PICTURE
	if($pic_url !='null' && $code=='null' && $flash=='null')
	{
	?>
	
    	<a href="<?php echo $url; ?>" target="_blank"><img src="<?php echo 'admin/'.$pic_url; ?>" style="width:205px;" /></a>
   
	<?php
	}
	
	// FOR CODE
	
	
	elseif($pic_url =='null' && $code !='null' && $flash=='null')
	{
	echo stripslashes($code) ;
	?>
	

	
	<?php
	}
	
	
	// FOR FLASH
	
	elseif($pic_url =='null' && $code =='null' && $flash !='null')
	{
	?> 
   
        <object width="407" height="<?php echo $height; ?>">
    <param name="SRC" value="<?php echo 'admin/'.$flash; ?>">
    <embed src="<?php echo 'admin/'.$flash; ?>" width="205" height="<?php echo $height; ?>"></embed>
    </object>
     
     <?php
	}
	
	else 
	{
	//echo "Some problem occured";	
	echo $code;
	}
	
	
	?>
    
   
   	</div>
    
   <?php
   
   }
	?> 
   
   				
	<!--END ADD-->
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        	<!--<img src="images/brands/1.png" />
                            <img src="images/brands/2.png" />
                            <img src="images/brands/3.png" />
                            <img src="images/brands/4.png" />
                            <img src="images/brands/5.png" />
                            <img src="images/brands/9.png" />
                            <img src="images/brands/6.png" />
                            <img src="images/brands/7.png" />
                            <img src="images/brands/8.png" />-->
                        </div><!--end our_brand-->
                    </div><!--end cata_title-->
                </div>
                
                
            </div><!--end content_left-->