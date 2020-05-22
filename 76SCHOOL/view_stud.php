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
		<div class="sidebar">
			<?php include"sidebar.php";?>
		</div>
		<div class="content">
			<h3 class="text">Welcome <?php echo $_SESSION["ANAME"]; ?></h3><br><hr><br>
			<h3 > School Information</h3><br>
		</div>
		<script src="js/jquery.js"></script>
		 <script>
		$(document).ready(function(){
			$(".error").fadeTo(1000, 100).slideUp(1000, function(){
					$(".error").slideUp(1000);
			});
		});
	</script>
	</body>
</html>