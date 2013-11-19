<?php
include('connection.php');

$product_id=mysql_escape_string($_REQUEST['product_id']);

$query=mysql_query("SELECT * FROM product WHERE product_id='$product_id'");

$count= mysql_num_rows($query);
if($count == 0)
{
	header("Location:index.php");	
	die();
}


while($data=mysql_fetch_array($query))
{
$product_name=$data['product_name'];
$details=$data['details'];
$terms=$data['terms'];
$price=$data['price'];	
$size=$data['size'];
$color=$data['color'];
$discount=$data['discount'];
$current_price = $price-$discount;
$percentage = intval( ($discount * 100 ) / $price );
$discount_available=$data['discount_available'];

$new_price = $price - $discount ;

$discount_date = $data['discount_date'];
$discount_duration=$data['discount_duration'];

$date = date('Y-m-d H:i:s');
$day_left= round(abs(strtotime($discount_date)-strtotime($date))/86400);
$day_left = $discount_duration - $day_left;
}
?>




   <!-- POPUP CONTENTS-->
                    <div id="grayBG" class="grayBox" style="display:none;"></div> 
                    <div id='LightBox<?php echo $product_id; ?>' class="box_content4" style="display:none;"> 
                    
                    
                    			<div id="order_page">                   
                 <div class="order_page_bg" >
                 	<div class="purchase">
                    	<h3 class="order_pur" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:18px; margin:5px 0 0 5px; border-bottom:2px #000 solid; width:538px; padding-bottom:0px; display:inline;">Your Purchase</h3>
                        
                        <a onclick="displayHideBox('<?php echo $product_id;?>'); return false;" style="float:right; margin-right:5px; color:#06F; cursor:pointer;"><img src="images/close.png" title="Close" style="width:80px;" /></a>
                        
                        <form name="form_<?php echo $product_id; ?>" action="buy_product.php" method="post" onsubmit="return validateForm(<?php echo $product_id; ?>)">
                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                        	<table width="100%" border="0" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px; margin-top:5px;">
                              <tr style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px; font-weight:bold; text-align:center;">
                                <td style="width:100px; text-align:left;">Item Name</td>
                                <td style="width:80px">Quantity</td>
                                <td style="width:80px">Unit Price</td>
                                <td style="width:100px">Total Payable Price</td>
                              </tr>
                              <tr>
                                <td style=" text-align:left; padding-top:0px;"><?php echo $data['product_name'];  ?></td>
                                <td style=" text-align:center; padding-top:0px;"><input onchange="total(<?php echo $new_price ;?>,<?php echo $product_id;?>)"  maxlength="4" name="quantity" id="quantity-<?php echo $product_id; ?>" required="required" size="5" type="text" value="1" style="text-align:center" />
                                
                                <input type="button" value="Update" />
                                

                                
                                </td>
                               	
                                <td style=" text-align:center; padding-top:0px;">৳ <?php echo $new_price ; ?></td>
                                <td style=" text-align:center; padding-top:0px;">৳ <p id="total_<?php echo $product_id; ?>" style="display:inline;"><?php echo $new_price ; ?></p></td>
                              </tr>
                            </table>

                       
                        
                        <h3 class="order_pur" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:18px; margin:5px 0 0 5px; border-bottom:2px #000 solid; width:538px; padding-bottom:0px;">Your Personal Information</h3>
                        
                        <table cellpadding="5" cellspacing="0" width="100%" style="margin:10px 10px 0 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                                                        
                            <tr>
                            	<td style="padding-bottom:0px;">Full Name<span style="color:#F00">*</span></td>
                              	<td style="padding-bottom:0px;">Email</td>
                            </tr>
                            
                            <tr>
                              	<td style="padding-bottom:0px;"><input id="user_firstname" name="user_name" size="30" type="text"  /></td>
                              	<td style="padding-bottom:0px;"><input name="email" size="30" type="text" value="" placeholder="Email address is not required" /></td>
                            </tr>
                            
                            <tr>
                              	<td style="padding-bottom:0px;">Gender<span style="color:#F00">*</span></td>
                              	<td style="padding-bottom:0px;">Phone<span style="color:#F00">*</span></td>
                            </tr>
                            
                            <tr>
                              	<td>
                                	<table>
                                  		<tr>
                                    		<td style="padding-bottom:0px;"><input checked="checked" name="gender" type="radio" value="Male" /></td>
                
                                    		<td valign="top" style="padding-bottom:0px;">Male</td>
                                    		<td style="padding-bottom:0px;"><input name="gender" type="radio" value="Female" /></td>
                                    		<td valign="top" style="padding-bottom:0px;">Female</td>
                                  		</tr>
                                	</table>
                              	</td>
                              
                              	<td valign="top"><input class="phone" id="user_phone" name="phone" size="30" style="width:160px;margin-bottom:0px" type="text" /></td>
                            </tr>
                            
                            <tr>
                              	<td style="padding-bottom:0px;">Address<span style="color:#F00">*</span></td>
                            </tr>
                            
                            <tr>
                              	<td><textarea cols="40" id="user_address" name="address" rows="1" style="width:290px;"></textarea></td>
                            </tr>
                          </table>
                          
                                                   
                          <h3 class="order_pur" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:18px; margin:5px 0 0 5px; border-bottom:2px #000 solid; width:538px; padding-bottom:0px;">Your Delivery Information</h3>
                          
                          <table style="margin:5px 10px 0 5px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                          	<tr>
                            	
                              	<td style="width: 600px; padding-bottom:0px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:16px; font-weight:bold; color:#FF0000;">Cash on Delivery</td>
                            </tr>
                            
                            <tr>
                              	<td colspan="4" style="padding-bottom:0px;">
                                	<input checked="checked" name="place" type="radio" value="Inside Dhaka" />&nbsp;Inside Dhaka &nbsp;
                                &nbsp;<input name="place" type="radio" value="Outside Dhaka" />&nbsp;Outside Dhaka
                                &nbsp;<input name="place" type="radio" value="Outside Bangladesh" />&nbsp;Outside Bangladesh
                              	</td>
                            </tr>
                            
                            <tr>
                                <td colspan="2">
                                  Shipping Address:<br /><textarea cols="40" name="shipping_address" rows="2" style="width:290px; margin-top:5px;"></textarea>
                                </td>
                                
                                
                                 <td>
                                <?php

									$n1 = rand(1,15);
									$n2 = rand(1,15);
									//start making our result unpredictable & non-aligned with hidden value
									$result_2 = $n1+$n2;
									$result_2 = ($result_2*3)-2;
									$result_2 = ($result_2+4)*5;
									$question="$n1 + $n2 = ?";
									?>
                                 <p style="color:#090;">Please, Answer the Summation Value of <?php echo $question.PHP_EOL; ?> </p>
                               <input name="answer" type="text"><br />
								<input type="hidden" name="result_2" value="<?php echo $result_2; ?>">
                                </td>
                                
                                
                            </tr>
                
                          </table>
                          
                          <table class="form" cellpadding="5" cellspacing="0" style="margin:0px 10px 0 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                            <tr>
                              <td colspan="6" style="padding-bottom:0px;">
                                <input name="checkbox" type="checkbox" value="check" />
                                    I agree to the <a href="#" style="text-decoration: underline; color:#999999;">Terms of Use</a>
                              </td>
                            </tr>
                            
                            <tr>
                              <td colspan="6">
                    
                             <button  type="submit" style="width:120px; heioght:37px; background-color:#FFCAFF ; border:none; cursor:pointer; margin-bottom:15px;"><img src="images/buy.png" title="Buy This Product" alt="Buy Product" style="width:98px; heioght:37px;"/></button>
                               <!--  <input type="submit" value="Buy Product"  /> -->
                              <span style=" margin-top:15px; margin-bottom:15px; position:absolute; ">
                                Or
                                    <a href="" onclick="displayHideBox('<?php echo $product_id;?>'); return false;" style="text-decoration: none; color:#900; font-weight:bold;  ">Cancel</a>
                    		</span>	
                    
                              </td>
                            </tr>
                            </table>
                             </form><!--end form-->
                          
                    </div><!--end purchase-->
                 	
                    
                 </div><!--end order_page_bg-->   
               
            </div><!--end order_page-->
                   
                  
                    </div>
                    
                    <!-- END POPUP CONTENTS-->








<?php

$dif_pic=mysql_query("SELECT * FROM picture WHERE product_id='$product_id' AND _default='default'");
while($d_pic=mysql_fetch_array($dif_pic))
{
	$dif_pic_url=$d_pic['picture_url'];
}


?>

 			<div id="view_page">                   
                 <div class="view_page_bg">
                 	<h1 class="view_pro_name" style="color:#FF0080 ; font-weight:100;"><?php echo $product_name; ?></h1>
                    
               
                    
                    
                 	<div class="view_box"><img src="<?php echo 'admin/'.$dif_pic_url; ?>" title="<?php echo $product_name; ?>" alt="<?php echo $product_name; ?>" id="zoom_01" style="width:320px; height:320px;" />
                    
                    <script>
						$('#zoom_01').elevateZoom();
					</script>
                    
                    
                     <div style="width:180px;  height:320px;  float:right; margin-top:<?php  if($discount_available=='yes') {echo 10 ; } else { echo 190; }  ?>px; margin-right:10px;">
                     
                     <div class="price">
                    <center>
                     
                     <a style=" padding:0; margin:0;  line-height:1.0;">Price </a> <br/>
                    <a style=" padding:0; margin:0;  line-height:1.0;"> ৳ <?php echo $current_price; ?></a><br/>
                    <?php
                     if($discount_available=='yes')
					 {
					 ?>
                    
                    <a style="color:#CCC; text-decoration:line-through; padding:0; margin:0;">৳ <?php echo $price; ?></a>
                    <?php
					 }
					 ?>
                    
                    </center>
                    
                     </div>
                     
                     <?php
					 if($discount_available=='yes')
					 {
					 ?>
                     
                     <div class="view_discount view_discount_bg" style="line-height:1.0;">Days Left <br /><?php echo $day_left; ?></div>
                     <div class="view_discount view_discount_bg" style="line-height:1.0;" >Discount<br /><?php echo $percentage; ?>%</div>
                    <div class="view_save view_save_bg" style="line-height:1.0;" >Save<br />৳ <?php echo $discount; ?></div>
                   
                   <?php
					 }
					 ?>
                   
                    <div class="view_order" onclick="displayHideBox('<?php echo $product_id;?>')" style="cursor:pointer;" ><a>Order Now</a></div><!--end order-->

                     
                     </div>
                     
                     
                     </div><!--end view_box-->
                   
                  
                   
                    <div class="view_small_image">
                    
                    <?php
					$sql=mysql_query("SELECT * FROM picture WHERE product_id='$product_id' LIMIT 5");
					while($sp_data=mysql_fetch_array($sql))
					{
						$picture=$sp_data['picture_url'];
					?>
                    
                    
                    	<img class="pro_img" src="<?php echo 'admin/'.$picture; ?>" onclick="changeImage('<?php echo 'admin/'.$picture; ?>')" title="<?php echo $product_name; ?>" alt="<?php echo $product_name; ?>" style="cursor:pointer;" />
                      
                        
					<?php
					}
					?>  
					
					 <br/>
                     
                     <!--FACEBOOK LIKE BUTTON-->
               <div class="fb-like" data-href="http://www.beautyshopbd.com//view_page.php?product_id=<?php echo $product_id; ?>" data-send="true" data-width="450" data-show-faces="true"></div>
                
               
               <!-- END FACEBOOK LIKE BUTTON-->
                     
                     
                    <!--FACREBOOK SHARE BUTTON-->
                    
                    <a title="Share this post/page"
                href="http://www.facebook.com/sharer.php?
                s=100
                &p[url]=http://www.beautyshopbd.com/view_page.php?product_id=<?php echo $product_id; ?>
                &p[images][0]=http://www.beautyshopbd.com/admin/<?php echo $dif_pic_url; ?>
                
                &p[title]=<?php echo $product_name;  ?>
                &p[summary]=<?php echo $details; ?>"
                target="_blank">
                <img src="images/facebook_share.png"
                alt="Share on Facebook" />
                </a>
               
               
                
               <!--   <a href="javascript:fbShare('http://www.beautyshopbd.com/view_page.php?product_id=<?php echo $product_id; ?>', '<?php echo $product_name;  ?>', '<?php echo $details; ?>', 'http://www.beautyshopbd.com/admin/<?php echo $dif_pic_url; ?>', 520, 350)">Share</a>  -->
                 
               
                    <!-- END OF FACREBOOK SHARE BUTTON-->
					                      
                        
                    </div><!--end view_small_image-->
                    <div class="clear"></div>
                    
                  
                    
                    
                    <div class="clear"></div>
                    
                    <div class="condition">
                    	<div class="view_description">
                    	
                    	<?php
                    		if($size !="")
                    		{
                    	?>
                    	
                    	 <h3 style="color:#51A0FF;">Size :</h3>
                            <p style="color:#060;"><?php echo nl2br($size); ?></p>
                            
                            <?php
                            }
                            if( $color !="")
                            {
                            ?>
                            
                            <h3 style="color:#51A0FF;">Color :</h3>
                            <p style="color:#060;"><?php echo nl2br($color); ?></p>
                    	<?php
                    	}
                    	?>
                    	
                        	<h3 class="view_condition" style="color:#51A0FF;">Product Description</h3>
                            <p class="view_list">
                       
                         <?php 
						 
						 $details = str_replace(array("\r\n","\r","\n"),"<br/><img src='images/dar.gif' style='margin-top:15px;' /> ",$details);
						 
						 ?>
                         
                            <span style="color:#F82790; font-family:'Trebuchet MS', Arial, Helvetica, sans-serif"><img src='images/dar.gif'/> <?php echo nl2br($details); ?> </span>
                           
                            	
                            </p>
                            
                            
                            
                        </div><!--end view_description-->
                        
                        <div class="view_description">
                        	<h3 class="view_condition" style="color:#51A0FF;">Terms of Conditions</h3>
                            <p class="view_list">
                             <?php 
						 
						 $terms = str_replace(array("\r\n","\r","\n"),"<br/> <img src='images/dar.gif' style='margin-top:15px;'/> ",$terms);
						 
						 ?>
                            <span style="color:#F82790; font-family:'Trebuchet MS', Arial, Helvetica, sans-serif""><img src='images/dar.gif'/> <?php echo nl2br($terms); ?> </span>
                            </p>
                        </div><!--end view_condition-->
                    </div><!--end condition--><div class="clear"></div>
                    
                    
                 </div><!--end view_page_bg-->   
               
            </div><!--end view_page-->