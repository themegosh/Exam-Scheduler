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
        <hr>
        <div class="container">
  <div class="jumbotron">
    <h1>Site Settings</h1> 
    <center><form action="Users" method="post"> 
           
            Period Length in mins:
            <input type="text" name="periodLength" ><br>
            When does the day begin?
            <input type="text" name="dayStart" ><br>
            When does the day end?
            <input type="text" name="dayEnd" ><br>
            <input type="submit" name="submitUsers" class="btn btn-info" value="Search Users">
            <br/>
        </form></center>
  </div>
        </div>
        <form action="User" method="get" id="editForm"></form>
    </body>
</html>
<jsp:include page="/footer.jsp" />
