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
							<h2>Gradebook</h2>
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
																	<h5>Below are your students' grades. Click on the tabs to view the desired portion of the student record. </h5>
</br>
</br>






<hr>

<h5>Student Gradebook</h5>



<!--! Tab Section -->
<br />

								
<dl class="nice contained tabs">
    <dd><a href="#nice1" class="active">CB</a></dd>
    <dd><a href="#nice2">FF</a></dd>
    <dd><a href="#nice3">Int</a></dd>
    <dd><a href="#nice4">WP</a></dd>
    <dd><a href="#nice5">SS</a></dd>
    <dd><a href="#nice6">Final</a></dd>
    
    
</dl>
								
<ul class="nice tabs-content contained">

    <li class="active" id="nice1Tab">
 <h4>Computer Basics</h4>      
<table class="sortable">
									<thead>
										
<tr>
											
<th >Last</th>
											
<th>First</th>
											
<th>User Name</th>



<th>Grade</th>
<th>Date Completed</th>
<th>Number of Attempts</th>
											
</tr>
									
</thead>
	


<tbody>



<tr>
															
<td>Doe</td>
															
<td>John</td>
															
<td>jdoe</td>

<td>pass</td>

<td>01/12/2012</td>
<td>2</td>

</tr>									

<tr>

<td>Smith</td>
															
<td>Sally</td>
															
<td>ssmith</td>

<td>pass</td>
<td>01/23/2012</td>
<td>2</td>

</tr>
<tr>					
						<td>Jones</td>
															
<td>Joe</td>
															
<td>jjones</td>

<td>pass</td>

<td>02/02/2012</td>
<td>1</td>
</tr>


		

													
</tbody>
												</table>

								
	


    </li>
							  

    <li id="nice2Tab">
			
        <hr>


<h4>Files and Folders</h4>


        <table class="sortable">
									<thead>
										
<tr>
											
<th >Last</th>
											
<th>First</th>
											
<th>User Name</th>



<th>Grade</th>
<th>Date Completed</th>
<th>Number of Attempts</th>
											
</tr>
									
</thead>
	


<tbody>



<tr>
															
<td>Doe</td>
															
<td>John</td>
															
<td>jdoe</td>

<td>Pass</td>

<td>02/10/2012</td>
<td>3</td>

</tr>									

<tr>

<td>Smith</td>
															
<td>Sally</td>
															
<td>ssmith</td>

<td>Pass</td>
<td>02/22/2012</td>
<td>3</td>

</tr>
<tr>					
						<td>Jones</td>
															
<td>Joe</td>
															
<td>jjones</td>

<td>Pass</td>

<td>02/20/2012</td>
<td>3</td>
</tr>


</tbody>
												
</table>


    </li>
	
    <li id="nice3Tab">
			
        
        
<h4>Internet</h4>


        <table class="sortable">
									<thead>
										
<tr>
											
<th >Last</th>
											
<th>First</th>
											
<th>User Name</th>



<th>Grade</th>
<th>Date Completed</th>
<th>Number of Attempts</th>
											
</tr>
									
</thead>
	


<tbody>



<tr>
															
<td>Doe</td>
															
<td>John</td>
															
<td>jdoe</td>

<td>Pass</td>

<td>02/15/2012</td>
<td>1</td>

</tr>									

<tr>

<td>Smith</td>
															
<td>Sally</td>
															
<td>ssmith</td>

<td>Pass</td>
<td>03/01/2012</td>
<td>1</td>

</tr>
<tr>					
						<td>Jones</td>
															
<td>Joe</td>
															
<td>jjones</td>

<td>Pass</td>

<td>03/13/2012</td>
<td>1</td>
</tr>


</tbody>
												
</table>







    </li>
 
	<li id="nice4Tab">
			
        <h4>Word Processing</h4>


        <table class="sortable">
									<thead>
										
<tr>
											
<th >Last</th>
											
<th>First</th>
											
<th>User Name</th>



<th>Grade</th>
<th>Date Completed</th>
<th>Number of Attempts</th>
											
</tr>
									
</thead>
	


<tbody>



<tr>
															
<td>Doe</td>
															
<td>John</td>
															
<td>jdoe</td>

<td>Pass</td>

<td>03/15/2012</td>
<td>1</td>

</tr>									

<tr>

<td>Smith</td>
															
<td>Sally</td>
															
<td>ssmith</td>

<td></td>
<td></td>
<td>0</td>

</tr>
<tr>					
						<td>Jones</td>
															
<td>Joe</td>
															
<td>jjones</td>

<td></td>

<td></td>
<td>0</td>
</tr>


</tbody>
												
</table>

    </li>


	<li id="nice5Tab">
			
        <h4>Spreadsheets</h4>


        <table class="sortable">
									<thead>
										
<tr>
											
<th >Last</th>
											
<th>First</th>
											
<th>User Name</th>



<th>Grade</th>
<th>Date Completed</th>
<th>Number of Attempts</th>
											
</tr>
									
</thead>
	


<tbody>



<tr>
															
<td>Doe</td>
															
<td>John</td>
															
<td>jdoe</td>

<td>Pass</td>

<td>04/14/2012</td>
<td>2</td>

</tr>									

<tr>

<td>Smith</td>
															
<td>Sally</td>
															
<td>ssmith</td>

<td></td>
<td></td>
<td>0</td>

</tr>
<tr>					
						<td>Jones</td>
															
<td>Joe</td>
															
<td>jjones</td>

<td></td>

<td></td>
<td>0</td>
</tr>


</tbody>
												
</table>

    </li>

	<li id="nice6Tab">
			
<h4>Final</h4>


        <table class="sortable">
									<thead>
										
<tr>
											
<th >Last</th>
											
<th>First</th>
											
<th>User Name</th>



<th>Grade</th>
<th>Date Completed</th>
<th>Number of Attempts</th>
<th>Total Task/Test Taken</th>
											
</tr>
									
</thead>
	


<tbody>



<tr>
															
<td>Doe</td>
															
<td>John</td>
															
<td>jdoe</td>

<td>Pass</td>

<td>05/01/2012</td>
<td>1</td>
<td>10</td>

</tr>									

<tr>

<td>Smith</td>
															
<td>Sally</td>
															
<td>ssmith</td>

<td></td>
<td></td>
<td>0</td>
<td>6</td>

</tr>
<tr>					
						<td>Jones</td>
															
<td>Joe</td>
															
<td>jjones</td>

<td></td>

<td></td>
<td>0</td>
<td>5</td>
</tr>


</tbody>
												
</table>

    </li>


					
</ul>								  


<!--! end of Tab Section -->



								</div>
						
						<hr>
												
		


									
		









				



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