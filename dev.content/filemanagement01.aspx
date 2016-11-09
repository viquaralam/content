<%@ Page Title="Files & Folders" MasterPageFile="~/MasterPageFF.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
			    	<a class="stickyNext" href="filemanagement02.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement00.1.aspx">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.aspx">Dashboard</a> &nbsp;>&nbsp; <a href="filemanagement00.aspx"class="active">Files &amp; Folders</a>&nbsp;>&nbsp; 
<a href="filemanagement01.aspx"class="active">The C: Drive Quick Review</a></p>
					</div>

					


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-filemanagement.inc"-->					<!-- End of Drop Down Table of Contents Menu -->
				<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Files &amp; Folders</h4>
							<h2>The C: Drive <br />Quick Review</h2>
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
							<h4>Getting to the C: Drive</h4>										
								<p>Before you begin working with Files and Folders you must know how to access the Hard Drive or C: Drive on your computer.</p>
						
						<hr>
							<p>If you recall from Computer Basics, you can access your C: drive through Windows by double clicking on the desktop icon for Computer to open a window that shows the directory.</p>	
							<p>In the directory you will see an icon for each of the drives on your computer, including the C: drive.</p>	
					
							<img class="left" src="images/filesandfolders/computer.jpg"/>
							<p>Desktop Icon for Computer</p>	
							<img class="left" src="images/filesandfolders/mycomputer.jpg"/>
							<p>Desktop Icon for My Computer</p>	
							<p>You can also access Computer by clicking on the Start button. From the pop-up menu, select Computer. You can also reach My Computer and Computer by clicking on the Start button. From the pop-up menu that you see, select Computer or My Computer.</p>
							<hr>
							<h4>The Purpose of the C: Drive</h4>
							<p>Remember, the Hard Drive or C: drive is the secondary storage built in to the computer at the factory. The C: drive is basically an electronic filing cabinet where you save and store data in folders and files so that it will not be lost when you turn off the computer.</p>
							<p>Keeping the folders and files holding your data on the C: drive (or in any storage device) organized is the main purpose of file management. In this unit, you will learn how to create, move, rename, copy, and delete both files and folders. While you can do some of these tasks within an application program, it is best to learn how to do them through Windows so you can have a deeper understanding of the layout of your computer.</p>		
						</div>
					</div>
				</div>	
								
				</div>				
				<!--! end of Content Section -->
				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="filemanagement02.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement00.1.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>

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
	<!-- #include file="include/toc-file.inc"-->
	<!-- End of Table of Contents Menu -->

	

	<!-- Included JS Files -->




</asp:Content>	