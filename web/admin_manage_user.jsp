<!DOCTYPE html>
<html>

<head>
<title>Manage User</title>
<style>
	body{
		background:#fff;
	}
	#main_container{
		width: 960px;
		margin-left: auto;
		margin-right: auto;
	}
	#header{
		position:relative;
		
	}
	#header #navigation{
		position: absolute;
		top:50px;
		left:400px;
	}
	#navigation ul li{
		float:left;
		list-style: none;
		margin-left: 10px
	}

	#navigation ul li a{
		
		display: block;
		width:110px;

		text-align: center;
	}


	#user_list{

		position:relative;
		top:70px;
		background-color:#ffc;
		
		
	}
	#manage_user{
		position:relative;
		top:70px;
		background-color:#ffc;
	} 

	table, th, td{
		border:1px solid black;
		border-collapse: collapse;
		padding: 5px
	}

</style>

</head>

<body>
<div id="main_container">
	<div id="user_account">
	<div id="header">
		<h1>Admin Page--user management</h1>
		<div id="navigation">
			<ul>
				<li><a href="#">Manage User</a></li>
				<li><a href="#">View Schedule</a></li>
				<li><a href="#">Edit Schedule</a></li>				
				<li><a href="#">Log Out</a></li>
			</ul>

		</div>


	</div>

	<div id="manage_user">
		<h2>Add or Edit User</h2>
		<form action="" method="post">
		<ul>
			<li>
				User ID:<br>
				<input type="text" name="user_id">
			</li>
			<li>
				Username*:<br> 
				<input type="text" name="username">
			</li>

			<li>
				Password*:<br>
				<input type="password" name="password">
			</li>

			<li>
				First name*:<br>
				<input type="text" name="first_name">
			</li>

			<li>
				Last name:<br>
				<input type="text" name="last_name">
			</li>

			<!--If user ID already exists, update user, otherwise add new user -->
			<li>
				<input type="submit" name="update_user" value="Add/Update">
			</li>

		</ul>
		</form>

	</div>	
	<div id="user_list">
		

		<h2>User List</h2>
		<table>
			<tr>
				
				<th>User_ID</th>
				<th>User_Name</th>
				<th>Fist_Name</th>
				<th>Last_Name</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			
			<%
			//a loop retrieve user infor from database, then populate them here
			//while(hasNexeUser){ //a loop print every user as a line
			out.println("<form action='' method=''>");
			out.println("<tr>");
				
				out.println("<td>");
					out.println("344443");
				out.println("</td>");
				out.println("<td>");
					out.println("sldl");
				out.println("</td>");
				out.println("<td>");
					out.println("lskdk");
				out.println("</td>");
				out.println("<td>");
					out.println("eirkc");
				out.println("</td>");
				out.println("<td>");
					out.println("<input type='hidden' name='user_id' value='//TODO server implement user_id'/>"); // for retrieve user_id when Edit or Delete button is clicked
					out.println("<input type='submit' name='edit_user' value='Edit'/>"); //if edit button is clicked, put the user's infomation in the "Add or Edit User part, for further updating"
				out.println("</td>");
				out.println("<td>");
					out.println("<input type='submit' name='delete_user' value='Delete'/>");  //delete button for deleting user id
				out.println("</td>");
			out.println("</tr>");
			out.println("</form>");
			//} //while end here
			%>

		</table>
		<% //testing purpose
			//double quotation mark has to be put outside of single quotation mark
			//out.println("<input type='text'/>");
		    //out.println("UserName = Jianfeng Song ");
		    //out.println("Hello JSP.");
		%>
		
	</div>
	</div>
</div> <!--end of main container-->
</body>

</html>