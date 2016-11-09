<%@ Page Title="Computer Basics" MasterPageFile="~/MasterPageCB.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
			    	<a class="stickyNext" href="computerbasics10.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="computerbasics08.aspx">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.aspx">Dashboard</a> &nbsp;>&nbsp; <a href="computerbasics00.aspx">Computer Basics</a>&nbsp;>&nbsp; 
<a href="computerbasics09.aspx" class="active">Data Storage on the Computer</a>

</p>
					</div>

					


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-computer-basics.inc"-->

					<!-- End of Drop Down Table of Contents Menu -->
					
				<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Computer Basics</h4>
							<h2>Data Storage on <br />the Computer</h2>
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
							    <h4>Drive, Directory, Folder and File</h4>
							
							    <p>Now that you have learned the difference between computer <strong>memory</strong> and
							    data <strong>storage</strong>, let's learn more about your computer's <strong>Secondary Storage</strong>
							    options and how you save and store your data.</p>
							
							    <p>Recall from the previous section that <strong>secondary storage is long term
							    storage</strong>. You can save data to the hard drive on your computer, to a USB,
							    other drives or other devices and expect that when you open it up again, it
							    will be exactly the same as when you last saved it. You can expect that if
							    you save data to a drive it will stay there until you, the user, remove or
							    delete it.</p>
							
							    <p>In order to save and store your data, however, you must name it before
							    you store it. Like everything else you have learned about computers, naming
							    your data is done in a special and particular way. To begin, let's talk
							    about computer drives again.</p>
							
							    <p><strong>Computer drives</strong> are all named with a letter of the
							    alphabet followed by a colon. The hard drive (the secondary storage built
							    in at the factory) on most every computer is named with the letter C or C:.
							    There are other drives on your computer such as a CD drive, a DVD drive,
							    Network drive or a USB drive. All computer drives after the hard drive or
							    C: are named with letters starting with letter D:.</p>
							
							    <p><strong>Directories</strong> are like a table of contents for a drive or
							    storage device. Directories are marked by the back slash symbol \. The main
							    directory for a drive or storage device is called the root directory and it
							    is usually not named. Therefore, C:\ would mean the root directory of the
							    C: drive.</p>
							
							    <p><strong>Folders</strong> are sub-directories within the <strong>root
							    directory</strong> and they do have names. Like the root directory, they
							    use the back slash symbol \. For example C:\Windows would mark the
							    subdirectory or folder on the C: drive named Windows and it is likely where
							    the Windows program is stored.</p>
    						<hr>
    					</div>
    				</div>

						<div class="row">
							<div class="twelve columns">

							    <h4>C: Drive Root Directory</h4>
							    <br />
							    <img class="left space" src="images/computerbasics/CDriveRootDir.jpg">
							    <hr>
							
							    <p>Files are the individual documents (like Word documents, spreadsheets,
							    etc.) or other data (like photos, music, etc.) stored within folders,
							    directories and drives.</p>
							
							    <p><strong>File names</strong> have two parts and the two parts are
							    separated by a period.</p>
							
							    <ol>
							        <li>Part One is the <strong>file name</strong></li>
							
							        <li>Part Two is the <strong>file extension</strong></li>
							    </ol>
							
							    <p>The <strong>file name</strong> is whatever the user names it.</p>
							
							    <p>The <strong>file extension</strong> tells the user the type of file it
							    is. There are many common ones you will see, for example: .doc or .docx is
							    for documents created using Microsoft Word. Files with the extension .xls
							    or .xlsx are created using Microsoft Excel. It is important to remember,
							    you do not have to add the extension to the filename. The program you are
							    using will add the file extension for you automatically or you can choose a
							    different file extension from the list of extensions provided.</p>
							
							    <p>The file extensions, .exe, .com, and .bat are used to mark program files
							    that could be executed. A file extension can also represent a standard
							    format for representing graphics such as .avi or .mov for video files or
							    .wav or .mpg for audio files and .bin or .bif for images.</p>
							
							    <p>Let's take a closer look at naming a file for saving and storing on a
							    computer. For example, let's say Mary wants to save information about her
							    taxes in a spreadsheet. She might use the file name of Taxes2010. Since the
							    information is being saved in a spreadsheet format, the program will add
							    the file extension of .xls to the file name and so the complete file name
							    would look like this:</p>
							
							    <p><strong>Taxes2010.xls</strong></p>
							
							    <p><strong>Don't forget:</strong> The application program automatically adds a file
							    extension to the file name, so <strong>DO NOT type in the file extension</strong> or you may
							    select the appropriate one from the list of file extensions provided.</p>
							
							    <p>If you type one in, the program adds another file extension, and you
							    create a double file extension, which can cause problems. Files are
							    represented by icons associated with the program.</p>
							
							    <p>Since the computer associates a file extension with a program, it knows
							    not only what icon to show with the file, but also what program to open
							    when you double click a file with a particular file extension.</p>
    						<hr>
    					</div>
    				</div>

						<div class="row">
							<div class="twelve columns">
							    <h4>The Hard Drive or C: Drive</h4>
								<br />
							    <p>Before you begin working on the next unit, Files and Folders, it will
							    help you to first learn about how to access the Hard Drive or C: Drive on
							    your computer.</p>
							
							    <p>If you recall from the previous section, the Hard Drive or C: drive is
							    the secondary storage built in to the computer at the factory. Remember the
							    C: drive is basically an electronic filing cabinet where you can save and
							    store your data in folders and files so that it will not be lost when you
							    turn off the computer.</p>
							
							    <p>In DIDL JumpStart, you will learn to access the C: drive through My
							    Computer or Computer.</p>
    						<hr>
    					</div>
    				</div>

						<div class="row">
							<div class="twelve columns">
							    <h4>Access the C: Drive with Computer</h4>
								<br />
							    <p>On your desktop, you can see the icon (like the one below) for Computer
							    also called My Computer. They mean the same thing, the name depends on the
							    version of Windows.</p>
							
							    <div class="three columns">
							        <img class="img-wrap style1" height="150" src=
							        "images/computerbasics/mycomputer.jpg" width="180">
							
							        <div class="caption2">
							            Computer
							        </div>
							    </div>
							
							    <div class="three columns">
							        <img class="img-wrap style1" height="150" src=
							        "images/computerbasics/mycomp.png" width="180">
							
							        <div class="caption2">
							            My Computer
							        </div>
							    </div>
							
							   <div class="row">
										<div class="twelve columns">
							        <br>
							    </div>
							    <hr>
							
							    <p>Double click on the icon to open a window that shows the directory.</p>
							
							    <p>In the directory you will see an icon for each of the drives on your
							    computer, including the C:drive and any other drives, like the CD/DVD
							    drive. When you connect a USB, there will be a drive icon and letter for it
							    as well.</p>
							
							    <p>If you do not see the icon for Computer on the desktop, don't panic! You
							    can right click with your mouse anywhere on the desktop and select View
							    from the pop-up menu to either Show or Hide the Desktop Icons.</p>
							
							    <p>You can also reach Computer by clicking on the Start button. From the
							    pop-up menu, select Computer.</p>
							
							    <p>Below are two examples of what the computer directory you open may look
							    like on the screen:</p>
    						<hr>
    					</div>
    				</div>
							    
							    
					<div class="row">
							<div class="twelve columns">
							
							    <h4>One View Of Computer</h4>
							    <br />
							    <img class="left space" src="images/computerbasics/CompDir1.jpg">
    						<hr>
    					</div>
    				</div>
							    
					<div class="row">
							<div class="twelve columns">
							    <h4>Another View of Computer</h4>
							    <br />
							    <img class="left space" src="images/computerbasics/CompDir2.jpg">
    						<hr>
    					</div>
    				</div>
							    
							    
						<div class="row">
							<div class="twelve columns">
							    <h4>The C: Drive - Directory and Folder Structure</h4>
							<br />
							    <p>When you double click on the icon for the C: drive, you can view the
							    directory of the files and folders saved and stored in it. Below is an
							    example of a C: Drive directory.</p>
							<hr>
							
							    <h4>Viewing the C: Drive Directory in Computer</h4><img class="left space"
							    src="images/computerbasics/CompDir3.jpg">
							    <br>
							    <br>
							    <p>When you look at the C: drive, you can tell the difference between files
							    and folders by just looking at them.</p>
							
							    <p>Files and folders have different icons. A folder has an icon that looks
							    like a paper folder and a file has an icon associated with the program that
							    created the file.</p>
    						<hr>
    					</div>
    				</div>

						<div class="row">
							<div class="twelve columns">
							
							    <h4>Common File Icons</h4>
							    <br />
							    <br />
							    <div class="three columns">
							        <img class="img-wrap style1" src="images/computerbasics/wordicon.jpg">
							
							        <div class="caption2">
							            Microsoft Word Icon
							        </div>
							    </div>
							
							    <div class="three columns">
							        <img class="img-wrap style1" src="images/computerbasics/excelicon.jpg">
							
							        <div class="caption2">
							            Microsoft Excel
							        </div>
							    </div>
							
							    <div class="three columns">
							        <img class="img-wrap style1" src=
							        "images/computerbasics/acrobaticon.jpg">
							
							        <div class="caption2">
							            Adobe Acrobat
							        </div>
							    </div>
							
							    <div class="five columns">
							        <br>
							        <br>
							        <br>
							    </div>
							    <hr>


<p>For more information on disgintuishing between a file or folder you can view the video demo for your version.</p>    					</div>
    					</div>


					<div class="row">
						<div class="twelve columns">
							<h4>Distinguishing Between a File and Folder</h4>
							<br />
								
								<dl class="nice contained tabs">
								  <dd><a href="#nice1" class="active">Windows 7</a></dd>
								  <dd><a href="#nice2">Windows Vista</a></dd>
 								  <dd><a href="#nice3">Classic Windows</a></dd>
								</dl>
								
								<ul class="nice tabs-content contained">

									<li class="active" id="nice1Tab">
						<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="Distinguishingbetweenafileandafolderwin7" data-uid="def1f3df" preload="none">
						  <source src="http://didljumpstart.com/video/cb/Distinguishingbetweenafileandafolderwin7.mp4" />
						</video>								

									</li>
									<li id="nice2Tab">
						<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="Distinguishingbetweenafileandafoldervista" data-uid="def1f3df" preload="none">
						  <source src="http://didljumpstart.com/video/cb/Distinguishingbetweenafileandafoldervista.mp4" />
						</video>								
									
									</li>
									<li id="nice3Tab">
						<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="Distinguishingbetweenafileandafolderclassic" data-uid="def1f3df" preload="none">
						  <source src="http://didljumpstart.com/video/cb/Distinguishingbetweenafileandafolderclassic.mp4" />
						</video>								
									
									</li>
								</ul>								  

						</div>
					</div>

    					
    				</div>
    				</div>
    				</div>
				
<!--! end of Content Section -->

				<!-- Begin Section Title -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="computerbasics10.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="computerbasics08.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!--! end of Section Title -->

				
			</div>
			<!--! end Main Content -->
		</div>
	</div>
	<!-- end of container -->

	<!-- Begin Table of Contents Menu -->
	<!-- #include file="include/toc-comp.inc"-->
	<!-- End of Table of Contents Menu -->
	

	<!-- Included JS Files -->


</asp:Content>