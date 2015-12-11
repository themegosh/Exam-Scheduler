<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - make it look good
    
*/
    
    
    String menu = "";
    String notificaton = "";
    
    if (session.getAttribute("userId") != null){
        if (Integer.valueOf(session.getAttribute("accessLevel").toString()) == 0) { // a user
            menu += "<li><a href='./Home'>Home</a></li>"
                + "<li><a href='./Exams'>Search Exams</a></li>"
                + "<li><a href='./Exam?new=true'>Add New Exam</a></li>"
                + "<li><a href='./User?id="+Integer.valueOf(session.getAttribute("userId").toString())+"'>User Settings</a></li>"
                + "<li><a href='./Settings'>Settings</a></li>";
        } else { //admin
            menu += "<li><a href='./Home'>Home</a></li>"
                + "<li><a href='./Exams'>Search Exams</a></li>"
                + "<li><a href='./Exam?new=true'>Add New Exam</a></li>"
                    + "<li><a href='./Users'>Search Users</a></li>"
                + "<li><a href='./User?id="+Integer.valueOf(session.getAttribute("userId").toString())+"'>Personal Settings</a></li>";
        }
        menu += "<li><a href='./Login?logout=true'>Log Out</a></li>"; //log out always shown
    } else { //not logged in
        if (request.getParameter("logout") != null && request.getParameter("logout").equalsIgnoreCase("true")){
            //destroy session data
            System.out.println(request.getRequestURL());
        } else {
            response.sendRedirect("/Login");
        }
    }
   
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <link rel="icon" href="${pageContext.request.contextPath}/img/HumberFavicon.png" type="image/jpg" sizes="128x128">
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

    </head>
    <body>
        <header>
            <ul class='menu'>
                <%= menu %>
            </ul>
        </header>
