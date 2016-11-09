<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageGrader.master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    


			
			<!-- Begin Main Conent -->
			<div class="nine columns large" id="mainContent">

				<!-- Begin Section Header -->
				<div class="row">

				<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Grading</h4>
							<h2>Task Grading</h2>
						</div>
					</div>
				</div>
				<!--! end of Section Title -->





				
				<!-- Begin Content Section -->
				
<div class="row">
					
<div class="twelve columns">
					
<div class="sectionContent">

						
<div class="row">
							
<div class="twelve columns">
																	<h5>Instructions</h5>


<p>Below is a list of all the <strong>Tasks Records</strong> for tasks that need to be graded. The record indicates the student, the task (Files and Folders, Word Processing, or Spreadsheets) and the version of the task. </p>

<p>After grading indicate either <strong>pass</strong> or <strong>retake</strong> in the Grade field and for students who pass, record the current date in the Date Completed field.</p>

<p><strong>Note: </strong>Students who do not finish the task in the allotted time will have a task record but no files to be graded for the task. In this case, update the <strong>Grade</strong> field in the <strong>Task Record</strong> with <strong>retake</strong>, create a checklist that indicates no files were uploaded, and save in the student's folder.</p> 

<p>The keys for the task are in the book provided for you <strong>OR</strong> online from the link in the top navigation.</p> 


<hr>


<h5>Task Records (these records are displayed in ascending Date Taken order and this panel scrolls for large numbers of tasks.</h5>
</br></br>





<table class="sortable">
									<thead>
										
<tr>
											
<th >Last</th>
											
<th>First</th>
											
<th>User Name</th>


<th>Task</th>
<th>Date Taken</th>

<th>Grade</th>
<th>Date Completed</th>
											
							</tr>
									
</thead>
	


<tbody>



<tr>
															
<td>Doe</td>
															
<td>John</td>
															
<td>jdoe</td>

<td>FFV03</td>

<td>01/12/2012</td>
<td> </td>
<td> </td>


</tr>									

<tr>

<td>Smith</td>
															
<td>Sally</td>
															
<td>ssmith</td>

<td>FFV01</td>
<td>01/12/2012</td>
<td> </td>
<td> </td>

</tr>
<tr>					
						<td>Jones</td>
															
<td>Joe</td>
															
<td>jjones</td>

<td>WPV10</td>

<td>01/15/2012</td>
<td> </td>
<td> </td>
</tr>


		

													
</tbody>
												</table>


								</div>
						
						<hr>
												
	












<div class="row">

<div class="seven columns">



<p><strong>Browse for the student file here and open it up in this scrollable panel.</strong></p>

<a class="btn" href="#">Browse</a>


</div>
							
						


<div id="auxContent" class="five columns">
					


<p><strong>Check list for the task is in this panel. The checklist comes from a database table.</strong></p>



<a class="btn" href="#">Files and Folders</a>
<a class="btn" href="#">Word Processing</a>

<a class="btn" href="#">Spreadsheets</a>

</br></br>
						

<p>Click on the checklist you want and when the checklist appears in this panel, there is a submit button at the bottom to update the database table with the results of the task for the student to call up from the student gradebook. </p>




	


									
		









				



</div>
																		
				</div>

</div>



						
<hr>

</div>
						
</div>
													
						




				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">

						</div>
					</div>
				</div>
				<!--! end of Bottom Paging Section -->

				
			</div>
			<!--! end Main Conent -->
		</div>
	</div>
	<!-- end of container -->

	

</asp:Content>
