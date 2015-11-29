<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - Include Logics classes
    - Implement validation and descriptive error handling.
    
*/
    
    //this page will dynamically list menus to the user
    //test123 - marten
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <link rel="icon" href="HumberFavicon.png" type="image/jpg" sizes="128x128">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<link rel="stylesheet" type="text/css" href="UserHomeStyle.css">
		<link rel="stylesheet" type="text/css" href="AdminHomeStyle.css">
		<script src="jquery-1.11.1.js"></script>
		<script src="jquery-ui.js"></script>
		<link rel="stylesheet" type="text/css" href="jquery-ui.css">
		
		<script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
  <script>
  $(function() {
    $( "input[type=submit], a, button" )
      .button()
      .click(function( event ) {
        event.preventDefault();
      });
  });
  
  
  </script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home</title>
    </head>
    <body>
        <h1>Home page</h1>
        <img src="HumberLogo.png" alt="Humber Logo" height="42" width="150">
		<div id="divMainContainer">
			<h1>Admin Home</h1>
			
			
			
 
				
				<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Add user</a></li>
    <li><a href="#tabs-2">Modify User</a></li>
    <li><a href="#tabs-3">Delete User</a></li>
    <li><a href="#tabs-4">Alter an Exam</a></li>
  </ul>
  <div id="tabs-1">
    Code for Adding a User
  </div>
  <div id="tabs-2">
  Code for Modifying a User
  </div>
  <div id="tabs-3">
  	Code for Deleting a User
  </div>
  <div id="tabs-4">
  <button>Alter an Exam</button>
  </div>
</div>
					
				
				
			
			
		</div>
    </body>
</html>
