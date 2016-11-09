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
			    	<a class="stickyNext" href="filemanagement11.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement09.aspx">&#8249;
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
<a href="filemanagement10.aspx"class="active">Available Storage Space</a>

</p>
					</div>

					


<!-- Begin Drop Down Table of Contents Menu -->
									<!-- #include file="include/toc-dd-filemanagement.inc"-->									<!-- End of Drop Down Table of Contents Menu -->

				

<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Files &amp; Folders</h4>
							<h2>Available </br>Storage Space</h2>
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
							<a name="content"></a><h4>Available Storage Space</h4>
							<hr>
							<p class="lead">Storage space is the amount of space available for storing data on a computer drive or storage device.<p>
							<p>Computer drives, like the C: drive as well as CDs, DVDs, USB drives and other data storage locations and devices all have a preset amount of storage space that is measured in bytes. Recall from earlier sections, that most byte values are large, measured in KB, MG or GB.</p>
							<p>There are a number of ways for you to see the storage space being used and what is still open and available. Since you have already used This PC, Computer, or My Computer to access the Hard Drive or C: Drive on your computer, you will use this method again here. There are other ways to check free space and any method is acceptable.</p>
							<p>Two ways are give below:</p>
						<br />
							<dl class="nice contained tabs">
							  <dd><a href="#nice1" class="active">Properties Window</a></dd>
							  <dd><a href="#nice2">Regular Window</a></dd>

							</dl>
						
						<ul class="nice tabs-content contained">
							<li class="active" id="nice1Tab">
								<p>This method uses the Properties Window.</p>
								<p>From your desktop, double click on the icon for This PC, Computer, or My Computer.</p>
								<p>In the window that opens, right click on the C: drive and from the menu that appears, select Properties.</p>
														
								<img class="space" src="images/filesandfolders/driveproperties.jpg" alt="">
						<hr>							
							<p>In the window that opens after you click on Properties, select the General tab.</p>
							
							<p>The General Tab shows a diagram (also called a graphic) of the storage space being used and the amount of free space that is available. In the example, notice that the storage space is measured in GB, which is short for gigabytes</p>
							<img class="space" src="images/filesandfolders/driveproperties2.jpg" alt="">
							<p>Look at the color key to determine which color stands for the Used space and which color stands for the Free Space.</p>
							<p>Click the Ok button to close the window.</p>
						<hr>
							</li>
							  <li id="nice2Tab">
								<p>From your desktop, double click on the icon for This PC, Computer, or My Computer and left click once on a storage drive such as the C: Drive. The free space will pop up somewhere in the window. Look to the right or bottom of the window.</p>
								<img class="space" src="images/filesandfolders/drivespaceregularwindow2.jpg" alt="">
                                  <img class="space" src="images/filesandfolders/drivespaceregularwindow.jpg" alt="">
							</li>
						</ul>								  
					<h4>Try It!</h4>
				




<div>	

				<div class="row">
					<div class="twelve columns">	
						<h4>Determine Available Storage Space</h4>
						<br>
					<div>	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Free Space" data-uid="Determinehowmuchfreespaceisonastoragedevice" preload="none">
							<source src="http://didljumpstart.com/video/fm/Determinefreespace.mp4" />
						</video>								
					

<hr>





</div>	
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
							<span class="buttonRadius right"><a href="filemanagement11.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement09.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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