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
    ArrayList<Room> roomList;
    String list = "";

    
    //albert comment
    if (request.getParameter("save") != null && !request.getParameter("save").equals("")) { 

  result = "Inputting the data:  " +"Room Number  "+ request.getParameter("room")+", Room Type:   "+request.getParameter("roomtype");
                
 
        //NEED DATABASE TO SEARCH
    }     
    
    
%>
<jsp:include page="/header.jsp" />

<h4> Please Enter your course Information</h4> 
        <form action="Rooms" method="post">
            <input type="text" name="room" value="" placeholder="Room Number">          
            <input type="text" name="roomtype" value="" placeholder="Room Type">                     
            <input type="submit" name="save" value="Save"><br>            
        </form>

<h5> Please Enter Semester to Delete</h5>
<form action="Rooms" method ="post">
    <input type="text" name="room" value="" palceholder="Room Number">
    <input type="submit" name="delete" value="Delete" ><br>
</form>

    <p><%= result %></p>
            <table style="width:100%">
                <tr>        
                    <th>Room Number</th>
                    <th>Room Type</th>
                  
                </tr>

                <tr>
                    <td>129</td>
                    <td>Lab</td>
            
                </tr>

                <tr>
                    <td>132</td>
                    <td>Classroom</td>
              
                </tr>

                <tr>
                    <td>148</td>
                    <td>Lab</td>
      
                </tr>
            </table>


<jsp:include page="/footer.jsp" />