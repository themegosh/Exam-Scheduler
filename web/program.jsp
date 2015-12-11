<jsp:include page="/header.jsp" />

<div id="divContainer">
<div id="programList">
    <h2>Program List</h2>
        <table>
            <tr>
                <th>Program_ID</th>
                <th>Program_Name</th>
                <th>Co-ordinator_Name</th>
                <th>Description</th>
                <th>Delete</th>
            </tr>
        </table>				
    </div>
<h2> Add Program </h2>
<div id="divProgram">
    <form action="Login" method="post">
        <div id="divInfo">
            <label> Program Name: </label>
            <input  class="input" name="programName"/><br/>

            <label> Coordinator Name: </label>
            <input class="input" name="coordinatorName"/><br/>

            <label> Credential: </label>
            <input class="input" name="credentialType"/><br />

            <label> Description: </label><br />
            <textarea class="input" name="desc" cols="60" rows="10"  > </textarea>  
        </div>
        <div id="buttonArea">
            <input style="float:left;" type="submit" name="submit" s value="Add">&nbsp;&nbsp;&nbsp; 		
            <input type="reset" value="Clear" />
        </div>	
    </form>
</div>

<jsp:include page="/footer.jsp" />