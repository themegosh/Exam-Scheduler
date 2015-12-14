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
    String result = "";
    String pageTitle = "Courses";
    ArrayList<Room> roomList;
    String list = "";

    //redirect to Login if theyre not logged in
    if (session.getAttribute("userId") != null){
        
    } else {
        response.sendRedirect("./Login");
    }
    
    //albert comment
    if (request.getParameter("save") != null && !request.getParameter("save").equals("")) { 

  result = "Inputting the data:  " +"Room Number  "+ request.getParameter("room")+", Room Type:   "+request.getParameter("roomtype");
                
 
        //NEED DATABASE TO SEARCH
    }     
    
    
%>
<jsp:include page="/header.jsp" />
<hr>

<div class="container">

      <div class="jumbotron">
<h4>Add a Room</h4> 
        <form action="Rooms" method="post">
            <input type="text" name="room" value="" placeholder="Room Number">          
            <input type="text" name="roomtype" value="" placeholder="Room Type">                     
            <input type="submit" name="save" value="Save"><br>            
        </form>


    <p><%= result %></p>
            <table style="width:100%">
                <tr>        
                    <th>Room Number</th>
                    <th>Room Type</th>
                    <th>Action</th>
                  
                </tr>

                <tr>
                    <td>129</td>
                    <td>Lab</td>
                    <td><a href='#'>Delete</a></td>
                </tr>

                <tr>
                    <td>132</td>
                    <td>Classroom</td>
                    <td><a href='#'>Delete</a></td>
              
                </tr>

                <tr>
                    <td>148</td>
                    <td>Lab</td>
                    <td><a href='#'>Delete</a></td>
      
                </tr>
            </table>
      </div>
</div>


<jsp:include page="/footer.jsp" />