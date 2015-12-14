<%@ page import="humber.exam.database.*, humber.exam.library.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.util.ArrayList"%>


<%
    //DatabaseConnection conn = DatabaseConnection.open();
    //conn.getExam(room_num, period_id, day_of_week);
    
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB  
*/    
    //declarations
    String result = "Input Testing! ";
    String pageTitle = "Courses";
    ArrayList<Course> courseList;
    String list = "";
    
    //redirect to Login if theyre not logged in
    if (session.getAttribute("userId") != null){
        
    } else {
        response.sendRedirect("./Login");
    }


    
    //albert comment
    if (request.getParameter("save") != null && !request.getParameter("save").equals("")) { 

   result = "Inputting the data:  " +"Semester:  "+ request.getParameter("semester")+", Program:   "+request.getParameter("program")+", Course:  "
                +request.getParameter("course")+", Teacher:  "+ request.getParameter("teacher")+", Date:  "+request.getParameter("date")
                +", Room:  "+request.getParameter("room");
 
        //NEED DATABASE TO SEARCH
    }     
    
    
%>
<jsp:include page="/header.jsp" />

<h4> Please Enter your course Information</h4> 
        <form action="Courses" method="post">
            <input type="text" name="semester" value="" placeholder="Semester">          
            <input type="text" name="program" value="" placeholder="Program">            
            <input type="text" name="course" value="" placeholder="Course">
            <input type="text" name="teacher" value="" placeholder="Teacher">            
            <input type="date" name="date" value="" placeholder="Date">           
            <input type="text" name="room" value=""placeholder="Room">            
            <input type="submit" name="save" value="Save"><br>            
        </form>

<h5> Please Enter Semester to Delete</h5>
<form action="Courses" method ="post">
    <input type="text" name="semester" value="" palceholder="semester">
    <input type="submit" name="delete" value="Delete" ><br>
</form>

    <p><%= result %></p>
    <hr>
            <table style="width:100%">
                <tr>        
                    <th>Semester</th>
                    <th>Program</th>
                    <th>Course</th>
                    <th>Teacher</th>
                    <th>Date</th>		
                    <th>Room</th>    
                </tr>

                <tr>
                    <td>1</td>
                    <td>CPAN</td>
                    <td>205-0NA</td>		
                    <td><center>Alireza</center></td>
                    <td>2015/12/14</td>
                    <td>J130</td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>CPAN</td>
                    <td>203-0NB</td>		
                    <td>Rob</td>
                    <td>2015/12/15</td>
                    <td>J132</td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>CPAN</td>
                    <td>206-0NB</td>		
                    <td>Scott</td>
                    <td>2015/12/16</td>
                    <td>E417</td>
                </tr>
            </table>


<jsp:include page="/footer.jsp" />