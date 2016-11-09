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
			    	<a class="stickyNext" href="computerbasics11.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="computerbasics09.aspx">&#8249;
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
<a href="computerbasics10.aspx" class="active">Default Storage Location for Data</a>

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
							<h2>Default Storage <br /> Location for Data</h2>
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
							
								<h4>Default Storage Location for Data</h4>
																							
								<p>The Microsoft Windows program sets up default locations to help organize the information stored on your computer. <strong>Default locations</strong> are locations on your computer where data is automatically stored if you, the user, don't instruct the computer to store the data somewhere else.</p>
								<p>The idea of default locations can be hard to understand for many users because defaults are part of the structure that the Microsoft Windows operating system creates, not a structure you, the user, create and understand.</p>
								<p>For example, in Microsoft programs the default location for storing most data is in a folder named <strong>My Documents</strong> or <strong>Documents</strong>. But, when you open up the root directory for the C: drive, you do not see the My Documents folder in the list of folders. It may be listed in the left side navigation pane where the default locations are listed, but because it is not in the list of folders on the root directory, the location seems like a puzzle.</p>
								<hr>
							</div>
						</div>


						<div class="row">
							<div class="twelve columns">
								<h4>Documents and My Documents</h4>
								
								<img class="right space" src="images/computerbasics/MyDocuments.jpg"/>
								
								<p>Notice that neither the Documents folder nor the My Documents folder that are in the left pane appear in the directory list on the C:Drive in this example.</p>
																<p>The actual location of the My Documents is buried inside the Users folder on the C: drive, inside another folder called, NANCY'S LAPTOP, but that is hard to distinguish from the left hand pane.</p>
								<p>However, you do not have to store your files in the default locations Windows sets up. You can create a folder in the root directory of the C: drive for your files and name it whatever you want such as MyFiles or as I do, NancyFiles.</p>
								<p>You can choose the folder, whether it is My Documents, NancyFiles, or whatever named folder you want, when you save your documents. When you choose the folder in which to save your data, you are acting as an empowered user and you will know exactly where your data is.</p>
								<p>The main point is to know where on the C: drive your files are located. You will learn how to create folders in the Files and Folders section.</p>
							</div>
						</div>		
												
				</div>				
				<!--! end of Content Section -->

				<!-- Begin Section Title -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="computerbasics11.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							<span class="buttonRadius"><a href="computerbasics09.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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
	<!-- #include file="include/toc-comp.inc"-->	<!-- End of Table of Contents Menu -->
	

	<!-- Included JS Files -->


</asp:Content>	