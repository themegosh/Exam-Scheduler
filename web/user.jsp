
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
    ArrayList<User> userList = new ArrayList();
    String list = "", disable = "disabled";
    
    //if logged in
    if (session.getAttribute("userId") == null){
        response.sendRedirect("./Login");
    } else {
        if (session.getAttribute("accessLevel").equals("1")) { //admin
            disable = "";
        } else { //user
            if (!request.getParameter("id").equals(session.getAttribute("userId"))){
                response.sendRedirect("./Home"); //dont let them change other users
            }
        }
    }
    
    int id=0;
    String firstName="", lastName="", access="";
     if (session.getAttribute("userId") != null){
        if (Integer.valueOf(session.getAttribute("accessLevel").toString()) == 0) { // a user
            userList = u.getUserById(Integer.parseInt(session.getAttribute("userId").toString()));
        } else { //admin
            userList = u.getUserById(Integer.parseInt(request.getParameter("id")));
        }
    }
     
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
    "<td><input type=\"number\" name=\"user_id\" form=\"form\" placeholder=\"\" value=\""+ id +"\" disabled></td></tr>" +
    "<tr><td>First Name</td>" +
    "<td><input type=\"text\" name=\"first_name\" form=\"form\" placeholder=\"\" value=\""+ firstName +"\"></td></tr>" +
    "<tr><td>Last Name</td>" +
    "<td><input type=\"text\" name=\"last_name\" form=\"form\" placeholder=\"\" value=\""+ lastName +"\"></td></tr>" +  
    "<tr><td>New Password</td>" +
    "<td><input type=\"password\" name=\"password\" form=\"form\" placeholder=\"\"></td></tr>" +
    "<tr><td>Confirm Password</td>" +
    "<td><input type=\"password\" name=\"password2\" form=\"form\" placeholder=\"\"></td></tr>" +
    "<tr><td>Access Level</td>" +
    "<td><input type=\"text\" name=\"access_level\" form=\"form\" placeholder=\"\" value=\""+ access +"\" "+ disable +"></td></tr>" +
    "</table>";
    
    if (session.getAttribute("userId") != null){
        if (Integer.valueOf(session.getAttribute("accessLevel").toString()) == 0) { // a user
            //result +="<a href='./User?id="+Integer.valueOf(session.getAttribute("userId").toString())+"'>Edit User</a>";
            result +="<form id=\"form\" action=\"User?id="+Integer.valueOf(session.getAttribute("userId").toString())+ "\" method=\"post\">"
                    + "<input type=\"submit\" name=\"editBtn\" value=\"Edit User\"> "
                    + "</form>";
        } else { //admin
            //result +="<a href='./User?id="+request.getParameter("id")+"'>Edit User</a>";
            result +="<form id=\"form\" action=\"User?id="+request.getParameter("id")+ "\" method=\"post\">"
                    + "<input type=\"submit\" name=\"editBtn\" value=\"Edit User\"> "
                    + "</form>";
        }
    }
    
    if (request.getParameter("editBtn")!=null){
        result += "User details changed.";
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
