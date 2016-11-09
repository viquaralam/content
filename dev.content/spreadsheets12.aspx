<%@ Page Title="Spreadsheets" MasterPageFile="~/MasterPageSS.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
			    	<a class="stickyNext" href="spreadsheets13.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets11.aspx">&#8249;
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
<a href="spreadsheets12.aspx"class="active">AutoSum (&#8721;) Function </a>


</p>
					</div>

				



<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-spreadsheets.inc"-->
				<!-- End of Drop Down Table of Contents Menu -->
					
				



<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Spreadsheets</h4>
							<h2>AutoSum (&#8721;) <br />Function</h2>
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
																		
								

<p class="lead"><strong>The AutoSum (&#8721;) function is a preset pattern for summing (adding) a selected range of cells, often the selected range of cells to which AutoSum is applied is a column or row.  </strong></p class="lead">
	

<p>There is a shortcut for the AutoSum (&#8721;) function on the toolbar or ribbon.</p>

<p>In all versions of Excel, you can highlight the cells you wish to <strong>sum</strong> or click in a blank cell below a column of numbers or to the right of a row of numbers in order to select the whole column or row. </p>


<p>Next, select the downward facing arrow by AutoSum (&#8721; ) function in the toolbar. Select Sum from the menu and a window will appear with the range of cells to sum already chosen for you. </p>


<p>You can accept the selection or change it and the sum function is applied so that the spreadsheet program automatically sums (adds together) the selected range of cells and puts the total in the blank cell at the end of the selected data.</p>

<p>Locate the AutoSum (&#8721;) shortcut for your version.</p>


<hr>
<div class="row">
<div class="twelve columns">
<h4>AutoSum (&#8721;) Function for Excel 2007/2010 </h4>


<p>Highlight the cells you wish to sum or just click in a cell that is at the end of a row or column of numbers.</p>

<p>Click on the <strong>Formulas Tab</strong> and click on the downward facing arrow by AutoSum.</p>

<p>From the AutoSum menu select <strong>Sum</strong>. </p>

<p>Accept or modify the cell range and the sum is placed in the blank cell.</p>


<p>Notice from the menu that appears when you click on the downward facing arrow, you can select <strong>Average, Count Numbers, Max or Min</strong>. The process is the same for these functions as well.</p>


<img class="img-wrap style1" src="images/spreadsheets/ribbonautosum.jpg"/>






<hr>
</div>
</div>

<div class="row">
<div class="twelve columns">

<h4>AutoSum (&#8721;) Function for Classic Excel </h4>

<p>Highlight the cells you wish to sum or just click in a cell that is at the end of a row or column of numbers.</p>

<p>Click on the downward facing arrow by AutoSum.</p>

<p>From the AutoSum menu select <strong>Sum</strong>. </p>

<p>Accept or modify the cell range and the sum is placed in the blank cell.</p>

<img class="img-wrap style1" src="images/spreadsheets/classicmenu.jpg"/>



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
							<span class="buttonRadius right"><a href="spreadsheets13.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i>  </a></span>
							
							<span class="buttonRadius"><a href="spreadsheets11.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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
	<!-- #include file="include/toc-spreadsheets.inc"-->
	<!-- End of Table of Contents Menu -->	

	<!-- Included JS Files -->

</asp:Content>