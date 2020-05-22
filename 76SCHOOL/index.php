<?php
	include "database.php";
	session_start();
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head><meta charset="utf-8">
		<title>76 SCHOOL</title>
		<link rel="stylesheet" type="text/css" href="style.css">
				<!-- <link rel="stylesheet" type="text/css" href="bootstrap.css"> -->


		 <link rel="icon" href="img/sch.png" type="image/gif" sizes="16x16">

		<link href="https://fonts.googleapis.com/css?family=Cinzel|Josefin+Sans|Merienda|Monoton|Pacifico&display=swap" rel="stylesheet">
	</head>


	<body class="back">
		
     
     
		<?php include"navbar.php";?>


		<div  >
			<h1 class="heading">Admin Login</h1>
			<div class="log">
			<?php
				if(isset($_POST["login"]))
				{
					$sql="select * from admin where ANAME='{$_POST["aname"]}' and APASS='{$_POST["apass"]}'";
					$res=$db->query($sql);
					if($res->num_rows>0)
					{
						$ro=$res->fetch_assoc();
						$_SESSION["AID"]=$ro["AID"];
						$_SESSION["ANAME"]=$ro["ANAME"];
						echo "<script>window.open('admin_home.php','_self');</script>";
					}
					else
					{
						
						echo "<div class='error'>Invalid Username or Password</div>";
					}
					
				}
				if(isset($_GET["mes"]))
				{
					echo "<div class='error'>{$_GET["mes"]}</div>";
				}
				
			?>
		
				<form class="box" method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
					<label>Username</label>
					<input type="text" name="aname" required class="input" placeholder="Username">
					<label>Password </label>
					<input type="password" name="apass" required class="input" placeholder="Password">
					<button type="submit" class="btn" name="login">Login Here</button>
				</form>
			</div>
		</div>








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