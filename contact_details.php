<script>
document.getElementById('contact').setAttribute("class","selected");
</script>

<div class="contact_bg">                  
				<?
				include('connection.php');
				$sql = mysql_query("SELECT * FROM contact");
				while($data = mysql_fetch_array($sql))
				{
					$contact = $data['contact'];
				}
                
                
                
                ?>

            		<h3 class="contact_us" style="text-align:center !important">Contact Us</h3>
            		
<center>            		
            		
                    <p class="contact_content">
                    <?php echo $contact; ?>
 

</center>
 </p>     
 <br/>
 <center>
 <h2>&nbsp;</h2>
 </center>
 <br/>
 <span><br />
 </span>
 
 
    
                </div><!--end about_bg-->
            </div><!--end content_middle-->