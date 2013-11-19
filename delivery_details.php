 			<div id="delivery_page"> 
            	<div class="delivery_bg">
                 <?php
					include('connection.php');
					$sql = mysql_query("SELECT * FROM delivery");
					while($data = mysql_fetch_array($sql))
					{
						$delivery = $data['delivery'];
					}
					
					 ?>                  
            		<h3 class="delivery_us">Product Delivery Method</h3>
                    <p class="delivery_content"><?php echo $delivery; ?></p>        
                </div><!--end about_bg-->
            </div><!--end content_middle-->