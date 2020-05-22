<?php
	include "database.php";
	session_start();
?>

<!DOCTYPE html>
<html>
	<head>
		<title>76 SCHOOL</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		 <link rel="icon" href="img/sch.png" type="image/gif" sizes="16x16">
		<link href="https://fonts.googleapis.com/css?family=Cinzel|Josefin+Sans|Merienda|Monoton|Pacifico&display=swap" rel="stylesheet">
	</head>
	<body class="back">
		<?php include"navbar.php";?>
		
		<div class="login">
			<h1 class="heading">Contact Us</h1>
			<div class="cont">
			
				<form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
					
					76 SCHOOL<BR>
					Kengeri, 1st Floor,<BR>
					Old Road, Opp. New Building,<BR>
					Bengaluru,767676<BR>
					Mail - 76school@gmail.com<br>Phone - 9976767676
				</form>
			</div>
		</div>
	<!-- 	<div class="footer">
			<footer><p>Copyright &copy; Tutor Joe's </p></footer>
		</div> -->
		<script src="js/jquery.js"></script>
		 <script>
		$(document).ready(function(){
			$(".error").fadeTo(1000, 100).slideUp(1000, function(){
					$(".error").slideUp(1000);
			});
			
			$(".success").fadeTo(1000, 100).slideUp(1000, function(){
					$(".success").slideUp(1000);
			});
		});
	</script>
		
	
		
	</body>
</html>