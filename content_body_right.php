<?php
	include('connection.php');
// DATE DIFFERENCE FUNCTION 
							
							function dateDiff ($d1, $d2) {
							// Return the number of days between the two dates:
							
							  return round(abs(strtotime($d1)-strtotime($d2))/86400);
							
							}  
							// end function dateDiff

// WHEN TIME OVER OF DISCOUNT ,  REMOVING DISCOUNT
							
$discount=mysql_query("SELECT * FROM product WHERE discount_available='yes'");
							while($data_dis=mysql_fetch_array($discount))
							{
							
							$product_id=$data_dis['product_id'];
							$discount=$data_dis['discount'];
							$discount_duration=$data_dis['discount_duration'];
							$discount_date = $data_dis['discount_date'];
							$date = date('Y-m-d H:i:s');
							$day_left= dateDiff($discount_date,$date);
							$day_left = $discount_duration - $day_left;
							

							
							if($day_left < 0)
							{
							
								mysql_query("UPDATE product SET discount=0 , discount_available='no' WHERE product_id='$product_id'");	
								
							}
							
							}
							
							// END OF TIME OVER CONDITION
							

								
	
	
?>	


			<div id="content_right">
            	<div id="hot_deals">
                	
                		<div id="hot_pro" class="hot_title">
                            <h3 class="hot_cata">Hot Deals !</h3>
                            
                           
                            
                            <!--start product-->
                            
                            <?php
							
							
							
							
							
							$query=mysql_query("SELECT * FROM product WHERE discount_available='yes' ORDER BY product_id DESC  LIMIT 9");
							while($data=mysql_fetch_array($query))
							{
							
							$product_id=$data['product_id'];
							$product_name=$data['product_name'];
							$price=$data['price'];
							$discount=$data['discount'];
							$discount_duration=$data['discount_duration'];
							$discount_date = $data['discount_date'];
							$current_price = $price-$discount;
							$new_price = $price - $discount ;
							$percentage = intval( ($discount * 100 ) / $price );
							
							$date = date('Y-m-d H:i:s');
							
							$day_left= dateDiff($discount_date,$date);
							
							$day_left = $discount_duration - $day_left;
							
							// WHEN TIME OVER OF DISCOUNT ,  REMOVING DISCOUNT
							
							if($day_left < 0 or $day_left == 0)
							{
							
							mysql_query("UPDATE product SET discount=0 , discount_available='no' WHERE product_id='$product_id'");	
								
							}
							
							// END OF TIME OVER CONDITION
							
							
							
							
							
							$pic_query=mysql_query("SELECT * FROM picture WHERE product_id='$product_id' AND _default='default'");
							while($p_data=mysql_fetch_array($pic_query))
							{
							
								$picture=$p_data['picture_url'];
								
							}
							
							
							?>

<style>
/**
 * Emulating <blink> using WebKit CSS3 animation        
 *   This code is part of John Smith's blog
 *
 * Copyright 2010 by John Smith, All Rights Reserved
 *
 * @link   http://www.john-smith.me/emulating--lt-blink-gt--using-webkit-css3-animation
 * @date   18th October 2010 at 11:01 p.m.
 * @author John Smith
 */
@-webkit-keyframes blinker { from {opacity:1.0;} to {opacity:0.0;} }
        @keyframes blinker { from {opacity:1.0;} to {opacity:0.0;} }

.blink {
   text-decoration:blink;
   

  -webkit-animation-name:blinker;
          animation-name:blinker;  
  -webkit-animation-iteration-count:infinite;  
          animation-iteration-count:infinite;  
  -webkit-animation-timing-function:cubic-bezier(1.0,0,0,1.0);
          animation-timing-function:cubic-bezier(1.0,0,0,1.0);
  -webkit-animation-duration:1s; 
          animation-duration:1s; 
		  
}
</style>    
                       
                            <div class="hot_bg" id="p_pic" >
                                <h3 class="product_name" style="color:#FFF; font-weight:500;"><?php echo $product_name; ?></h3>
                                
                                <h2 class="blink" style="position:absolute; margin-left:40px; margin-top:140px; color:#FE0000;
                                
                                text-shadow: 0 0 0.5em #000, 0 0 0.5em #000, 
       							 0 0 0.5em #000 "  ><?php echo $day_left; ?> Days Left</h2>
                                
                                <a  href="view_page.php?product_id=<?php echo $product_id; ?>" target="_blank"><img src="<?php echo 'admin/'.$picture; ?>" alt="<?php echo $data['product_name']; ?>" title="<?php echo $data['product_name']; ?>" style="height:170px; width:100%; margin-left:auto; margin-right:auto;" /></a>
                                
                                <div class="discount discount_bg">Discount<br /><?php echo $percentage; ?>%</div>
                                <div class="save save_bg">Save<br />৳ <?php echo $discount; ?></div>
                                <div class="clear"></div>
                                <div class="current_bg">
                                    <div class="curnt_price">৳ <?php echo $current_price; ?><strong class="prev_price">৳ <?php echo $price; ?></strong></div><!--end curnt_price-->
                                </div><!--end current_bg-->
                                <div class="order" onclick="displayHideBox('<?php echo $product_id;?>')" style="cursor:pointer;"><a>Order Now</a></div><!--end order-->
                                <a href="view_page.php?product_id=<?php echo $product_id; ?>" target="_blank"><div class="view" style="padding-top:8px;"><span style="padding-top:15px; padding-left:10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; color:#fff; font-weight:bold">View Details</span></div></a><!--end view--><div class="clear"></div>
                            </div> <!--end hot_bg-->
                            
                            <!--end product-->
                          
                            
                              <!-- POPUP CONTENTS-->
                     <div id="grayBG" class="grayBox" style="display:none;"></div> 
                    <div id='LightBox<?php echo $product_id; ?>' class="box_content2" style="display:none;"> 
                    
                    
                   
                   
                   
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
                                <td style=" text-align:center; padding-top:0px;"><input onchange="total(<?php echo $new_price;?>,<?php echo $product_id;?>)"  maxlength="4" name="quantity" id="quantity-<?php echo $product_id; ?>" required="required" size="5" type="text" value="1" style="text-align:center" />
                                
                                <input type="button" value="Update" />
                                

                                
                                </td>
                               	
                                <td style=" text-align:center; padding-top:0px;">৳ <?php echo $new_price; ?></td>
                                <td style=" text-align:center; padding-top:0px;">৳ <p id="total_<?php echo $product_id; ?>" style="display:inline;"><?php echo $new_price; ?></p></td>
                              </tr>
                            </table>

                       
                        
                        <h3 class="order_pur" style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:18px; margin:5px 0 0 5px; border-bottom:2px #000 solid; width:538px; padding-bottom:0px;">Your Personal Information</h3>
                        
                        <table cellpadding="5" cellspacing="0" width="100%" style="margin:10px 10px 0 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                                                        
                            <tr>
                            	<td style="padding-bottom:0px;">Full Name<span style="color:#F00">*</span></td>
                              	<td style="padding-bottom:0px;">Email<span style="color:#F00"></span></td>
                            </tr>
                            
                            <tr>
                              	<td style="padding-bottom:0px;"><input id="user_firstname" name="user_name" size="30" type="text"  /></td>
                              	<td style="padding-bottom:0px;"><input name="email" size="30" type="text" placeholder="Email address is not required" /></td>
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
                                    I agree to the <a href="#" style="text-decoration: underline; color:#06F;">Terms of Use</a>
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
						 
							}
						 ?>
                            
                           
                            
                            
                            
                    </div><!--end hot_title--><div class="clear"></div>
                
                </div><!--end hot_deals-->
            </div><!--end content_right-->