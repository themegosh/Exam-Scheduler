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

<div id="contentContainer">

	<div id="contentStrip">
		<div id="contentStrip_InnerContainer">
			<div id="contentStrip_InnerContainer_Header">
				<span id="contentStrip_InnerContainerHeaderFont">
					User Home
				</span>
			</div>
			<div id="contentStrip_InnerContainer_Body">
				<form>
                                    <table>
                                    <tr>
                                        <td>Course Code:</td>
                                        <td><input type="text" name="courseCode" /></td>
                                    </tr>

                                    <tr>
                                        <td>User ID:</td>
                                        <td><input type="text" name="userID" /></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>Teacher:</td>
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

					</form> 
					<br/>
					<br/>
                                        <center><input type="submit" value="Submit"></center>
                                        <br>
			</div>
		</div>
	</div>
	
</div>

<!--<jsp:include page="/footer.jsp" /> -->
