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
			    	<a class="stickyNext" href="filemanagement10.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement08.aspx">&#8249;
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
<a href="filemanagement09.aspx"class="active">Searching for Files or Folders</a>
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
							<h2>Searching for </br>Files or Folders</h2>
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
								<a name="content"></a><h4>Searching for Files or Folders</h4>
								
								<hr>
							<p class="lead">When you are looking for a file or folder on your computer and you cannot find it, you use search to look for it. <p>


							
								<p>Search is easy! All you do is find the <strong>search box</strong> (usually represented with a magnifying glass icon), type the name of the file or folder you want to find, and hit enter. <img class="right" src="images/filesandfolders/searchicon.jpg" alt=""></p>


<p>Where search is located on your computer depends on the version of Windows you have. Before we find the search box, let's talk about two important things to know about searching:</p>

<ol>
								<li><strong>The Asterisk (*): </strong> The asterisk is a very helpful symbol you can use when searching if you do not remember the exact name of the file or folder you want to find. You can use the asterisk to stand for the characters you do not remember.</p>

<p>Therefore if you can't remember the name of one of a particular Microsoft Word document, you could locate all of them by typing in *.docx in the search box. In this case the asterisk stands for all of the characters in the file name and the computer would find all of the files on the drive you pointed to that have the file extension of .docx.</p> 

<p>You can also use the asterisk to stand for the file extension too. Therefore if you wanted to find all of your files or folders that you named with "taxes" in the name for instance, you could type in taxes*.* in the search box and the computer would locate any file or folder with a name that started with "taxes" and ended with anything after it such as Taxes2010.docx, Taxes2011.docx, or Taxes.xls.</p></li>
								<li><p> <strong>Advanced Settings: </strong> One other thing you need to know is that there are advanced settings for search that you may need to use for certain types of files such as files that have file extensions of .exe, .dat, or .dll. Examples will be given to show you how to change the advanced settings. </P>

</li>
							</ol>
<p> With these things in mind, follow the information below to locate search for the version of Windows that is on your computer.</p>


<!--! Tab Section -->









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

										<h4>Locating Search in Windows 10 - 8.1</h4>
								
								<p>In Windows 10 - 8.1, there is a search box at the top of every folder window that looks like this:</p>

<img class="full-width" src="images/filesandfolders/win7search.jpg" alt="">																
								<p>From the Desktop, select the Folders icon on the taskbar and then select the drive you want to search, for example C: drive. When the window opens, you should see the search box, usually on the top right of the window.</p>


<p>Type in the file name and the file extension of the file you want to find. You will notice that the computer will start searching as soon as you start typing. 

<p>In the picture below, shows the location of the search box.</p> 					

<img class="img-wrap style1" src="images/filesandfolders/win8search7.jpg" alt="">



			
								<hr>

<h4>What do you do if you don't find the file?</h4>										
 <p>If you do not find the file, you need to make sure you have set up the search correctly. To do this, you need to know about <strong>Advanced Search Settings.</strong><p>For the DIDL, you may be asked to search for a file that has a file extension of .exe, .dll, .dat, etc. These file extensions are system file extensions and are typically located in system folders, which are not usually included in the search. If your search <strong>does not find the file</strong>, you will need to change the Search Options and try again.</p>

								<p>Select <strong>
								          Search</strong> from the menu and then <strong>Advanced Options</strong>. Make sure the box by <strong>System Files</strong> is checked.</p>


			<img class="full-width" src="images/filesandfolders/win8search2.jpg" alt="">					
								
								<hr>

																							
								<p>You can also change the search options from the&nbsp;<strong>Folder Options</strong> box. Remember you can access the Folder Options box by clicking on <strong>View</strong> and then <strong>Options</strong>. Make sure the <strong>Search</strong> tab is selected. Under "When Searching non-indexed locations", check the box to include System Directories. Click on Apply then click OK. Search again.</p>


<img class="full-width" src="images/filesandfolders/folderoptionssearchwin8.jpg" alt="">									
								<hr>
								
								<p>You just clicked in a box that referenced non-indexed locations. You may be wondering what indexed and non-indexed locations are. Let's talk about that briefly.</p>
																<p>The Windows program "indexes"ù or organizes the files used most on your computer. Then Windows uses the index in a search to make the searches fast. However, this index is based on files located in the default locations Windows sets up within the Windows Libraries.</p>
								<p>If you do not use these libraries to store your information, you may need to include the non-indexed locations in the search.</p>

	

								
<hr>												

<h4>What do you do if you find the file but cannot see the folders from the window?</h4>
			
								
								<p>The folders in which the file is located may not be in view if, for example, you have the Large Icons viewing option selected as in the picture below. The Large Icons View does not show folders in the path. Select Details from the Views menu to see the folders.</p>
								
	
		
								<img class="full-width" src="images/filesandfolders/win8search3.jpg" alt="">
<hr>
<h4>Sizing the Field so You Can See All of the Folders</h4>							
					<p>Once you have selected Details View, you still may not be able to see all of the folders until you Size the Folder's field. The arrow in the picture below shows where to place mouse pointer to size the Folder's field.</p>
										<img class="full-width" src="images/filesandfolders/win8search4.jpg" alt="">						
				
<hr>				<p>All of the folders are now seen in the picture below after sizing the Folder's field. Notice that there are several SoundRecorder.exe files found. </p>
								
						
<p> Windows puts the folder the file is in first and then in parenthesis puts the other folders in the path. You would have to look on the C: drive and follow the path through all of the folders mentioned to find the file. </p>							<img class="full-width" src="images/filesandfolders/win8search5.jpg" alt="">

<p>You must put together the full path name from the information you get from the search. The full path name in the above example is:</p>
								<p>C:\Windows\System32\SoundRecorder.exe</p>
                                        <p>The image below shows a search for all files that begin with printer and end with anything (printer*). Notice the number of files found is in the bottom left corner of the picture.</p>
                                        <p><img class="full-width" src="images/filesandfolders/win8search6.jpg" alt="">&nbsp;</p>



<hr>





	<div class="row">
					<div class="twelve columns">	
						<h4>Finding A Specific File - Win 10/8.1</h4>
						<br>
					<div>	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Win8 Finding a File" data-uid="Findingaspecificfilewin8" preload="none">
							<source src="http://didljumpstart.com/video/fm/Findingaspecificfilewin8.mp4" />
						</video>								
					</div>	
				</div>	
	




</li>









								  <li id="nice2Tab">

										<h4>Locating Search in Windows 7</h4>
								
								<p>In Windows 7, there is a search box at the top of every folder window that looks like this:</p>

<img class="full-width" src="images/filesandfolders/win7search.jpg" alt="">																
								<p>From the Start Menu, select Computer and then select the drive you want to search, for example C: drive. When the window opens, you should see the search box, usually on the top right of the window.</p>


<p>Type in the file name and the file extension of the file you want to find. You will notice that the computer will start searching as soon as you start typing. 

<p>In the picture below, shows the location of the search box.</p> 					

<img class="img-wrap style1" src="images/filesandfolders/win7search2.jpg" alt="">



			
								<hr>

<h4>What do you do if you don't find the file?</h4>										
 <p>If you do not find the file, you need to make sure you have set up the search correctly. To do this, you need to know about <strong>Advanced Search Settings.</strong><p>								<p>For the DIDL, you may be asked to search for a file that has a file extension of .exe, .dll, .dat, etc. These file extensions are system file extensions and are typically located in system folders, which are not usually included in the search. If your search <strong>does not find the file</strong>, you will need to change the Search Options and try again.</p>

								<p>Select the Control Panel to change the Search Options. You can quickly access the Control Panel in the left pane, but you may have to scroll down to see it. The picture below shows the location of the Control Panel in the left pane.</p>


			<img class="full-width" src="images/filesandfolders/win7search3.jpg" alt="">					
								
								<hr>

																							
								<p>Select Folder Options under the Control Panel and then select the Search Tab. Under "When Searching non-indexed locations", check the box to include System Directories. Click on Apply then click OK. Search again.</p>


<img class="full-width" src="images/filesandfolders/folderoptionssearch.jpg" alt="">									
								<hr>
								
								<h4>Windows 7 "Search again in:" Options </h4>

								<p>You just clicked in a box that referenced non-indexed locations. You may be wondering what indexed and non-indexed locations are. Let's talk about that briefly.</p>
																<p>The Windows program "indexes"ù or organizes the files used most on your computer. Then Windows uses the index in a search to make the searches fast. However, this index is based on files located in the default locations Windows sets up within the Windows Libraries.</p>
								<p>If you do not use these libraries to store your information, you may need to select Computer on your search instead of Libraries. The search window provides "Search again in" options for you to select Computer.</p>

	

<p>The picture below shows where to find Computer in the "Search again in" options.</p>
							
								<img class="full-width" src="images/filesandfolders/win7search4.jpg" alt="">
<hr>												

<h4>What do you do if you find the file but cannot see the folders from the window?</h4>
			
								
								<p>The folders in which the file is located may not be in view if, for example, you have the Large Icons viewing option selected as in the picture below. The Large Icons View does not show folders in the path. Select Details from the Views menu to see the folders.</p>
								
	
		
								<img class="full-width" src="images/filesandfolders/win7search5.jpg" alt="">
<hr>
<h4>Sizing the Field so You Can See All of the Folders</h4>							
					<p>Once you have selected Details View, you still may not be able to see all of the folders until you Size the Folder's field. The arrow in the picture below shows where to place mouse pointer to size the Folder's field.</p>
										<img class="full-width" src="images/filesandfolders/win7search6.jpg" alt="">						
				
<hr>				<p>All of the folders are now seen in the picture below after sizing the Folder's field. Notice that there are several FreeCell.exe files found. The total number found is in the bottom left corner of the window.</p>
								
						
<p> Also notice that Windows puts the folder the file is in first and then in parenthesis puts the other folders in the path.</p>							<img class="full-width" src="images/filesandfolders/win7search7.jpg" alt="">

<p>You must put together the full path name from the information you get from the search. The full path name in the above example is:</p>
								<p>C:\HADLEY_N\Program Files\Microsoft Games\Freecell\FreeCell.exe</p>



<hr>





	<div class="row">
					<div class="twelve columns">	
						<h4>Finding A Specific File - Win 7</h4>
						<br>
					<div>	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Win7 Finding a File" data-uid="Findingaspecificfilewin7" preload="none">
							<source src="http://didljumpstart.com/video/fm/Findingaspecificfilewin7.mp4" />
						</video>								
					</div>	
				</div>	
	




</li>








							  <li id="nice3Tab">
			
<h4>Locating Search in Windows Vista</h4>
								
								<p>In Windows Vista, there is a search box at the top of every folder window that looks like this:</p>

<img class="full-width" src="images/filesandfolders/win7search.jpg" alt="">																
								<p>From the Start Menu, select Computer and then select the drive you want to search, for example C: drive. When the window opens, you should see the search box, usually on the top right of the window.</p>


<p>Type in the file name and the file extension of the file you want to find. You will notice that the computer will start searching as soon as you start typing. 

<p>In the picture below, shows the location of the search box.</p> 					

<img class="full-width" src="images/filesandfolders/vistasearch2.jpg" alt="">



			
								<hr>

<h4>What do you do if you don't find the file?</h4>										
<p>If you do not find the file, you need to make sure you have set up the search correctly. To do this, you need to know about <strong>Advanced Search Settings.</strong><p>								<p>For the DIDL, you may be asked to search for a file that has a file extension of .exe, .dll, .dat, etc. These file extensions are system file extensions and are typically located in system folders, which are not usually included in the search. If your search <strong>does not find the file</strong>, you will need to change the Search Options and try again.</p>

								<p>Select Search Options from the Search Tools Menu to change the Search Options. 

			<img class="full-width" src="images/filesandfolders/vistasearch3.jpg" alt="">					
								
								<hr>

																							
								<p>This is the Folder Options Box you have seen before, only the Search Tab is selected this time. Under "When Searching non-indexed locations", check the box to include System Directories. Click on Apply then click OK. Search again.</p>


<img class="full-width" src="images/filesandfolders/folderoptionssearch.jpg" alt="">									
								<hr>
								
								<h4>Windows Vista Advanced Settings </h4>

								<p>You just clicked in a box that referenced non-indexed locations. You may be wondering what indexed and non-indexed locations are. Let's talk about that briefly.</p>
																<p>The Windows program "indexes" or organizes the files used most on your computer. Then Windows uses the index in a search to make the searches fast. </p>
								<p>After you have made the selection that allows you to include System Directories, you can use Advanced Search Options to search again. The search window provides "Advanced Search."</p>

	

<p>The picture below shows Advanced Search. Notice Indexed Locations is selected under Location and you can type the name of the file you wish to find in the Name box and click on Search.</p>
							
								<img class="full-width" src="images/filesandfolders/vistasearch4.jpg" alt="">
<hr>								<h4>What do you do if you find the file but cannot see the folders from the window?</h4>							
								
								<p>The folders in which the file is located may not be in view if, for example, you have the Large Icons viewing option selected as in the picture below. The Large Icons View does not show folders in the path. Select Details from the Views menu to see the folders.</p>
								
	
		
								<img class="full-width" src="images/filesandfolders/vistasearch5.jpg" alt="">
<hr>
<h4>Sizing the Field so that You Can See All of the Folders</h4>							
					<p>Once you have selected Details View, you still may not be able to see all of the folders until you Size the Folder's field. The arrow in the picture below shows where to place mouse pointer to size the Folder's field.</p>
										<img class="full-width" src="images/filesandfolders/vistasearch6.jpg" alt="">						
				
<hr>				<p>All of the folders are now seen in the picture below after sizing the Folder's field. </p>
								
						
<p> Also notice that Windows puts the folder the file is in first and then in parenthesis puts the other folders in the path.</p>							<img class="full-width" src="images/filesandfolders/vistasearch7.jpg" alt="">

<p>You must put together the full path name from the information you get from the search. The full path name in the above example is:</p>
								<p>C:\Program Files\Microsoft Games\FreeCell\FreeCell.exe</p>



<hr>

<p>The image below shows a search for all files that begin with printer and end with anything (printer*). Notice the number of files found is in the bottom left corner of the picture.</p> 
<img class="full-width" src="images/filesandfolders/vistasearch8.jpg" alt="">

<hr>


	

								<div class="row">
					<div class="twelve columns">	
						<h4>Finding A Specific File - Vista</h4>
						<br>
					<div>	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Vista Finding a File" data-uid="Findingaspecificfilevista" preload="none">
							<source src="http://didljumpstart.com/video/fm/Findingaspecificfilevista.mp4" />
						</video>								
						<hr>
					</div>	
				</div>	


			




</li>











						
<li id="nice4Tab">
			
<h4>Locating Search in Classic Windows</h4>
								<p>Classic Windows has an option on the Start Menu for finding or searching for a file. Click on the Start Menu, and from the pop-up menu, select search.</p>
	
<img class="full-width" src="images/filesandfolders/classicsearch.jpg" alt="">							
							<hr>
												<p>After you click on search, you will see a search menu asking "What do you want to search for?"</p>
								<p>Select the All Files and Folders Option by clicking on it.</p>
	


	<img class="full-width" src="images/filesandfolders/classicsearch2.jpg" alt="">						
								<hr>
								
																	<p>Another menu will open and it asks the user for more information to help narrow the search.</p>
								<p>Type the name of the file or folder, and make sure to select the drive from the drop down menu by clicking on the arrow.</p>
												
		<img class="full-width" src="images/filesandfolders/classicsearch3.jpg" alt="">						<hr>
								
												
										<h4>What do you do if you don't find the file?</h4>										
								<p>If you do not find the file, you need to make sure you have set up the search correctly. To do this, you need to know about <strong>Advanced Search Settings.</strong><p>

<p>For the DIDL, you may be asked to search for a file that has a file extension of .exe, .dll, .dat, etc. These file extensions are system file extensions and are typically located in system folders. Often, if you are searching for files located in system folders, you will not find them.</p> 

<p>If this happens, you can click on "Refine this Search" in the left pane to get to the <strong>Advanced Search settings</strong>. You then have an option to choose "Typical" or "Expanded"ù. "Typical"ù excludes hidden or system files and "Expanded" includes all files and folders. Click on "Expanded"ù and then click on Search again. (Review the demo at the end of this section for more information.)</p>
<hr> 

<h4>What do you do if you find the file but cannot see the folders from the window?</h4>							<p>The folders in which the file is located may not be in view if, for example, you have the Thumbnails viewing option selected as in the picture below:</p>


<img class="full-width" src="images/filesandfolders/classicsearch4.jpg" alt="">						<hr>
			



								<p>Click on View and from the menu that appears, select Details to see the folders.</p>
	

<img class="full-width" src="images/filesandfolders/classicsearch5.jpg" alt="">						<hr>
								
							
															
						<h4>Sizing the Field so You Can See All of the Folders</h4>												

<p>Once you have selected Details View, you still may not be able to see all of the folders until you Size the Folder's field. The arrow in the picture below shows where to place mouse pointer to size the Folder's field.</p>
										<img class="full-width" src="images/filesandfolders/classicsearch6.jpg" alt="">						
				
<hr>				<p>All of the folders are now seen in the picture below after sizing the Folder's field. </p>
								
						
							<img class="full-width" src="images/filesandfolders/classicsearch7.jpg" alt="">

<p>You must put together the full path name from the information you get from the search. The full path name in the above example is:</p>
								<p>C:\WINDOWS\system32\freecell.exe</p>



<hr>

<p>The image below shows a search results screen. Notice that the number of files found is indicated at the top of the left task pane.</p> 
<img class="full-width" src="images/filesandfolders/classicsearch8.jpg" alt="">

<hr>

<div class="row">
					<div class="twelve columns">	
						<h4>Finding A Specific File - Classic</h4>
						<br>
					<div>
	
						<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="FF Classic Finding a File" data-uid="Findingaspecificfileclassic" preload="none">
							<source src="http://didljumpstart.com/video/fm/Findingaspecificfileclassic.mp4" />
						</video>								
						<hr>
					


</div>	
				</div>	






<div>	

</div>
</li>
</ul>


<!--! end of Tab Section -->
		</div>	
		</div>
	</div>	
		</div>	

				<!--! end of Content Section -->
				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="filemanagement10.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="filemanagement08.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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