<%@ page import="humber.exam.database.*, humber.exam.library.*, java.util.*, java.io.*" %>
<%
    //DatabaseConnection conn = DatabaseConnection.open();
    //conn.getExam(room_num, period_id, day_of_week);
    
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB  
*/    
    //declarations
    String pageTitle = "Program";
    ArrayList<Program> programList;
    String list = "";
    String result = "";

    
    //albert comment
    if (request.getParameter("save") != null && !request.getParameter("save").equals("")) 
    { 
   result = "Inputting the data:  " +"Semester Name:  "+ request.getParameter("semester")
           +", Programe Name:  "+ request.getParameter("program")+", Description: "+
           request.getParameter("description");
 
        //NEED DATABASE TO SEARCH
    }    
    
    //redirect to Login if theyre not logged in
    if (session.getAttribute("userId") != null){
        
    } else {
        response.sendRedirect("./Login");
    }
    
    
%>
<jsp:include page="/header.jsp" />
<hr>

<div class="container">

      <div class="jumbotron">
<h4>Add a Program</h4> 
        <form action="Programs" method="post">
            <input type="text" name="semester" value="" placeholder="Semester">          
            <input type="text" name="program" value="" placeholder="Program">          
            <input type="text" name="description" value="" placeholder="Description">                  
            <input type="submit" name="save" value="Save"><br>            
        </form>

    <p><%= result %></p>
            <table style="width:100%">
                <tr>        
                    <th>Semester</th>
                    <th>Program</th>
                    <th>Course</th>
                    <th>Action</th>
                   </tr>

                <tr>
                    <td>1</td>
                    <td>CPAN</td>
                    <td> Obj-Oriented Analysis & Design- CPAN-205-0NB</td>
                    <td><a href='#'>Delete</a></td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>CPAN</td>
                    <td>Rqmt Analysis & Proc Mdl (Wi) - CPAN-203-0NB</td>
                    <td><a href='#'>Delete</a></td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>CPAN</td>
                    <td> Open Source Programming - CPAN-204-0NA</td>	
                    <td><a href='#'>Delete</a></td>
                </tr>
            </table>
            
      </div>
</div>

<jsp:include page="/footer.jsp" />