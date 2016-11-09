<%@ Page Title="Files & Folders" MasterPageFile="MasterPageFF.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">	


<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
			    	<a class="stickyNext" href="filemanagement01.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement00.aspx">&#8249;
			            <span>Previous</span>
			         </a>
			    </li>
			    <li id ="back-top">
				     <a class="stickyTop" href="#">&#x2B06; 
			            <span>To the Top</span>
			         </a>
			    </li>
			</ul>
			<!-- End of Sticky Nav -->
			
			<!-- Begin Main Conent -->
			<div class="nine columns large" id="mainContent">

				<!-- Begin Section Header -->
				<div class="row">
					<div class="eight columns">
							<p id="breadCrumb"><a href="dashboard.aspx">Dashboard</a> &nbsp;>&nbsp; <a href="filemanagement00.aspx">Files &amp; Folders</a>&nbsp;>&nbsp; 
<a href="filemanagement00.1.aspx"class="active">Skills Mastery List</a></p>
					</div>
					
					<!-- Begin Drop Down Table of Contents Menu -->

<!-- #include file="include/toc-dd-filemanagement.inc"-->


<!-- End of Drop Down Table of Contents Menu -->
				<!--! end of Section Header -->

				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Files and Folders</h4>
							<h2>Skills Mastery List</h2>
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
								<a name="content"></a><h3>Skills Mastery List</h3>
								<hr>

								<p class="lead">Below are the required skills you must master in order<br />  to complete the Files and Folders Certification Task:</p> 
								<div class="alert-box error">
									You must have access to file management software (Windows) for this section.
									<a href="" class="close">&times;</a>
								</div>								
								<p>Place a check in the box to indicate you have mastered the skill.</p>
								<br />
								<table class="sortable">
									<thead>
										<tr>
											<th>Status</th>
											<th class="sorttable_nosort">Items To Master</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Creating a Folder </td>
										</tr>
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Moving and Copying a File or Folder </td>
										</tr>
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Deleting a File or Folder</td>
										</tr>
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Renaming a File or Folder</td>
										</tr>
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Showing or Hiding the File Extension (Viewing Options)</td>
										</tr>										
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>The Full Path Name for a File </td>
										</tr>										
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Searching for a File</td>
										</tr>										
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Determine How Much Free Space is on a Storage Device</td>
										</tr>										
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Utilizing Windows Help</td>
										</tr>
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Printing the Screen (Both the Entire Screen and the Active Window)</td>
										</tr>
									</tbody>
								</table>
								<br />
								

<h4>Most Missed Skills:</h4>

<ul class="disc">
<li> Showing the File Extension</li>
<li> Describing the Full Path Name</li>
<li> Printing the Active Window vs the Entire Screen</li>

</ul>
<br />





<p><strong>If you have checked all or most of the boxes above, you do not have to go through all of the tutorials for each skill.</strong>
<p> You can review only the tutorial for the skill(s) with which you are unfamiliar and then go to the practice exercises and practice task to make sure you have mastered it. </p>
								<p>If you have many of the boxes unchecked, it is a good idea to start at the Introduction and work your way through each tutorial in order. The order of skills is set so it that it builds on each one and develops your total understanding. </p>
								<p>While working through the lessons on your computer, it is a good idea to review the explanations in the book, so that you can compare what you see on your computer with the explanations provided.</p> 
								</div>
							
						</div>

						</div>						
					</div>
				</div>
				<!--! end of Content Section -->
				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="filemanagement01.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement00.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!--! end of Bottom Paging Section -->

				
			</div>
			<!--! end Main Conent -->
		</div>
	</div>
	<!-- end of container -->

	<!-- Begin Table of Contents Menu --><!-- #include file="include/toc-file.inc"-->	
	<!-- End of Table of Contents Menu -->

	

	<!-- Included JS Files -->



</asp:Content>