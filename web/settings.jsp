<%@ page import="humber.exam.database.*, humber.exam.library.*" %>
<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - edit an exam schedule here
    
*/
    
    //redirect to Login if theyre not logged in
    if (session.getAttribute("userId") != null){
        
    } else {
        response.sendRedirect("./Login");
    }
    
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/header.jsp" />

<html>
    <head>
        <style>
table, th, td {
border: 1px solid black;
border-collapse: collapse;
}
        </style>
    </head>

    <body>
        <form action="Users" method="post"> 
            Find a User
            <input type="text" name="search" >
            <input type="submit" name="submitUsers" value="Search Users">
            <br/>
        </form>

        <div>
            <p>TEST</p>
        </div>
        <form action="User" method="get" id="editForm"></form>
    </body>
</html>
<jsp:include page="/footer.jsp" />
