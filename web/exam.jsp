<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - edit an exam schedule here
    
*/
    
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
                                        <td>Start Time:</td>
                                        <td><input type="time" name="start_time"></td>
                                    </tr>

                                    <tr>
                                        <td>End Time:</td>
                                        <td><input type="time" name="end_time"></td>
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
					<input type="submit" value="Submit">
			</div>
		</div>
	</div>
	
</div>

<!--<jsp:include page="/footer.jsp" /> -->
