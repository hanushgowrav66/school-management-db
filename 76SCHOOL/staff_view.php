<?php
	include"database.php";
	session_start();
	if(!isset($_SESSION["AID"]))
	{
		echo"<script>window.open('index.php?mes=Access Denied...','_self');</script>";
		
	}
	$sql="SELECT * FROM staff WHERE TID={$_GET["id"]}";
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
				<?php include"sidebar.php";?><br><br><br>
				<h3 class="text">Welcome <?php echo $_SESSION["ANAME"]; ?></h3><br><hr><br>
				<div class="content1">
					
						<h3 > View Staff Details</h3><br>
						<div class="ibox">
							<img src="<?php echo $row["IMG"]; ?>" height="230" width="230">
							
						</div>
						<div class="tsbox">
						<table border="1px">
						
							<tr><th>Name </th> <td> <?php echo $row["TNAME"]; ?></td></tr>
							<tr><th>Qualification </th> <td> <?php echo $row["QUAL"]; ?></td></tr>
							<tr><th>Salary </th> <td> <?php echo $row["SAL"]; ?></td></tr>
							<tr><th>Phone No </th> <td> <?php echo $row["PNO"]; ?></td></tr>
							<tr><th>E - Mail </th> <td> <?php echo $row["MAIL"]; ?></td></tr>
							<tr><th>Address </th> <td> <?php echo $row["PADDR"]; ?></td></tr>
							
						</table>
						</div>
				</div>	
			</div>
			
	</body>
</html>