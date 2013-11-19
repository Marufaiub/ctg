 			<div id="about_page"> 
            	<div class="about_bg">                  
            		<h3 class="about_us">About Us</h3>
                    <?php
					include('connection.php');
					$sql = mysql_query("SELECT * FROM aboutus");
					while($data = mysql_fetch_array($sql))
					{
						$aboutus = $data['aboutus'];
					}
					
					 ?>
                    
                    <p class="about_content"><?php echo $aboutus;?> </p>        
                </div><!--end about_bg-->
            </div><!--end content_middle-->
