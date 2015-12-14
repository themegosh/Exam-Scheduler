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

    //redirect to Login if theyre not logged in
    if (session.getAttribute("userId") != null){
        
    } else {
        response.sendRedirect("./Login");
    }
    
    //albert comment
    if (request.getParameter("search") != null && !request.getParameter("searchText").equals("")) { 

        result = "Searching for: " + request.getParameter("searchText");
        //NEED DATABASE TO SEARCH
    }
%>
<jsp:include page="/header.jsp" />
<hr>

<script>
        
        moment().format();
        
        $(document).ready(function() {

            //This is a placeholder. Link below for pairing with JSON file for processing
            //http://fullcalendar.io/docs/event_data/events_json_feed/
            $('#calendar').fullCalendar({
                events:[
                    {
                    title  : 'Demo Event',
                    start  : '2015-12-16T13:30:00',
                    end    : '2015-12-16T14:45:00',
                    allDay : false
                    }
                /*Above is shown how the calendar collects its data. If we could
                implement it so that when the server communicates with the data-
                base that it could print the information into these fields. More
                information on how this works can be found here: 
                http://fullcalendar.io/docs/event_data/events_array/  */
                ]
            })
            $('#calendar').fullCalendar('changeView', 'basicWeek');

        });    
        </script>

            
    <div id="calendar">
        <!-- Calls the Calendar -->
    </div>



<!--    <div id="calendar">
         Calls the Calendar 
    </div>-->

<jsp:include page="/footer.jsp" />