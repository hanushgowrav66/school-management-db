<?php
	include"database.php";
	session_start();
	if(!isset($_SESSION["AID"]))
	{
		echo"<script>window.open('index.php?mes=Access Denied..','_self');</script>";
		
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
			
				<?php include"sidebar.php";?><br>
				
				<div >
					<h3 class="text">Welcome <?php echo $_SESSION["ANAME"]; ?></h3><hr>
						
						<h3 > School Information</h3>
					<img src="home.jpg" class="imgs" >
					<br>
					<p class="para">
						School Management System is a is a complete school management software designed to automate a school's diverse operations from classes, exams to school events calendar. 
					</p>
					
					<p class="para">
						This school software has a powerful online community to bring parents, teachers and students on a common interactive platform. It is a paperless office automation solution for today's modern schools. The School Management System provides the facility to carry out all day to day activities of the school.
					</p>
				</div>
				
			</div> 

	</body>
</html>