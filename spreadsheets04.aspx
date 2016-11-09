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
			    	<a class="stickyNext" href="spreadsheets05.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets03.aspx">&#8249;
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
<a href="spreadsheets04.aspx"class="active">Alignment</a>

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
							<h2>Alignment</h2>
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



<p class="lead">Alignment of text or numeric data within a spreadsheet refers
to the alignment within the cell. In other words, how text or numeric data is
positioned within each cell in relation to the margins of the cell.</p>

<p>Text is automatically left justified; numbers and
dates are automatically right justified.</p>

<p>Below is an example of what the default alignment settings in a worksheet
look like, no matter what version of Excel you have:</p>

<img class="img-wrap style1"
src="images/spreadsheets/cellalignment.jpg" alt="">
<hr>

<p>In the example below, the user has changed the alignment in the above worksheet to <strong>centered</strong> in row
4:</p>

<img class="img-wrap style1"
src="images/spreadsheets/cellalignment2.jpg" alt="">

<hr>
<p>To change the alignment of data within cells, you must first select the range of cells where you want to make changes. When they are highlighted, use the ribbon or classic toolbar to choose the alignment that you want for the selected cells.</p> 


<div class="row">
<div class="twelve columns">
<h4>Alignment on Ribbon</h4>
<p>The icons for Alignment are located in the <strong>Alignment group</strong>. </p>


<img class="img-wrap style1" src="images/spreadsheets/ribbonalignment.jpg" alt="">

<hr>

<h4>Alignment (Excel 2007-20XX)</h4>
<div><video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="SS Alignment" data-uid="alignment" preload="none">
						  <source src="http://didljumpstart.com/video/ss/alignment.mp4" />
						</video>	

                 </div>    





<hr>
</div>
</div>

<div class="row">
<div class="twelve columns">
<h4>Alignment on the Classic Toolbar</h4>


<p>The icons for Alignment are located next to font and boxed in each
picture.</p>

<img class="center" src="images/spreadsheets/classictoolbaralignment.jpg" alt="">
<hr>

<h4>Alignment (Classic)</h4>
<div><video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="SS Classic Alignment" data-uid="alignmentclassic" preload="none">
						  <source src="http://didljumpstart.com/video/ss/alignmentclassic.mp4" />
						</video>	

                 </div>    


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
							<span class="buttonRadius right"><a href="spreadsheets05.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							
							<span class="buttonRadius"><a href="spreadsheets03.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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