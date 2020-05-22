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
				<div class="content1">
					
						<h3 > Add Staff Details</h3><br>
						
					<?php
						if(isset($_POST["submit"]))
						{
							$sq="insert into staff(TNAME,TPASS,QUAL,SAL) values('{$_POST["sname"]}',1234,'{$_POST["qual"]}','{$_POST["sal"]}')";
							if($db->query($sq))
							{
								echo "<div class='success'>Insert Success..</div>";
							}
							else
							{
								echo "<div class='error'>Insert Failed..</div>";
							}
							
						}
						
					?>
					<form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
					     <label>Staff Name</label><br>
					     <input type="text" name="sname" required class="input">
					     <br><br>
					     <label>Qualification</label><br>
					     <input type="text" name="qual" required class="input">
					     <br><br>
					     <label>Salary</label><br>
					     <input type="text" name="sal" required class="input">
					     <br><br>
					     <button type="submit" class="btn" name="submit">Add Staff Details</button>
					</form>
				
				
				</div>
				
				
			</div>
	
			
	</body>
</html>