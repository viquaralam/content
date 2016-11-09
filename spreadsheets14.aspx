<%@ Page Title="Spreadsheets" MasterPageFile="MasterPageSS.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
			    	<a class="stickyNext" href="spreadsheets15.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets13.aspx">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.aspx">Dashboard</a> &nbsp;>&nbsp; <a href="spreadsheets00.aspx">Spreadsheets</a>&nbsp;>&nbsp; 
<a href="spreadsheets14.aspx"class="active">Copying Functions and Formulas </a>


</p>
					</div>

				


<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-spreadsheets.inc"-->				<!-- End of Drop Down Table of Contents Menu -->
					
				



<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Spreadsheets</h4>
							<h2>Copying Functions <br />and Formulas</h2>
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
																		
								<a name="content"></a>

<p class="lead"><strong>Excel offers users a way to copy functions and formulas so that the cells automatically adjust.</strong></p class="lead">
	

<p>The <strong>Fill Down, Fill Up, Fill Right, or Fill Left </strong>features allow you to copy any functions or formulas and change the cell ranges easily.</p>

<p>There are several ways to access these features, but an easy and direct way is to click on the cell which contains the function you wish to copy or apply to the other cells. Next, click and drag on the small box in the bottom right corner of the cell. When you do this, your cursor will turn into a narrow cross shape as you drag it over the cells to which you want to apply the function. </p>

<p>In the example below, the Product function in D4 needs to be applied to cells D5 through D9. Instead of applying the product in each cell individually, you can click and drag on the small black box in the bottom right corner of the cell. This is called <strong>Fill Down</strong>.

<img class="img-wrap style1" src="images/spreadsheets/filldown.jpg" alt="">
<br />
<br />
<hr>

<p>When you have dragged and selected the range of cells you want, release the mouse. The range of cells will highlight and the data will automatically populate (fill in) the selected cells, adjusting the cell ranges appropriately. </p>

<img class="img-wrap style1" src="images/spreadsheets/filldownresults.jpg" alt="">
<br />
<br />


<p>This feature is a time saver. <strong>Fill up, fill left and fill right</strong> work in the same way.</p>



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
							<span class="buttonRadius right"><a href="spreadsheets15.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i>  </a></span>
							
							<span class="buttonRadius"><a href="spreadsheets13.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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
	<!-- #include file="include/toc-spreadsheets.inc"-->	<!-- End of Table of Contents Menu -->	

	<!-- Included JS Files -->

</asp:Content>