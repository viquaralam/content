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
			    	<a class="stickyNext" href="filemanagement09.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement07.aspx">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.aspx">Dashboard</a> &nbsp;>&nbsp; 
<a href="filemanagement00.aspx">Files &amp; Folders</a>&nbsp;>&nbsp; 
<a href="filemanagement08.aspx"class="active">Full Path Name for a File</a>
</p>
					</div>

					


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-filemanagement.inc"-->				<!-- End of Drop Down Table of Contents Menu -->

				


<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Files &amp; Folders</h4>
							<h2>Full Path Name </br>For A File </h2>
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
																		
							<a name="content"></a><h4>Full Path Name for a File</h4>

							<p class="lead">The full path name of a file (also called path or file path) gives the specific location in the computer where the file is stored.</p>
							
							<p><strong>The full path name</strong> of a file includes the drive, all of the subdirectories, <strong>and the full file name</strong>. You will be asked to identify the full path name of a file when you are asked to find a file in the practical task.</p>
							<p>When you search for a file, the search shows all of the folders in the file path, but you must put the full path name together. To do this, you identify all of the folders and subfolders and then put the file name at the end of the path separated by the backslash symbol which is a \.</p>
							<p>For example, the full path name for the FreeCell application program in one Windows 7 setup is C:\Program Files\Microsoft Games\FreeCell\freecell.exe. The full path name for free cell in your computer may be different.</p>
	

<p>Once you know all of the folders in a file path, you should be able to browse to any file by selecting first the drive in the path and then successive folders.</p>

<p>In order to follow a path to a file, it is important to check two things first:</p>

<ol>

<li>Make sure your <strong>window options</strong> are setup correctly so you can see all of the folders in the path.</li>
<li>Make sure you understand the <strong>operation of the address bar</strong> so you can move from folder to folder in a path.</p>
</ol>
						
							<hr>
							
							<h4>Window Options</h4>
							<p>To make sure all of the folders are displayed in the <strong>Address Bar</strong> of a window, you need to make sure this option is selected in your Windows settings. This is likely the default setting already and you will not have to make any changes; however, it is always good to double check.</p>
							<p>Open the window for <strong>Folder Options</strong> the way you have learned in the section, <strong>Viewing Options</strong>.</p>
							<p>Select the <strong>View Tab</strong> and make sure the boxes by <strong>Display full path in the address bar</strong> and <strong>Display full path in the title bar</strong> are checked. Different versions of Windows may be a little different on these words, but be sure to see that the box is checked by any option that talks about showing or displaying the full path name.</p>
							<p>If you had to make a change, click Apply to All folders. If you did not have to make a change, just close the window.</p>
							<p>After you have clicked on the <strong>Apply to All Folders button</strong>, the Folder Options window should close and disappear from view. If it does not, click on the Ok button in the bottom of the Folder Options window.</p>
							
							
							<hr>
							
							<h4>All Versions Folder Options - View Tab</h4>
														
								<img class="space" src="images/filesandfolders/folderoptionsviewtab2.jpg" alt="">

							<p>In the above picture, there are checkboxes by <strong>Display full path in the address bar</strong> and <strong>Display full path in the title bar</strong>
 are already checked, so the user does not have to make any changes here. </p>


<p>Once again, different versions of Windows may be a little different on these words, but be sure to see that the box is checked by any option that talks about showing or displaying the full path name.</p>
													
							<hr>
							
							
							<h4>Operation of the Address 
Bar</h4>


<p>The <strong>address bar</strong> appears at the top of every window. It tells you the drive as well as folder and file information. In all versions you can go to different locations by typing in the new address and hitting the enter key. However the address bar looks different in the different versions of Windows.</p>

<p>Below is a description of the address bar and a demonstration for each version of Windows.</p>


<!--! Tab Section -->




<br />

								
								<dl class="nice contained tabs">
								  <dd><a href="#nice1" class="active">Windows 10 - 8.1</a></dd>
								  <dd><a href="#nice2">Windows 7</a></dd>
                                      <dd><a href="#nice3">Windows Vista</a></dd>
  <dd><a href="#nice4">Classic Windows</a></dd>
								</dl>
								
								
<ul class="nice tabs-content contained">

<li class="active" id="nice1Tab">

										<h4>Windows 10 - 8.1</h4>

<p>The Title Bar at the top of the window shows the path of folders (if the folder options are set correctly). You can go to different folders by clicking on the navigation arrows in any part of the address.</p>


<img class="img-wrap style1" src="images/filesandfolders/addressbarwin8.jpg" alt="">
							
							<p>Remember that although all of the folders in the path are displayed in the address bar and title bar, the full path name includes the file name at the end.</p>
	
									
<hr>			


<p>When you click on a navigation arrow, a menu drops down that shows you what is located and stored there. Notice, when you click on the arrow, it is highlighted and changes direction with the drop down menu.</p>

<img class="img-wrap style1" src="images/filesandfolders/addressbarwin8_2.jpg" alt="">
<hr>

<p>If you click on the folder icon in the left most portion of the address bar, it changes to almost the full path name. The only thing missing after you click on the folder icon in the address bar is file name. Notice that after you click on the folder icon, the navigation arrows disappear.</p>

<img class="img-wrap style1" src="images/filesandfolders/addressbarwin8_3.jpg" alt="">
<hr>

						
													
	<div class="row">
					<div class="twelve columns">	
						<h4>Describing The Full Path Name For A File (Win10/8) </h4>
						<br>
					<div>	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Win 7 Full Pathname" data-uid="Describingthefullpathnameforafilewin7" preload="none">
						  <source src="http://didljumpstart.com/video/fm/Describingthefullpathnameforafilewin8.mp4" />
						</video>								

									
										</div>	
</div> </div>	

														

								
	





<hr>
								  

<li id="nice2Tab">

										<h4>Windows 7</h4>

<p>The Title Bar at the top of the window shows the path of folders (if the folder options are set correctly). In Windows 7, you can go to different folders by clicking on the navigation arrows in any part of the address.</p>


<img class="img-wrap style1" src="images/filesandfolders/addressbarwin7.jpg" alt="">
							
							<p>Remember that although all of the folders in the path are displayed in the address bar and title bar, the full path name includes the file name at the end.</p>
	
									
<hr>			


<p>When you click on a navigation arrow, a menu drops down that shows you what is located and stored there. Notice, when you click on the arrow, it is highlighted and changes direction with the drop down menu.</p>

<img class="img-wrap style1" src="images/filesandfolders/addressbarwin72.jpg" alt="">
<hr>

<p>If you click on the folder icon in the left most portion of the address bar, it changes to almost the full path name. The only thing missing after you click on the folder icon in the address bar is file name. Notice that after you click on the folder icon, the navigation arrows disappear.</p>

<img class="img-wrap style1" src="images/filesandfolders/addressbarwin73.jpg" alt="">
<hr>

						
													
	<div class="row">
					<div class="twelve columns">	
						<h4>Describing The Full Path Name For A File (Win7) </h4>
						<br>
					<div>	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Win 7 Full Pathname" data-uid="Describingthefullpathnameforafilewin7" preload="none">
						  <source src="http://didljumpstart.com/video/fm/Describingthefullpathnameforafilewin7.mp4" />
						</video>								

									
										</div>	
</div> </div>	

														

								
	





<hr>

</li>
							  


<li id="nice3Tab">									<h4>Windows Vista</h4>

<p>Title Bar at the top of the window shows the path of folders (if the folder options are set correctly).In Windows Vista, you can go to different folders by clicking on the navigation arrows in any part of the address.</p>

<img class="img-wrap style1" src="images/filesandfolders/addressbarvista.png" alt="">								
							<p>Remember that although all of the folders in the path are displayed in the address bar and title bar, the full path name includes the file name at the end. </p>
	
	
<hr>			


<p>When you click on a navigation arrow, a menu drops down that shows you what is located and stored there. Notice, when you click on the arrow, it is highlighted and changes direction with the drop down menu.</p>
		
<img class="img-wrap style1" src="images/filesandfolders/addressbarvista2.jpg" alt="">

<hr>

<p>If you click on the folder icon in the left most portion of the address bar, it changes to almost the full path name. The only thing missing after you click on the folder icon in the address bar is file name. Notice that after you click on the folder icon, the navigation arrows disappear.</p>

<img class="img-wrap style1" src="images/filesandfolders/addressbarvista3.jpg" alt="">
<hr>


<div class="row">
					
<div class="twelve columns">	
						<h4>Describing The Full Path Name For A File (Vista)</h4>
						<br>
					
<div>	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Vista Full Pathname" data-uid="Describingthefullpathnameforafilevista" preload="none">
						  <source src="http://didljumpstart.com/video/fm/Describingthefullpathnameforafilevista.mp4" />
						</video>								
						






</div>	
</div> </div>


<hr>




</li>
						






<li id="nice4Tab">
<h4>Classic Windows</h4>

<p>The Title Bar at the top of the window shows the path of folders (if the folder options are set correctly). In Classic Windows you type in the address bar and click on the green Go Button on the far right.</p>
	
<img class="img-wrap style1" src="images/filesandfolders/addressbarclassic.png" alt="">						
							<p>Remember that although all of the folders in the path are displayed in the address bar and title bar, the full path name includes the file name at the end. </p>
	

					
								
					
			
<hr>





<div class="row">
					<div class="twelve columns">	
						<h4>Describing The Full Path Name For A File (Classic)</h4>
						<br>
					<div>	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Classic Full Pathname" data-uid="Describingthefullpathnameforafileclassic" preload="none">
						  <source src="http://didljumpstart.com/video/fm/Describingthefullpathnameforafileclassic.mp4" />
						</video>								
											</div>	
				</div>	
	


</div>
<hr>



</li>

</ul>

<!--! end of Tab Section -->


								  




					
		
		
	</div>	
	</div>
	</div>

				
			
				<!--! end of Content Section -->
				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="filemanagement09.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement07.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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