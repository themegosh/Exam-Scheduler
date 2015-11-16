<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - make it look good
    
*/
    
    
    String menu = "";
    
    //make these links change based on access level
    menu = "<li>Something</li>"
            + "<li>Something Else</li>"
            + "<li>Etc</li>"
            + "<li><a href='./Login?logout=true'>Log Out</a></li>";
%>
<header>
    <h4>Header pictures, titles etc</h4>
    <h5>We will also need some menus here, dynamically generated based on privilege.</h5>
    <ul class='menu'>
        <%= menu %>
    </ul>
</header>
