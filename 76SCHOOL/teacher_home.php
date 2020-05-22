<?php
	include"database.php";
	session_start();
	if(!isset($_SESSION["TID"]))
	{
		echo"<script>window.open('teacher_login.php?mes=Access Denied...','_self');</script>";
		
	}	
	
	
	$sql="SELECT * FROM staff WHERE TID={$_SESSION["TID"]}";
		$res=$db->query($sql);

		if($res->num_rows>0)
		{
			$row=$res->fetch_assoc();
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
					<h3 class="text">Welcome <?php echo $_SESSION["TNAME"]; ?></h3><br><hr><br>
				<div  >
				
					<h3>Add Profile</h3><br>
					<div class="lbox1">
					<?php
						if(isset($_POST["submit"]))
						{
							$target="staff/";
							$target_file=$target.basename($_FILES["img"]["name"]);
							
							if(move_uploaded_file($_FILES['img']['tmp_name'],$target_file))
							{
								$sql="update staff set PNO='{$_POST["pno"]}',MAIL='{$_POST["mail"]}',PADDR='{$_POST["addr"]}',IMG='{$target_file}'where TID={$_SESSION["TID"]}";
								$db->query($sql);
								echo "<div class='success'>Insert Success</div>";
							}
							
						}
					
					
					?>
					
					
					
					
						
					<form   enctype="multipart/form-data" role="form"  method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
							<label>  Phone No</label><br>
							<input type="text" maxlength="10" required class="input3" name="pno" placeholder="Phone"><br><br>
							<label>  Email</label><br>
							<input type="email"  class="input3" required name="mail" placeholder="email"><br><br>
							<label>  Address</label><br>
							<textarea rows="3" name="addr" placeholder="address"></textarea><br>
							<label> Image</label><br>
							<input type="file"  class="input3" required name="img" >
						<button type="submit" class="btn" name="submit">Add Profile Details</button>
						</form>
				
					</div>
					
					
					
				<div class="rbox1">
					<h3> Profile</h3>
						<table border="3px">
							<tr><td colspan="2" align="center"><img src="<?php echo $row["IMG"] ?>" height="100" width="100" alt="upload Pending"></td></tr>
							<tr><th>Name </th> <td><?php echo $row["TNAME"] ?> </td></tr>
							<tr><th>Qualification </th> <td><?php echo $row["QUAL"] ?>  </td></tr>
							<tr><th>Salary </th> <td> <?php echo $row["SAL"] ?>  </td></tr>
							<tr><th>Phone No </th> <td> <?php echo $row["PNO"] ?> </td></tr>
							<tr><th>E - Mail </th> <td> <?php echo $row["MAIL"] ?> </td></tr>
							<tr><th>Address </th> <td> <?php echo $row["PADDR"] ?> </td></tr>
						</table>
				
				</div>
			</div>
	</div>
	</body>
</html>