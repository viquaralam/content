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
			    	<a class="stickyNext" href="filemanagement04.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement02.aspx">&#8249;
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
<a href="filemanagement03.aspx"class="active">Moving and Copying Files and Folders</a>


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
							<h2>Moving and Copying<br /> Files and Folders</h2>
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
								<h4>Moving and Copying Files and Folders</h4>
								<hr>
								<p>When a user wants to change where a file or folder is stored, he would move it by using the cut command. If a user wants to duplicate the file, he would use the copy command. Cut (move) and copy are two different tasks and do not mean the same thing.</p>
								<p>Cut (move) and copy are each file management tasks so let's begin by opening up the C: drive or another drive to which you have access.</p>
								<p>Don't forget, to get to drives, you use Computer or My Computer.</p>
								
								<hr>
								<h4>Cut A File Or Folder</h4>
								
								<p><strong>Cutting</strong> or <strong>moving</strong> a file or folder takes it from one storage location on your computer to another. When you move or cut a file or folder, it is no longer located in the original storage location.</p>
								<ul class="circle">
								<li>When you cut a file, you move just the individual file, not the whole folder.</li>
								<li>When you cut a folder, you move everything, which means all of the files, stored in the folder.</li>
							</ul>								<p>No matter which version of Windows you have, simply select the file or folder you want to move, right click on it with your mouse and from the pop-up menu, select cut.</p>
								<p>Next, right click in the new location to which you want to move the file or folder and from the pop-up menu, select paste.</p>
								
								<hr>
								<h4>Cut and Paste Files and Folders</h4>  
								
								<p>Below is an example of what you may see on your computer screen as you move a file or folder. Please remember, what you see on your computer depends upon the version of Windows you have. What you see may not look exactly like the pictures in the lessons, but they will be similar.</p>
								
								<img class="space" src="images/filesandfolders/cut.jpg"/>
								
								<p>In this example, the user selected a file named "Chapter 3.docx" that is in a folder named "AAA SAMPLE".</p>

								<p>The user right clicked on the file with the mouse and from the pop-up menu, selected Cut.</p>
								<hr>
								<img class="space" src="images/filesandfolders/paste.jpg"/>

								<p>Next, the user placed the mouse pointer where he wanted to paste the file. In this example, the file "Chapter 3.docx" is being moved to a folder named "AAA TEST."</p>
								<p>The the user right clicked in the new location.</p>
								<p>From the pop-up menu, he selected paste.</p>
								<p>The file "Chapter 3.docx"" is now in the folder "AAA TEST" and because the user selected cut, the file is no longer in the folder "AAA SAMPLE".</p>
									
																
															
								
								<hr>
								<h4>Copy A File or Folder</h4>
								
								<p><strong>Copying</strong> a file or folder makes a copy of it while at the same time leaving a copy of it in the original storage location.</p>
								<ul class="circle">
									<li>When you copy a file, you copy the whole document.</li>
									<li>When you copy a folder, you copy everything, which means all of the files, stored in the folder.</li>
								</ul>								
								<p>Computer users copy files and folders for many reasons. One of the main reasons for copying files and folders is for storage or back up. For example, a user may want to copy files and folders to a portable USB drive to take to school, to work on at home or just as second copy.</p>
								<p>At work, you may be asked to copy data from one file or folder to a new or different drive or some other storage location. There are so many reasons why! But, whatever the reason, an empowered user is able to copy files and folders.</p>
								<p>No matter which version of Windows you have, simply select the file or folder you want to copy, right click on it with your mouse and from the pop-up menu, select copy.</p>
								<p>Next, right click in the new location to which you want to copy the file or folder and from the pop-up menu, select paste.</p>
								
								
								<hr>
								<h4>Copy and Paste Files and Folders</h4>
								
								<p>Below is an example what you may see on your computer screen as you copy a file or folder. Please remember, what you see on your computer depends upon the version of Windows you have. What you see may not look exactly like the pictures in the lessons, but they will be similar.
								
								<br />
								
								<img class="space" src="images/filesandfolders/copy.jpg"/>
								
								<p>In this example, the user selected a file named "Chapter 3.docx" that is in a folder named "AAA SAMPLE".</p>

								<p>The user right clicked on the file with the mouse and from the pop-up menu, selected Copy.</p>


								<hr>
								<img class="space" src="images/filesandfolders/paste.jpg"/>

								<p>Next, the user placed the mouse pointer where he wanted to paste the file. In this example, the file "Chapter 3.docx" is being moved to a folder named "AAA TEST."</p>
								<p>The user right clicked in the new location.</p>
								<p>From the pop-up menu, he selected paste.</p>
								<p>The file "Chapter 3.docx" is now in the folder "AAA TEST" and because the user selected copy, the file is now in both folders, "AAA TEST" and "AAA SAMPLE".</p>
									
		


						<hr>
								<h4>Keyboard Shortcuts</h4>
								<p>It is a good idea to memorize the keyboard shortcuts for Copy, Cut, and Paste.</p>
								<p><strong>CTRL + C</strong> is the keyboard shortcut to copy.</p>
								<p><strong>CTRL + X </strong>is the keyboard shortcut to cut.</p>
								<p><strong>CTRL + V</strong> is the keyboard shortcut for paste.</p>
								
								
						<hr>								
								<div>	

									<div class="row">
										<div class="twelve columns">	
									
											<h4>Moving Or Copying A File Or Folder</h4>
											<br>
											<div>
											<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="Sizingorchangingtheshapeofwindowelements" data-uid="def1f3df" preload="none">
											  <source src="http://didljumpstart.com/video/fm/Movingorcopyingafileorfolder.mp4" />
											</video>
											</div>								

										</div>	
									</div>
		<br />

								</div>					  
								
							</div>
						</div>		
				</div>				
				<!--! end of Content Section -->
				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="filemanagement04.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement02.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>

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