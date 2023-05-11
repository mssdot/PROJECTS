<?php
include 'conn.php';
$query = "SELECT * FROM PROJECT;";
 

$check = mysqli_query($connetion,$query);
 
if(mysqli_num_rows($check)){
	?>
	<table border="1"  style="border-collapse:collapse; text-align: center;">
			<tr>
				<th>FirstName</th>
				<th>LastName </th>
				<th>Email </th>
				<th> Password</th>
				<th>PhoneNumber </th>
				 
				 
			</tr>
			<?php
			while($row  = mysqli_fetch_assoc($check)){
			?>
							
				<tr>
					<td><?php  echo $row[ "FIRSTNAME"] ;?></td>
					<td><?php  echo $row["LASTNAME"];?></td>
					<td><?php  echo $row["EMAIL"];?></td>
					<td><?php  echo $row["PASS"];?></td>
					<td><?php  echo $row["PHONENO"];?></td>
					 
					 
				</tr>				
				<?php 
			}
				?>
	</table>
	
	<?php	
	     
		    
		    
	
}
else{
	echo "error";
}
mysqli_close($connetion);
 
?>
