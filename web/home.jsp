<%
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - Include Logics classes
    - Implement validation and descriptive error handling.
    
*/
    
    //this page will dynamically list menus to the user
    //test123 - marten
%>

<jsp:include page="/header.jsp" />
<% //if username is an admin display this: %>
<div id="contentContainer">
	
	<!-- -->
	<div id="contentStrip">
		<!-- -->
		<div id="contentStrip_InnerContainer">
			<!-- -->
			<div id="contentStrip_InnerContainer_Header">
				<!-- -->
				<span id="contentStrip_InnerContainerHeaderFont">
					Administrator Home
				</span>
			</div>
			<!-- -->
			<div id="contentStrip_InnerContainer_Body">
				<!-- -->
				<a href="" >
					<button id="contentStrip_InnerContainer_BodyButtons">
						Search All Exams
					</button>
				</a>
				<!-- -->
				<a href="">
					<button id="contentStrip_InnerContainer_BodyButtons">
						Create New Exam
					</button>
				</a>
				<!-- -->
				<a href="">
					<button id="contentStrip_InnerContainer_BodyButtons" style="margin-bottom:15px;">
						Search Users
					</button>
				</a>
			</div>
		</div>
	</div>
	
</div>

<% //else if the username is a standard user display this: %>


<!-- -->
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
				<a href="">
					<button id="contentStrip_InnerContainer_BodyButtons">
						Search Exams
					</button>
				</a>
				<!-- -->
				<a href="">
					<button id="contentStrip_InnerContainer_BodyButtons">
						Create New Exam
					</button>
				</a>
				<!-- -->
				<a href="">
					<button id="contentStrip_InnerContainer_BodyButtons" style="margin-bottom:15px;">
						Change Password
					</button>
				</a>
			</div>
		</div>
	</div>
	
</div>


<jsp:include page="/footer.jsp" />
