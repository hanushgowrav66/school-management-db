<?php
	include"database.php";
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
		
		
		<div >
			<h1 class="heading">Teacher's Login</h1>
			<div class="log">
				<?php
					if(isset($_POST["login"]))
					{
						$sql="select * from staff where TNAME='{$_POST["name"]}'and TPASS='{$_POST["pass"]}'";
						$res=$db->query($sql);
						if($res->num_rows>0)
						{
							$ro=$res->fetch_assoc();
							$_SESSION["TID"]=$ro["TID"];
							$_SESSION["TNAME"]=$ro["TNAME"];
							echo "<script>window.open('teacher_home.php','_self');</script>";
						}
						else
						{
							echo "<div class='error'>Invalid Username Or Password</div>";
						}
					}
				
				
				
				?>
			
				<form class="box" method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">

					<label>Username</label>
					<input type="text" name="name" required class="input" placeholder="Username">
					<label>Password </label>
					<input type="password" name="pass" required class="input" placeholder="Password">
					<button type="submit" class="btn" name="login">Login Here</button>
				</form>
			</div>
		</div>
		
		
		
<!-- 		<div class="footer">
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