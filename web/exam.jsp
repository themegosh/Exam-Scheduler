<%@ page import="humber.exam.library.*, java.io.*, java.util.*" %>
<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - edit an exam schedule here
    
*/
  
/*
    String result = "";

if (request.getParameter("submit") != null) { //POST form submission

    //some implementation of a user object
    //try to log in using the parameters, i assume something like this:

    try {
        User user = new User(request.getParameter("courseCode"), request.getParameter("userID"), request.getParameter("teacher"));


        result += "Added Exam Successfully!";
        response.sendRedirect("Home");
    }
    catch (UserException e){
        StringWriter errors = new StringWriter();
        e.printStackTrace(new PrintWriter(errors));
        result += "A login error occurred: " + e.getMessage();
    }

}    
*/    
    
    //redirect to Login if theyre not logged in
    if (session.getAttribute("userId") != null){
        
    } else {
        response.sendRedirect("./Login");
    }
    
%>

<jsp:include page="/header.jsp" />

<% //the user adds exams here: %>
<hr>



                    <div class="container">

      <div class="jumbotron">
          <h1><right>Add an Exam</right></h1>
          <p><center><form>
                                    <div class="well well-lg"><table class="table table-striped">
                                    <tr>
                                        <td>Course Code:</td>
                                        <td><input type="text" name="courseCode" /></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>Teacher Id:</td>
                                        <td><input type="text" name="teacher" /></td>
                                    </tr>
                                    

                                    <tr>
                                        <td>Date:</td>
                                        <td><input type="date" name="date" value="2015-01-01"></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>Start Time:</td>
                                        <td><input type="time" name="start_time" value="00:00:00"></td>
                                    </tr>

                                    <tr>
                                        <td>End Time:</td>
                                        <td><input type="time" name="end_time" value="23:59:00"></td>
                                    </tr>

                                    
                                    <tr>
                                        <td>Room:</td> 
                                        <td><select>
                                            <option value="room1">Room1</option>
                                            <option value="room2">Room2</option>
                                            <option value="room3">Room3</option>
                                            <option value="room4">Room4</option>
                                            </select>
                                        </td>
						<br>
						<br>
                                    </tr>
                                        </table>

                                </form> </center>
					<br/>
					
                                        <center><input type="submit" value="Submit" class="btn btn-info"></center></p>
</div> 
                  
</div>

                        </div>
			
		</div>
	</div>
	
</div>

<!--<jsp:include page="/footer.jsp" /> -->
