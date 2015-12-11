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
    //String result = "Input Testing! ";
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
    
    
%>
<jsp:include page="/header.jsp" />

<h4> Please Enter your Program Information</h4> 
        <form action="Programs" method="post">
            <input type="text" name="semester" value="" placeholder="Semester">          
            <input type="text" name="program" value="" placeholder="Program">          
            <input type="text" name="description" value="" placeholder="Description">                  
            <input type="submit" name="save" value="Save"><br>            
        </form>

<h5> Please Enter Semester to Delete</h5>
<form action="Programs" method ="post">
    <input type="text" name="semester" value="" palceholder="semester">
    <input type="submit" name="delete" value="Delete" ><br>
</form>

    <p><%= result %></p>
            <table style="width:100%">
                <tr>        
                    <th>Semester</th>
                    <th>Program</th>
                    <th>Course</th>
                   </tr>

                <tr>
                    <td>1</td>
                    <td>CPAN</td>
                    <td> Obj-Oriented Analysis & Design- CPAN-205-0NB</td>		
                </tr>

                <tr>
                    <td>2</td>
                    <td>CPAN</td>
                    <tdRqmt Analysis & Proc Mdl (Wi) - CPAN-203-0NB</td>		
                </tr>

                <tr>
                    <td>3</td>
                    <td>CPAN</td>
                    <td> Open Source Programming - CPAN-204-0NA</td>		
                </tr>
            </table>

<jsp:include page="/footer.jsp" />