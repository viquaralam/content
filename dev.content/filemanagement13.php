<?php include ('include/header.php'); ?>
<body class="files study">

<?php include ('include/top-navigation.php'); ?>

	<!-- Begin Container -->
	
	<div class="container">
		<div class="row">
		
	<!-- Begin Sidebar -->
		<?php include ('include/nav-sidebar.php'); ?>
	<!--! end of Sidebar -->
			
			<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="filemanagement12.php">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.php">Dashboard</a> &nbsp;>&nbsp; <a href="filemanagement00.php">Files &amp; Folders</a>&nbsp;>&nbsp; <a href="#"class="active">Key Terms</a></p>
					</div>

					<!-- Begin Drop Down Table of Contents Menu -->
					<?php include ('include/toc-dd-filemanagement.php'); ?>
					<!-- End of Drop Down Table of Contents Menu -->

				<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Files &amp; Folders</h4>
							<h2>Key Terms</h2>
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
																		
							<h3>Section Terms &amp; Definitions</h3>

							<hr>

							<p class="lead">These are the important terms that have been highlighted throughout Files and Folders.<p>

							<p>You will see these terms on the <strong>multiple choice tests, the practical tasks</strong> and in later sections of this curriculum. Please be sure you know what they mean.</p>
							<hr>

						<div class="row">
							<div class="twelve columns">
									<p><strong>Active Window</strong> The window in which the user is currently working and where the blinking cursor or mouse pointer is active</p>
									<p><strong>Address Bar</strong> A bar that appears at the top of every window and tells you the drive as well as folder and file information.</p>
									<p><strong>Consecutive Files or Folders</strong> Files or folders that are all in a row or right next to each other</p>
									<p><strong>Copy a File and a Folder</strong> Duplicate the file or folder in another location</p>
									<p><strong>Cut and Move a File and Folder</strong> Remove the file or folder from one location and place it in another</p>
									<p><strong>Delete</strong> Deleting places the file or folder in the trash can or recycle bin.</p>
									<p><strong>Empty Recycle Bin</strong> Emptying the recycle bin permanently removes the files or folders from the computer.</p>
									<p><strong>Folder Options</strong> Folder Options control the way files and folders function and how information concerning them are displayed on your computer.</p>
									<p><strong>Formats</strong> Different ways to present information</p>
									<p><strong>Full Path Name (Path and File Path)</strong> Gives the specific location in the computer where the file is stored including the drive, all of the folders and sub-folders, and the file name and extension.</p>
									<p><strong>Help</strong> Answers to questions in a variety of formats</p>
									<p><strong>Log In</strong> A name and a password that belongs to an individual computer user that allows that person to access and use the machine</p>
									<p><strong>Nonconsecutive Files or Folders</strong> Files or folders that are not next to each other</p>
									<p><strong>Rename a File or Folder</strong> Giving a new name to a file or folder</p>
									<p><strong>Search</strong> Looking for a file, folder, or other data stored on your computer</p>
									<p><strong>Storage Space</strong> The amount of space available for storing data on a computer drive or storage device </p>
									<hr>
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
							<span class="buttonRadius"><a href="filemanagement12.php" class="nice small radius green button">&#x276E; Previous</a></span>
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
	<?php include ('include/toc-file.php'); ?>
	<!-- End of Table of Contents Menu -->
	

	<!-- Included JS Files -->


</body>
</html>
