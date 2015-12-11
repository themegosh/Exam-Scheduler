
<%@page import="humber.exam.library.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="humber.exam.library.Users"%>
<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - Include Logics\ classes
    - Implement validation and descriptive error handling.
    
*/
    
//[User Id, password, first name, access level: admin] [password, first name, last name: teacher]
    String result = "";
    Users u = new Users();
    ArrayList<User> userList;
    String list = "", disable = "disabled";
    int id=0;
    String firstName="", lastName="", access="";
    userList = u.getUserById(Integer.parseInt(request.getParameter("Edit")));
    for (User ul : userList) {
        id = ul.getId();
        firstName = ul.getFirstName();
        lastName = ul.getLastName();
        int accessLevel = ul.getAccessLevel();
        if (accessLevel == 1){
            access = "Admin";
        }else if (accessLevel == 0){
            access = "User";
        }
    }
    result += "<table>" +
    "<th>User ID</th><th>Password</th><th>First Name</th><th>Last Name</th><th>Access Level</th>" +
    "<tr>" +
    "<td><input type=\"number\" name=\"user_id\" form=\"form\" placeholder=\""+ id +"\" "+ disable +"></td>" +
    "<td><input type=\"text\" name=\"password\" form=\"form\" placeholder=\"\"></td>" +
    "<td><input type=\"text\" name=\"first_name\" form=\"form\" placeholder=\""+ firstName +"\"></td>" +
    "<td><input type=\"text\" name=\"last_name\" form=\"form\" placeholder=\""+ lastName +"\"></td>" +   
    "<td><input type=\"text\" name=\"access_level\" form=\"form\" placeholder=\""+ access +"\" "+ disable +"></td>" +
    "</table>";
    
    result += "<form action=\"User\" method=\"get\">"+
              "<input type=\"submit\" name=\"editButton\" value=\"Edit User\">"+
              "</form>";
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
        <%= result %>
    </body>
</html>
<jsp:include page="/footer.jsp" />
