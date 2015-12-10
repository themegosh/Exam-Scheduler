<%@ page import="humber.exam.library.*" %>
<%@ page import="java.io.*" %>

<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - Include Logics classes
    - Implement validation and descriptive error handling.
    - this page will create some public global variables
    
    
*/    
    //declarations
    String result = "";
    String pageTitle = "Login";
    
    //albert comment
    if (request.getParameter("submit") != null) { //POST form submission
        
        //some implementation of a user object
        //try to log in using the parameters, i assume something like this:
        
        try {
            User user = new User(request.getParameter("username"), request.getParameter("password"));
            
            result += "Logged in Successfully!";
        }
        catch (UserException e){
            StringWriter errors = new StringWriter();
            e.printStackTrace(new PrintWriter(errors));
            result += "A login error occurred: " + e.getMessage();
        }
        catch (Exception e) {
            StringWriter errors = new StringWriter();
            e.printStackTrace(new PrintWriter(errors));
            result += "An unknown exception occurred: " + e.getMessage() + errors.toString();
        }
        
    } else { //GET
        
        if (request.getParameter("logout") == "true"){
            //destroy session data
            result = "<h3>Logged out.</h3>";
        }
        
    }
%>

<!-- place the header HTML code in header.jsp -->
<jsp:include page="/header.jsp" />
<div id="divContainer">
    <h1>Login</h1>
    <div id="divLogin">
        <form action="Login" method="post">
            <div style="width:auto; height:auto; float:left;">
                Username <br>
                Password 
            </div>
            <div style="width:auto; height:auto; float:left;">
                <input type="text" name="username" value=""><br>
                <input type="password" name="password" value=""><br><br>
                <input style="float:left;" type="submit" name="submit" value="Login"><br><br>
                <a href="" style="text-align:left; float:left;">Forgot Password?</a>
            </div>
        </form>
    </div>
    <!--- This is where the result div will appear --->
    <p><%= result %></p>
</div>
<!-- place the footer HTML code in footer.jsp -->
<jsp:include page="/footer.jsp" />