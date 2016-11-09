<%@ Page Title="Internet" MasterPageFile="MasterPageInt.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
			    	<a class="stickyNext" href="internet01.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="internet00.aspx">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.aspx">Dashboard</a> &nbsp;>&nbsp; <a href="internet00.aspx">Internet</a>&nbsp;>&nbsp; 
<a href="internet00.1.aspx"class="active">Skills Mastery List</a>

</p>
					</div>

				


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-internet.inc"-->				<!-- End of Drop Down Table of Contents Menu -->
				
				


<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Internet</h4>
							<h2>Skills Mastery List</h2>
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
								<a name="content"></a><h3>Skills Mastery List</h3>
								<hr>

								<p class="lead">Although there is no practical task, only a multiple choice test for the Internet section, there is one skill you need to master to be successful in the other sections.</p>
															
								<p>Place a check in the box to indicate you have mastered the skill.</p>
								<br />
								<table class="sortable">
									<thead>
										<tr>
											<th>Status</th>
											<th class="sorttable_nosort">Items To Master</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><label for="checkbox1"><input type="checkbox" id="checkbox1"></td>
											<td>Creating a PDF </td>
										</tr>
											</tbody>
								</table>
								<br />
								<p>Information about creating a pdf is found in <strong>Viewing Text and Documents on the Web </strong> section. Make sure you have mastered it before moving on to the next section. </p>
															<p>While working through the lessons on your computer, it is a good idea to review the explanations in the book, so that you can compare what you see on your computer with the explanations provided.</p> 
						
						</div>

						</div>						
					</div>
				</div>
				<!--! end of Content Section -->
				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="internet01.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i></a></span>
							<span class="buttonRadius"><a href="internet00.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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
	<!-- #include file="include/toc-internet.inc"-->	<!-- End of Table of Contents Menu -->
	

	<!-- Included JS Files -->



</asp:Content>