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
        <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <script src='http://fullcalendar.io/js/fullcalendar-2.1.1/lib/moment.min.js'></script>
        <script src="http://fullcalendar.io/js/fullcalendar-2.1.1/lib/jquery-ui.custom.min.js"></script>
        <script src='http://fullcalendar.io/js/fullcalendar-2.1.1/fullcalendar.min.js'></script>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/eggplant/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.5.0/fullcalendar.min.css">
        <link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.5.0/fullcalendar.print.css">

        <script>
        $(function() {
          $( "#tabs" ).tabs();
        });
        </script>
        <script>
        /*$(function() {
          $( "input[type=submit], a, button" )
            .button()
            .click(function( event ) {
              event.preventDefault();
            });
        });*/
        </script>
        <script>
        
        /*moment().format();
        
        $(document).ready(function() {

            $('#calendar').fullCalendar({
                events:[
                    {
                    title  : 'Demo Event',
                    start  : '2015-12-16T13:30:00',
                    end    : '2015-12-16T14:45:00',
                    allDay : false
                    }
                /*Above is shown how the calendar collects its data. If we could
                implement it so that when the server communicates with the data-
                base that it could print the information into these fields. More
                information on how this works can be found here: 
                http://fullcalendar.io/docs/event_data/events_array/  */
               /* ]
            })

        });    */
        </script>
    </head>
    <body>
        <header>
            <div id="divMainContainer">
                <img src="/humberLogo.png" alt="Humber Logo" height="42" width="150">
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
