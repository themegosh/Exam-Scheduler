
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

  
    String result = "";
    
    Users u = new Users();
    ArrayList<User> userList;
    String list = "", disable = "disabled";
    
    if (session.getAttribute("userId") != null && session.getAttribute("accessLevel").equals("1")){
        disable = "";
    }
    
    int id=0;
    String firstName="", lastName="", access="";
    userList = u.getUserById(Integer.parseInt(request.getParameter("id")));
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
    "<tr><td>User ID</td>" +
    "<td><input type=\"number\" name=\"user_id\" form=\"form\" placeholder=\""+ id +"\" "+ disable +"></td></tr>" +
    "<tr><td>First Name</td>" +
    "<td><input type=\"text\" name=\"first_name\" form=\"form\" placeholder=\""+ firstName +"\"></td></tr>" +
    "<tr><td>Last Name</td>" +
    "<td><input type=\"text\" name=\"last_name\" form=\"form\" placeholder=\""+ lastName +"\"></td></tr>" +  
    "<tr><td>New Password</td>" +
    "<td><input type=\"password\" name=\"password\" form=\"form\" placeholder=\"\"></td></tr>" +
    "<tr><td>Confirm Password</td>" +
    "<td><input type=\"password\" name=\"password2\" form=\"form\" placeholder=\"\"></td></tr>" +
    "<tr><td>Access Level</td>" +
    "<td><input type=\"text\" name=\"access_level\" form=\"form\" placeholder=\""+ access +"\" "+ disable +"></td></tr>" +
    "</table>";
    
    if (session.getAttribute("userId") != null){
        if (Integer.valueOf(session.getAttribute("accessLevel").toString()) == 0) { // a user
            result +="<a href='./User?id="+Integer.valueOf(session.getAttribute("userId").toString())+"'>Edit User</a>";
        } else { //admin
            result +="<a href='./User?id="+request.getParameter("id")+"'>Edit User</a>";
        }
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
        <%= result %>
    </body>
</html>

<jsp:include page="/footer.jsp" />
