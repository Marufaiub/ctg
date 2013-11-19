<?php
$category_id=$_REQUEST['category_id'];
$sub_category_id=$_REQUEST['sub_category_id'];

?>

<script>
 var id = '<?php echo $category_id; ?>';

if(id =='1')
{
	document.getElementById('one').setAttribute("class","selected");
}
else if(id =='2')
{
	document.getElementById('two').setAttribute("class","selected");
}
if(id =='3')
{
	document.getElementById('three').setAttribute("class","selected");
}
if(id =='4')
{
	document.getElementById('four').setAttribute("class","selected");
}
if(id =='5')
{
	document.getElementById('five').setAttribute("class","selected");
}
if(id =='6')
{
	document.getElementById('six').setAttribute("class","selected");
}
if(id =='8')
{
	document.getElementById('eight').setAttribute("class","selected");
}

</script>


 			<div id="man_page">  
            
            <?php
			include('connection.php');
			
		
        // how many records should be displayed on a page?
        $records_per_page =39;

        // include the pagination class
        require 'include/Zebra_Pagination.php';

        // instantiate the pagination object
        $pagination = new Zebra_Pagination();

        // set position of the next/previous page links
        $pagination->navigation_position(isset($_GET['navigation_position']) && in_array($_GET['navigation_position'], array('left', 'right')) ? $_GET['navigation_position'] : 'outside');



  
			
			
			
		//	$query=mysql_query("SELECT * FROM product WHERE category_id LIKE '%$category_id%' AND sub_category_id LIKE '%$sub_category_id%' ORDER BY product_id DESC");
			
			
					 $MySQL = "
								SELECT
									SQL_CALC_FOUND_ROWS
									*
								FROM
									product
									
				 WHERE category_id LIKE '%$category_id%' AND sub_category_id LIKE '%$sub_category_id%'									
									
								ORDER BY
									product_id DESC
								LIMIT
									" . (($pagination->get_page() - 1) * $records_per_page) . ", " . $records_per_page . "
							";
										
					
					
					
					 // if query could not be executed
					if (!($result = @mysql_query($MySQL)))
			
						// stop execution and display error message
						die(mysql_error());
			
					// fetch the total number of records in the table
					$rows = mysql_fetch_assoc(mysql_query('SELECT FOUND_ROWS() AS rows'));
			
					// pass the total number of records to the pagination class
					$pagination->records($rows['rows']);
			
					// records per page
					$pagination->records_per_page($records_per_page);
			
			
			
			
			
			
			
			
			
			
			
			
			while($data=mysql_fetch_assoc($result))
			{
				$product_id=$data['product_id'];
				$product_name=$data['product_name'];
				$details=$data['details'];
				$price=$data['price'];
				$old_price = $price;	
				$size=$data['size'];
				$color=$data['color'];
				$discount=$data['discount'];
				$price = $price - $discount;
				
				
				$discount_available=$data['discount_available'];
				
				$dif_pic=mysql_query("SELECT * FROM picture WHERE product_id='$product_id' AND _default='default'");
					while($d_pic=mysql_fetch_array($dif_pic))
					{
						$dif_pic_url=$d_pic['picture_url'];
					}
			
			
			
			
			?>
            
            
                             
                    <!--start product-->
                    <div class="man_page_bg gap" id="p_pic">
                    	<a  href="view_page.php?product_id=<?php echo $product_id; ?>" target="_blank"><img src="<?php echo 'admin/'.$dif_pic_url; ?>" alt="<?php echo $data['product_name']; ?>" title="<?php echo $data['product_name']; ?>" data-description="<?php echo $data['details']; ?>" style="width:170px; height:170px;" /></a>
                        <div class="featured_pro_name"><h3 class="pro_name"><?php echo $product_name; ?></h3></div><!--end product name-->
                        <h3 class="price">৳ <?php echo $price; ?> 
                        <?php 
                        if($discount_available == 'yes')
						{
						?>
                        <span style="color:#999; text-decoration:line-through; margin-left:40px;">৳ <?php echo $old_price; ?></span>
                        <?php
                        }
                        ?>
                         </h3>
                        
                        <div id="button">
                        	<div class="pro_order" onclick="displayHideBox('<?php echo $product_id;?>')" style="cursor:pointer;"><a>Order Now</a></div><!--end order-->
                        	<a class="pro_view_a" href="view_page.php?product_id=<?php echo $product_id; ?>" target="_blank"><div class="pro_view" style="padding-top:8px;" ><span style="padding-top:15px; padding-left:8px">View Details</span></div></a><!--end view-->
                        </div><!--end button--><div class="clear"></div>
                    </div><!--end product_bg-->
                    <!--end product-->
                    
                    
                    
                    
                        <!-- POPUP CONTENTS-->
                    <div id="grayBG" class="grayBox" style="display:none; "></div> 
                    <div id='LightBox<?php echo $product_id; ?>' class="box_content3" style="display:none;"> 
                    
                    
                   
                   
                   
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
                                <td style=" text-align:center; padding-top:0px;"><input onchange="total(<?php echo $data['price'];?>,<?php echo $product_id;?>)"  maxlength="4" name="quantity" id="quantity-<?php echo $product_id; ?>" required="required" size="5" type="text" value="1" style="text-align:center" />
                                
                                <input type="button" value="Update" />
                                

                                
                                </td>
                               	
                                <td style=" text-align:center; padding-top:0px;">৳ <?php echo $data['price']; ?></td>
                                <td style=" text-align:center; padding-top:0px;">৳ <p id="total_<?php echo $product_id; ?>" style="display:inline;"><?php echo $data['price']; ?></p></td>
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
            
            		 <?php

					// render the pagination links
					$pagination->render();
			
					?>
                    
                    
             
                    
                </div><!--end products-->
            </div><!--end content_middle-->