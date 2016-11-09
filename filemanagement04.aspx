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
			    	<a class="stickyNext" href="filemanagement05.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement03.aspx">&#8249;
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
<a href="filemanagement04.aspx"class="active">Deletinig a File or Folder</a>

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
							<h2>Deleting a File </br>
or Folder</h2>
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
							<a name="content"></a><h4>Deleting a File or Folder</h4>
							
							<p class="lead">When you want to get rid of a file or folder, you delete it. Deleting a file, folder or other data is like putting it in a trash bin.</p>
							
							<p>Remember from Computer Basics, the trash bin on your computer is called the recycle bin. The icon on your desktop looks like a trash can, like the picture below. <strong>The recycle bin is just for files and folders stored on the C: drive.</strong></p>
							
							<hr>
							<h4>Recycle Bin Icon</h4>
							
								<img class="space" src="images/filesandfolders/recyclebinempty.jpg" alt="">
							<hr>
							<h4>Recycle Bin Empty Recycle Bin Full</h4>
							<img class="space" src="images/filesandfolders/recyclebinfull.jpg" alt="">

							
							<p>Whatever you delete and put in the recycle bin stays there until you empty the recycle bin. Once you empty the recycle bin, everything that is in there is permanently deleted from your computer.</p>
							
							<hr>
							<h4>Moving a File or Folder to the Recycle Bin</h4>
							
							<p>When you want to <strong>delete</strong> a file or folder, you can right click with your mouse on the icon of the file or folder you no longer want to save and select Delete.</p>

						<p>In the example below, the user selected the folder called "test folder" by right clicking on it. The folder name is highlighted in blue.</p>
							<hr>
							<h4>Deleting a File or Folder</h4>
							
								<img class="space" src="images/filesandfolders/delete.jpg" alt="">
							
							<p>The user would then choose Delete from the pop-up menu.</p>
							    <p class="MsoNormal">
                                    In some versions of Windows when you choose <b style="mso-bidi-font-weight:normal">delete</b>, another pop-up menu appears on the screen to ask you again if you want to <b style="mso-bidi-font-weight:normal">delete</b> the file and send it to the recycle bin. In those versions, the computer is programmed to ask the user twice to make sure you really wish to <b style="mso-bidi-font-weight:normal">delete</b> that item and did not click on the file or folder by mistake.
                                </p>
							<p>	If you want to delete it, choose Yes. </p>
							<br /> 
							
								<img class="space" src="images/filesandfolders/deleteconfirm.jpg" alt="">
							
														<p>&nbsp;</p>
                                <p><b style="mso-bidi-font-weight:normal"><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:115%;font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">In other versions, delete causes the file to be automatically sent to the recycle bin.</span></b></p>
                                <p>Remember, that if you delete a file or folder from the C: drive, it is not gone until the recycle bin is emptied.</p> 
							<p>This means you can still get any file, folder or other data that you have moved to the recycle bin back, until you empty it. When you empty the recycle bin, you permanently delete everything in it. </p>
							<p>Also remember, the recycle bin is just for the C: drive. </p>
							<p><strong>If you delete a file or folder from your USB or jump drive, it is gone for good. </strong>It does not go to the recycle bin, so when you delete it from there, you cannot get it back from the recycle bin. </p>

							<hr>
							<h4>Empty the Recycle Bin</h4>
							
							<p>As explained above, until you empty the recycle bin on your computer, you can still access any file or folder stored there.</p>
							<p>When you empty the recycle bin, any items in the recycle bin are permanently deleted from the computer. To do this, you double click on the Recycle Bin icon on your desktop. From the pop-up window you find the <strong>Empty Recycle Bin</strong> option.</p>

							<hr>


<br />

								
								<dl class="nice contained tabs">
								  <dd><a href="#nice1" class="active">Windows 10 - 8.1</a></dd>
                                    <dd><a href="#nice2">Windows 7</a></dd>
								  <dd><a href="#nice3">Windows Vista</a></dd>
  <dd><a href="#nice4">Classic Windows</a></dd>
								</dl>
								
								<ul class="nice tabs-content contained">

								 <li class="active" id="nice1Tab">

										<h4>Windows 10 - 8.1 Recycle Bin</h4>
<p>Select <strong>Manage</strong> from the toolbar and then <strong>Empty the Recycle Bin</strong> pop-up menu. You must confirm the deletions.</p>

							
								<img class="space" src="images/filesandfolders/win8recyclebin.jpg" alt="">
							
								
</li>
                                    
                                    
                                    
                                    
                                    
                                    
                                     <li id="nice2Tab">

										<h4>Windows 7 Recycle Bin</h4>
<p>Select <strong>Empty the Recycle Bin</strong> from the toolbar. You must confirm the deletions.</p>

							
								<img class="space" src="images/filesandfolders/win7recyclebin.jpg" alt="">
							
								
</li>
							  <li id="nice3Tab">
			
<h4>Windows Vista</h4>
	
<p>Select <strong>Empty the Recycle Bin</strong> from the toolbar. You must confirm the deletions.</p>						
								<img class="space" src="images/filesandfolders/vistarecyclebin.jpg" alt="">
							
							
	

</li>
						
<li id="nice4Tab">
			
<h4>Classic Windows</h4>

<p>Select <strong>File, Empty Recycle Bin</strong>. You must confirm the deletions.</p>							
								<img class="space" src="images/filesandfolders/classicrecyclebin.jpg" alt="">
							
							

	

</li>

</ul>			

													<hr>
		
						
							<div>	
							
						<div class="row">
							<div class="twelve columns">	
						
								<h4>Deleting A File Or Folder</h4>
								<br>
							<div>	
								<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Deleting" data-uid="Deletingafileorfolder" preload="none">
								  <source src="http://didljumpstart.com/video/fm/Delete.mp4" />
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
							<span class="buttonRadius right"><a href="filemanagement05.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement03.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>

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