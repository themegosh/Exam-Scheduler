<%-- 
    Document   : settings
    Created on : 11-Dec-2015, 4:44:45 PM
    Author     : Al
--%>

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
