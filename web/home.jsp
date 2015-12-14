<%@ page import="humber.exam.library.*, java.io.*, java.util.*" %>
<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - Include Logics classes
    - Implement validation and descriptive error handling.
    
*/
    String firstName = "";
    String lastName = "";
    String access = "";

    if (session.getAttribute("userId") != null){
        firstName = session.getAttribute("firstName").toString();
        lastName = session.getAttribute("lastName").toString();
        access = AccessLevel.values()[Integer.valueOf(session.getAttribute("accessLevel").toString())].name();
    } else {
        response.sendRedirect("./Login");
    }
%>

<jsp:include page="/header.jsp" />
<% //if username is an admin display this: %>
<div id="contentContainer">
    <div id="contentStrip">
        <div id="contentStrip_InnerContainer">
            <div id="contentStrip_InnerContainer_Header">
                <span id="contentStrip_InnerContainerHeaderFont">
                    <div class="well well-lg">Welcome Back, <%= firstName %> <%= lastName %>
                        <p>Access Level: <%= access %></p></div>
                </span>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/footer.jsp" />
