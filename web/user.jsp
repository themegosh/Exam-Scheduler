<%! String username=session.getAttribute("username"); %>
/*
    ExamScheduler - Nov, 2015
    Humber College - Computer Programmer
    Obj-Oriented Analysis & Design - CPAN-205-0NB
    
    TODO for this file:
    - Include Logics classes
    - Implement validation and descriptive error handling.
    
*/
  


%>

<jsp:include page="/header.jsp" />

 <table>
        <tr>
            <td>Username: </td><td> <input type="text" value="<%=username %>" /> </td>
        </tr>

    </table>
Single user editing 
<jsp:include page="/footer.jsp" />
