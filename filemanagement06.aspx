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
			    	<a class="stickyNext" href="filemanagement07.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement05.aspx">&#8249;
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
<a href="filemanagement06.aspx"class="active">Selecting Multiple Files or Folders</a>

</p>
					</div>

					


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-filemanagement.inc"-->
					<!-- End of Drop Down Table of Contents Menu -->

				


<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Files &amp; Folders</h4>
							<h2>Selecting Multiple<br /> Files or Folders</h2>
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
																		
														
							<a name="content"></a><p class="lead">Now that you know how to move, copy and delete an individual file or folder, there may be times when you want to move, copy or delete more than one at a time.</p>
							
							<p>For example, what if you want to copy three files about your 2009 taxes into a folder you have for your 2010 taxes because there is information that is helpful to you in them? Rather than copy each file, one at a time, you can select more than one file and copy them as a group.</p>
							<hr>

								<p> You can select a group of files that are <strong>consecutive</strong> (next to one another) or <strong>non-consecutive </strong>(files that are not next to one another).
								<br />

								
								<dl class="nice contained tabs">
								  <dd><a href="#nice1" class="active">Consecutive</a></dd>
								  <dd><a href="#nice2">Non-Consecutive</a></dd>
 
								</dl>
								
								<ul class="nice tabs-content contained">

								  <li class="active" id="nice1Tab">

													
							<h4>Selecting Consecutive Files or Folders</h4>


<p>To select consecutive (all in a row or right next to each other) files or folders:</p>
	

<p>1. Click on the first file and hold down the <strong>SHIFT</strong> key.</p>


<p>2. Next, click on the last file or folder that you want.</p>
		

				<p>In the example below, the first file was "error.docx" and the last file was "didlbook.pdf". </p>
							 						<p>The group of consecutive files selected will be highlighted in blue, like the picture below. Now, you can move, copy or delete the whole group of files.</p>							
								<img class="space" src="images/filesandfolders/consecutive.jpg" alt="">
							
							
							
							<hr>
							
									
							<p>You can also click and drag the mouse pointer around the outside of all the files you want to include.</p>
							<p>To clear the files or folders that are selected and highlighted blue, click in a blank area of the window.</p>
						
</li>
							  <li id="nice2Tab">
			
			
							<hr>
							<h4>Selecting Non-Consecutive Files or Folders</h4>
				<p>To select nonconsecutive (files or folders that are NOT next to each other):
				
			

<p>1. Click on the first file and hold down the <strong>CONTROL (Ctrl)</strong> key.</p>


<p>2. Next, click with your mouse on each individual file or folder that you want to select.</p>

<p>Below, the user has selected 4 non-consecutive files. Each one is highlighted in blue. Now, the group of 4 files can be moved, copied or deleted.</p>
			
					<img class="space" src="images/filesandfolders/nonconsecutive.jpg" alt="">
							
				<p>To clear the selection, click in a blank area of the window.</p>
																						

</li>
						


</ul>								  


					
				
<hr>
<div>	

			
									<div class="row">
										<div class="twelve columns">	
									
											<h4>Selecting Multiple Files Or Folders</h4>
											<br>
											<div>
																	
											<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Selecting" data-uid="Selectingmultiplefilesorfolders" preload="none">
											  <source src="http://didljumpstart.com/video/fm/Selectingmultiplefilesorfolders.mp4" />
											</video>								
	
									<hr>
										</div>	
									</div>
		

</div>						</div>
					</div>
								
				</div>				
				

</div>

<!--! end of Content Section -->
				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="filemanagement07.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement05.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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

	

<!-- Begin Table of Contents Menu -->
	<!-- #include file="include/toc-file.inc"-->	<!-- End of Table of Contents Menu -->

	

	<!-- Included JS Files -->




</asp:Content>	