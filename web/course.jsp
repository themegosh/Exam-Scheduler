<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - edit an exam schedule here
    
*/
    
    //redirect to Login if theyre not logged in
    if (session.getAttribute("userId") != null){
        
    } else {
        response.sendRedirect("./Login");
    }
    
%>

<jsp:include page="/header.jsp" />
Adding Course Content

<% //the user adds exams here: %>

<div id="contentContainer">
	
	<!-- -->
	<div id="contentStrip">
		<!-- -->
		<div id="contentStrip_InnerContainer">
			<!-- -->
			<div id="contentStrip_InnerContainer_Header">
				<!-- -->
				<span id="contentStrip_InnerContainerHeaderFont">
					User Home
				</span>
			</div>
			<!-- -->
			<div id="contentStrip_InnerContainer_Body">
				<!-- -->
				<form>
						<table>
    						<tr>
      							<td align="right">Semester:</td>
      							<td align="left"><input type="text" name="semester" /></td>
   						    </tr>
    						<tr>
      							<td align="right">Program:</td>
      							<td align="left"><input type="text" name="program" /></td>
    						</tr>
    						<tr>
      							<td align="right">Course:</td>
     						    <td align="left"><input type="text" name="course" /></td>
    						</tr>
                                                <tr>
      							<td align="right">Teacher:</td>
     						    <td align="left"><input type="text" name="teacher"></td>
    						</tr>
    						<tr>
      							<td align="right">Date:</td>
     						    <td align="left"><input type="date" name="date"></td>
    						</tr>
    				   					
  						</table>
					
						<br>
						What Kind of Semester are you Adding?
					
							<br>
  							<div id="radio">
    <input type="radio" id="radio1" name="radio"><label for="radio1">First</label>
    <input type="radio" id="radio2" name="radio" checked="checked"><label for="radio2">Second</label>
    
  
  							<br>
					
					
						<br>
					What Kind of Room do you Need?
					
						<br>
  						
    <input type="radio" id="radio3" name="radio0"><label for="radio3">Lab</label>
    <input type="radio" id="radio4" name="radio0"><label for="radio4">Classroom</label>
    <input type="radio" id="radio5" name="radio0"><label for="radio5">Either</label>
  </div>
  						<br>
  						<br>	
      				Room:
      					<select>
  							<option value="room1">Room1</option>
  							<option value="room2">Room2</option>
  							<option value="room3">Room3</option>
  							<option value="room4">Room4</option>
						</select>
						<br>
						<br>
					
					</form> 
					<br>
					<br>
					<input type="submit" value="Submit">
					
				
				</a>
			</div>
		</div>
	</div>
	
</div>

<jsp:include page="/footer.jsp" />
