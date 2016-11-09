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
			    	<a class="stickyNext" href="computerbasics01.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="#">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.php">Dashboard</a> &nbsp;>&nbsp; <a href="computerbasics00.aspx" class="active">Computer Basics</a> </p>
					</div>
					
					


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-computer-basics.inc"-->


<!-- End of Drop Down Table of Contents Menu -->
					
				<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Introduction</h4>
							<h2>Computer Basics</h2>
						</div>
					</div>
				</div>
				<!--! end of Section Title -->
				
				<!-- Begin Content Section -->
				<div class="row">
					<div class="twelve columns">
						<div class="sectionContent">

						<div class="row">
							<div class="seven columns">
								<h3>Section Introduction</h3>
								<hr>
								<p class="lead">In this section, you will learn the basic terms and concepts that explain how your computer works and what you see when you start it up. </p>
								<h6><i>This is important for two reasons.</i></h6>
								<br />
								<p><strong>Computers have their own, special vocabulary.</strong> <br />
								These terms will be used throughout the DIDL JumpStart program and knowing them empowers you to better understand the material and your computer.</p>
								<p><strong>Computers and their programs are organized in a particular way.</strong><br />
								Understanding the concepts of how computers are organized and why they are organized that way gives you knowledge beyond just knowing how to use programs like Word or Excel. This knowledge empowers you over the computer and its programs so you can use them more powerfully.</p>
								<p>This and the next section, "Files and Folders" are the <strong>most misunderstood</strong>, even for those who already use a computer, so take your time and work carefully.</p>
							</div>
							
							<div id="auxContent" class="five columns">
								<div class="panel">
									<!-- Sublimevideo-floating-lightbox -->

								<a class="sublime zoomable" href="http://staging.didljumpstart.com/video/gettingstarted2.mp4">
								  <img src="img/video-cover/getstarted-vcover.jpg" alt="" width="241" height="147" />
								  <span class="zoom_icon"></span>
								</a>
								<video style="display:none" class="sublime zoom" width="649" height="480" poster="img/video-cover/getstarted-vid-nobar.jpg" preload="none">
									  <source src="http://staging.didljumpstart.com/video/gettingstarted2.mp4" />
									  <source src="http://staging.didljumpstart.com/video/gettingstarted.webm" />
								</video>

									<!-- END Sublimevideo-floating-lightbox  -->

									
								<dl class="nice vertical tabs single">
								  <dd><a class="sublime zoomable3" href="http://staging.didljumpstart.com/video/gettingstarted2.mp4">
								  <span>Getting Started</span>
								  </a>
								 <video style="display:none" class="sublime zoom" width="649" height="480" preload="none">
									  <source src="http://staging.didljumpstart.com/video/gettingstarted2.m4v" />
									  <source src="http://staging.didljumpstart.com/video/gettingstarted.webm" />
									</video> 
								  </dd>
								</dl>

								<dl class="nice vertical tabs">
								  <dd><a href="computerbasics11.aspx"><span>Section Key Terms</span></a></dd>
		<dd><a href="computerbasics-videos.aspx"><span>Videos</span></a></dd>						  

<dd><a href="computerbasics-practice.aspx"><span>Practice</span></a></dd>


								</dl>
								<dl class="nice vertical tabs single">
								  <dd><a href="certification.aspx"><span>Certification Exam</span></a></dd>
								</dl>
							</div>


						</div>						
					</div>
				</div>
				<!--! end of Content Section -->

				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="computerbasics01.aspx" class="nice small radius green button">Let's Begin </a></span>
							<div class="clearfix"></div>

						</div>
					</div>
				</div>
				<!--! end of Bottom Paging Section -->
				
			</div>
			<!--! end Main Conent -->
		</div>
	</div>
	

<!-- Begin Table of Contents Menu -->
	

<!-- #include file="include/toc-comp.inc"-->

	<!-- End of Table of Contents Menu -->
	

	<!-- Included JS Files -->
<!-- end of container -->





</asp:Content>		