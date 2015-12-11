
<%@page import="java.util.ArrayList"%>
<%@page import="humber.exam.library.*"%>
<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    -- make this the Google Search of Users
*/

    
    String result = "";
        Users u = new Users();
        ArrayList<User> userList;
        String list = "";
        
        if (request.getParameter("submitUsers") != null && !request.getParameter("search").equals("")) { 
            userList = u.getUserById(Integer.parseInt(request.getParameter("search")));
            if (!userList.isEmpty()){
                list = "<table style=\"width:100%\"><tr>"
                        + "<th>User ID</th>"
                        + "<th>First Name</th>"
                        + "<th>Last Name</th>"
                        + "<th>Delete</th>";
                for (User ul : userList) {
                    list += "<tr><td>" + ul.getId() + "</td><td>" + ul.getFirstName() + "</td><td>" + ul.getLastName()
                            + "</td><td><input type=\"checkbox\" value=\"Delete\"></td></tr>";
                }
                list += "</table>";
            }else{
                list = "User does not exist.";
            }
        } else {
            userList = u.getAllUser();
            list = "<table style=\"width:100%\"><tr>"
                    + "<th>User ID</th>"
                    + "<th>First Name</th>"
                    + "<th>Last Name</th>"
                    + "<th>Delete</th>";
            for (User ul : userList) {
                list += "<tr><td>" + ul.getId() + "</td><td>" + ul.getFirstName() + "</td><td>" + ul.getLastName()
                        + "</td><td><input type=\"checkbox\" value=\"Delete\"></td></tr>";
            }
            list += "</table>";
        }
%>

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
            <p><%= result%></p>
            <p><%= list%></p>
        </div>
    </body>
</html>
<jsp:include page="/footer.jsp" />
