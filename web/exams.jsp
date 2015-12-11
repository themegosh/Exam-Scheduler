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
    String result = "Testing! ";
    String pageTitle = "Exam Timetable";
    ArrayList<Exam> examList;
    String list = "";


    
    //albert comment
    if (request.getParameter("search") != null && !request.getParameter("searchText").equals("")) { 

        result = "Searching for: " + request.getParameter("searchText");
        //NEED DATABASE TO SEARCH
    }     
%>
<jsp:include page="/header.jsp" />


        <form action="Exams" method="post">
        
            <input type="text" name="searchText" value="">            
            <input type="submit" name="search" value="Search"><br>            
        </form>
            
    <p><%= result %></p>
            <table style="width:100%">
                <tr>        
                    <th>Semester</th>
                    <th>Program</th>
                    <th>Course</th>
                    <th>Teacher</th>
                    <th>Date</th>		
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Exam Type</th>
                    <th>Room Type</th>
                    <th>Room</th>    
                </tr>

                <tr>
                    <td>1</td>
                    <td>CPAN</td>
                    <td>205-0NA</td>		
                    <td>Alireza</td>
                    <td>2015/12/14</td>
                    <td>9:25AM</td>		
                    <td>12:25PM</td>
                    <td>Final</td>
                    <td>Lab</td>		
                    <td>J130</td>
                </tr>

                <tr>
                    <td>1</td>
                    <td>CPAN</td>
                    <td>203-0NB</td>		
                    <td>Rob</td>
                    <td>2015/12/15</td>
                    <td>9:45AM</td>		
                    <td>12:45PM</td>
                    <td>Final</td>
                    <td>Lab</td>		
                    <td>J132</td>
                </tr>

                <tr>
                    <td>1</td>
                    <td>CPAN</td>
                    <td>206-0NB</td>		
                    <td>Scott</td>
                    <td>2015/12/16</td>
                    <td>9:25AM</td>		
                    <td>12:25PM</td>
                    <td>Final</td>
                    <td>Classroom</td>		
                    <td>E417</td>
                </tr>
            </table>



<!--    <div id="calendar">
         Calls the Calendar 
    </div>-->

<jsp:include page="/footer.jsp" />