
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
    if (session.getAttribute("userId") != null && session.getAttribute("accessLevel").equals("1")){

        Users u = new Users();
        ArrayList<User> userList;
        
        
        if (request.getParameter("submitUsers") != null && !request.getParameter("search").equals("")) { 
            userList = u.getUserById(Integer.parseInt(request.getParameter("search")));
            if (!userList.isEmpty()){
                result = "<table style=\"width:100%\"><tr>"
                        + "<th>User ID</th>"
                        + "<th>First Name</th>"
                        + "<th>Last Name</th>"
                        + "<th>Delete</th>";
                for (User ul : userList) {
                    result += "<tr><td>" + ul.getId() + "</td><td>" + ul.getFirstName() + "</td><td>" + ul.getLastName()
                            + "</td><td><button form=\"editForm\" type=\"submit\" name=\"id\" value=\"" + ul.getId() + "\">Edit</button></td></tr>";
                }
                result += "</table>";
            }else{
                result = "User does not exist.";
            }
        } else {
            userList = u.getAllUser();
            result = "<table style=\"width:100%\"><tr>"
                    + "<th>User ID</th>"
                    + "<th>First Name</th>"
                    + "<th>Last Name</th>"
                    + "<th>Delete</th>";
            for (User ul : userList) {
                result += "<tr><td>" + ul.getId() + "</td><td>" + ul.getFirstName() + "</td><td>" + ul.getLastName()
                        + "</td><td><a href='./User?id=" +ul.getId()+ "'>Edit User</a></td></tr>";
            }           
            //session.setAttribute("EditUser", ul.getId())
            result += "</table>";
        }
    }else{
        result = "Not logged in.";
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
        </div>
        <form action="User" method="get" id="editForm"></form>
    </body>
</html>
<jsp:include page="/footer.jsp" />
