<?php
	include"database.php";
	session_start();
	if(!isset($_SESSION["AID"]))
	{
		echo"<script>window.open('index.php?mes=Access Denied...','_self');</script>";
		
	}	
?>

<!DOCTYPE html>
<html>
	<head>
		<title>76 SCHOOL</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		 <link rel="icon" href="img/sch.png" type="image/gif" sizes="16x16">
	</head>

	<body>
			<?php include"navbar.php";?><br>
			
			
			<div id="section">
				
					<?php include"sidebar.php";?><br><br><br>
					
					<h3 class="text">Welcome <?php echo $_SESSION["ANAME"]; ?></h3><br><hr><br>
					
				<div >
					
						<h3 >Students According to class</h3><br>
						
						<?php
							if(isset($_GET["mes"]))
								{
									echo"<div class='error'>{$_GET["mes"]}</div>";	
								}
					
						?>
						
						<table border="1px" class="tab1">
							<tr><th>CLASS</th>
								<th>SECTION</th>
								<th>ID</th>
								<th>NAME</th>
								
								
								
							</tr>
							<?php
								$s="CALL `getStudentsByClass`()";
								$res=$db->query($s);
								if($res->num_rows>0)
								{
								
									while($r=$res->fetch_assoc())
									{
										
										echo "
											<tr>
												<td>{$r["SCLASS"]}</td>
												<td>{$r["SSEC"]}</td>
												<td>{$r["ID"]}</td>
												<td>{$r["NAME"]}</td>
											</tr>";
										
									}
								}
								else
								{
									echo "No Record Found";
								}
							?>
						
				
						</table>
				
				</div>
							</div>
	
	</body>
</html>