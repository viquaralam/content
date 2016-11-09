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
			    	<a class="stickyNext" href="spreadsheets06.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets04.aspx">&#8249;
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
<a href="spreadsheets05.aspx"class="active">Number Formatting</a>

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
							<h2>Number </br>Formatting</h2>
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


													<a name="content"></a><p class="lead">Number formatting within a spreadsheet refers to how numbers appear and are
displayed when you enter them into the cells in a worksheet.</p> 

<p>Remember,
spreadsheets is an application for organizing, analyzing, managing, storing and
presenting information and data that is mainly numeric, so this is an important
tool to understand and use.</p>

<p>You must first select the range of cells where you want to make changes. In Microsoft Excel
2007-20XX, you can use the <strong>ribbon</strong>. In
Classic Excel, you will access the <strong>Format Cells Box</strong>.</p>


<hr>
<div class="row">
<div class="twelve columns">
<h4>Microsoft Excel 2007-20XX Ribbon</h4>


<p>Look at the examples below. Notice that numbers in the "Hourly Pay"ù and 
"Gross Pay"ù columns do not have dollar signs. Since these are dollar amounts,
notice that the decimal places are not displayed the same for all of the
numbers. Notice where you can change the number of decimal places.</p> 

<p>To change the numbers to currenty, the user will need to highlight the cells, make sure the <strong>Home Tab</strong> is selected, and then change the Number Formatting from the <strong>Number group</strong>.</p>


<img class="img-wrap style1" src="images/spreadsheets/ribbonnumberformatting.jpg" alt="">

<p>Click on the drop-down arrow and select the number
category that you want. The user is entering dollar amounts, so the user chose
<strong>Currency</strong>.</p>

<img class="img-wrap style1" src="images/spreadsheets/ribbonnumberformattingbox.jpg" alt="">

<hr>
<h4>Number Formatting (Excel 2007-20XX)</h4>
<div><video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="SS Number Formatting" data-uid="numberformatting" preload="none">
						  <source src="http://didljumpstart.com/video/ss/numberformatting.mp4" />
						</video>	

                 </div>

</div>
</div>


<hr>
<div class="row">
<div class="twelve columns">
<h4>Classic Microsoft Excel</h4>


<p>Look at the examples below. Notice that numbers in the "Hourly Pay"ù and
 "Gross Pay"ù columns do not have dollar signs. Since these are dollar amounts,
notice that the decimal places are not displayed the same for all of the
numbers. To change the numbers to currency, the user will need to highlight the cells, select <strong>Format Menu</strong>, and then choose <strong>Cells</strong>.</p> 


<img class="img-wrap style1" src="images/spreadsheets/classicnumberformat.jpg" alt="">



<p>This brings up the <strong>Format Cells Box</strong></p>


<img class="img-wrap style1" src="images/spreadsheets/classicnumberformatbox.jpg" alt="">


<p>Make sure the <strong>Number tab</strong> is selected and choose the number category you want. The user is entering dollar amounts, so the user chose <strong>Currency</strong>. Notice where you can change the number of decimal places as well.</p>

<h4>Number Formatting (Classic)</h4>
<div><video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="SS Classic Number Formatting" data-uid="numberformattingclassic" preload="none">
						  <source src="http://didljumpstart.com/video/ss/numberformattingclassic.mp4" />
						</video>	

                 </div>						

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
							<span class="buttonRadius right"><a href="spreadsheets06.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i> </a></span>
							
							<span class="buttonRadius"><a href="spreadsheets04.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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