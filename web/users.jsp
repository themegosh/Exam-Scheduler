<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    -- make this the Google Search of Users
*/
    
    String result = "";
    
    if (request.getParameter("submitUsers") != null) { //POST form submission
        result += "button pressed, user searched: ";
        result += request.getParameter("search");
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
        <table style="width:100%">
            <tr>
                <th>Username</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Delete</th>


            </tr>

            <tr>
                <td>user1</td>
                <td>First</td>
                <td>Last</td>
                <td><input type="checkbox" value="Delete"></td>		
            </tr>
            <tr>
                <td>user2</td>
                <td>Stephen</td>		
                <td>Anthony</td>
                <td><input type="checkbox" value="Delete"></td>
            </tr>
            <tr>
                <td>user3</td>
                <td>James</td>		
                <td>Jones</td>
                <td><input type="checkbox" value="Delete"></td>
            </tr>

        </table>
        <div>
            <p><%= result%></p>
        </div>
    </body>
</html>
<jsp:include page="/footer.jsp" />
