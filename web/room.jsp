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
	
	<!-- -->
	<div id="contentStrip">
		<!-- -->
		<div id="contentStrip_InnerContainer">
			<!-- -->
			<div id="contentStrip_InnerContainer_Header">
				<!-- -->
				<span id="contentStrip_InnerContainerHeaderFont">
					Room
				</span>
			</div>
			<!-- -->
			<div id="contentStrip_InnerContainer_Body">
				<!-- -->
				<form>
						<table>
    						<tr>
      							<td align="right">Room Number</td>
      							<td align="left"><input type="text" name="semester" /></td>
   						    </tr>
    						<tr>
      							<td align="right">Room Type</td>
      							<td align="left"><input type="text" name="program" /></td>
    						</tr>
    						    				   					
  						</table>
										
					
					</form> 
														
			</div>
		</div>
	</div>
	
</div>

<jsp:include page="/footer.jsp" />
