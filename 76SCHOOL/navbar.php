<nav class="navbar navbar-default">
	<ul class="list">
				<b style="color: #8fd4d9; font-size: 20px; float:left;line-height:50px;margin-left:15px;font-family:"Josefi Sans";">
				76 SCHOOL</b>
			<?php
				if(isset($_SESSION["AID"]))
				{
					echo'<li><a href="admin_home.php">Admin Home</a></li>
				         <li><a href="change_pass.php">Settings</a></li>
						 <li><a href="logout.php">Logout</a></li>';
				}
				elseif(isset($_SESSION["TID"]))
				{
					echo'<li><a href="teacher_home.php">Teacher Home</a></li>
				         <li><a href="teacher_change_pass.php">Settings</a></li>
				         <li><a href="logout.php">Logout</a></li>';
				}
				else{
					echo'<li><a href="index.php">Admin</a></li>
						 <li><a href="teacher_login.php">Teacher</a></li>
						 <li><a href="contact.php">Contact Us</a></li>';
				}
			?>	
			</ul>
		</div>
		</nav>
