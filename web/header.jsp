<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - make it look good
    
*/
    
    
    String menu = "";
    
    //make these links change based on access level
    /*menu = "<li>Something</li>"
            + "<li>Something Else</li>"
            + "<li>Etc</li>"
            + "<li><a href='./Login?logout=true'>Log Out</a></li>";*/
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <link rel="icon" href="${pageContext.request.contextPath}/img/HumberFavicon.png" type="image/jpg" sizes="128x128">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/UserHomeStyle.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/AdminHomeStyle.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
        <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.css">
        
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
    </head>
    <body>
        <header>
            <div id="divMainContainer">
                <img src="HumberLogo.png" alt="Humber Logo" height="42" width="150">
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
            <ul class='menu'>
                <%= menu %>
            </ul>
        </header>
