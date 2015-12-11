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

if (session.getAttribute("userId") != null){
    firstName = session.getAttribute("firstName").toString();
    lastName = session.getAttribute("lastName").toString();
} 
%>

<jsp:include page="/header.jsp" />
<% //if username is an admin display this: %>
<div id="contentContainer">
    <div id="contentStrip">
        <div id="contentStrip_InnerContainer">
            <div id="contentStrip_InnerContainer_Header">
                <span id="contentStrip_InnerContainerHeaderFont">
                    Welcome Back <%= firstName %> <%= lastName %>
                </span>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/footer.jsp" />
