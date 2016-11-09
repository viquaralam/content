<%@ Page Title="Word Processing" MasterPageFile="~/MasterPageWP.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">			
			



<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
			    	<a class="stickyNext" href="wordprocessing03.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="wordprocessing01.aspx">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.aspx">Dashboard</a> &nbsp;>&nbsp; <a href="wordprocessing00.aspx">Word Processing</a>&nbsp;>&nbsp; 
<a href="wordprocessing02.aspx"class="active">What is Word Processing?</a>

</p>
					</div>

				


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-wordprocessing.inc"-->
				<!-- End of Drop Down Table of Contents Menu -->
					
				


<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Word Processing</h4>
							<h2>What is Word </br>Processing?</h2>
						</div>
					</div>
				</div>
				<!--! end of Section Title -->
				
				
<div class="row">

<div class="twelve columns">

<div class="sectionContent">

						
<div class="row">
							
<div class="twelve columns">
	
        <p class="lead"><strong>What exactly is meant by word processing?</strong></p class="lead">
<hr>

        <p><strong>Word processing</strong> is when you use a computer to
        create, type, edit, format and print documents. To do this on your
        computer, you must have word processing software installed and in order
        to print you must have a printer that is connected (a wired or wireless
        connection) to your computer.</p>

        <p>Before introducing the skills and tasks of word processing, let's
        first learn about the basic process for the successful creation of
        documents which is called the <strong>document cycle</strong>.</p>
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
							<span class="buttonRadius right"><a href="wordprocessing03.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i></a></span>
							
							<span class="buttonRadius"><a href="wordprocessing01.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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
	<!-- #include file="include/toc-word.inc"-->	<!-- End of Table of Contents Menu -->

	

	<!-- Included JS Files -->


</asp:Content>