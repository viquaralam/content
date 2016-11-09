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
			    	<a class="stickyNext" href="filemanagement03.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement01.aspx">&#8249;
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
<a href="filemanagement02.aspx" class="active">Creating a Folder</a></p>
					</div>

					


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-filemanagement.inc"-->				<!-- End of Drop Down Table of Contents Menu -->
					
				


<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Files &amp; Folders</h4>
							<h2>Creating a Folder</h2>
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
								<a name="content"></a><p class="lead">In this section you will learn how to set up, or create, a new folder on the C: Drive.<p>
								<p>As an empowered user, you will learn to control the storage and organization of your data into folders and files on your computer. This way you can decide if you want to store your data in the default location or another folder that you create.</p>


<p>To create the folder, the process is the same for all versions of Windows. 

<ol>
									<li>Double click on the name of the destination drive and folder to open a window where you want to create a new folder and right click in a blank area of the window.</li>
									<li>From the pop-up menu, select New.</li>
									<li>From the next pop-up menu, select Folder. You must then type the name of the folder and hit Enter.</li>
																								</ol>
		
								<img class="space" src="images/filesandfolders/folder.jpg" alt="">
								<hr>					




<p>The process for creating a folder is easy. </p>
								<p>Try it by creating a new folder on the C: drive. Name the new folder Test.</p>
                                <h4>Creating a Folder - Demo </h4>
                                <br />
                                <div>
                                    <video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Creating a Folder" data-uid="Createfolder" preload="none">
											  <source src="http://didljumpstart.com/video/fm/Createfolder.mp4" />
											</video>
                                </div>
                            
				
											
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
							<span class="buttonRadius right"><a href="filemanagement03.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement01.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>

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