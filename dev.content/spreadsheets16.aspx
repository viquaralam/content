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
			    	<a class="stickyNext" href="spreadsheets17.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets15.aspx">&#8249;
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
<a href="spreadsheets16.aspx"class="active">Data Ranges in Charts </a>


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
							<h2>Data Ranges <br />in Charts</h2>
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
																		
								

<p class="lead"><strong>To create a chart, use the data within a spreadsheet.</strong></p class="lead">
	

<p>This means that you must already have data entered into the spreadsheet; you cannot create a chart from a blank or empty spreadsheet.</p>

<p>There are many options available to the user when creating charts. In this section, we will focus on <strong>selecting the data correctly</strong> so that the <strong>x and y-axis in the chart are labeled correctly</strong>. The next section covers a few of the options that make the chart meaningful such as the <strong>title</strong>, a <strong>legend</strong> that explains the chart, and <strong>data labels</strong> and <strong>values</strong> that explain the parts of the chart.  </p>

<p>The first step is to choose the data you want to use and then using your mouse, select the range of cells that have the data you want to use. <strong>This is the most important step in creating a chart</strong>.</p> 

<p>When you select the range of cells (numbers) you want to use to create the chart, <strong>include the column and row labels if you want to show them in the chart</strong>. Remember, to select cells you can click and drag with your mouse. </p>

<p>When you select the range of cells, you must select the <strong>same number</strong> of rows in all columns and the same number of columns in all rows. If you do not, the chart will not display properly. </p>

<p><strong>DO NOT</strong> include blank cells, rows or columns when you select the range and be sure to select the label first. </p>

<p>In the example the <strong>row labels</strong> are the names that identify and label the number of hours worked in the chart. Because they are selected, they will show up on the chart.</p> 

<p> Also notice in this example that the row labels and the column of numbers the labels identify are <strong>adjacent </strong>(next to each other.)</p>


<img class="img-wrap style1" src="images/spreadsheets/selectrangeadjacent.jpg"/>
<br />
<br />


<p>What do you do when you want to select ranges of data that are not next to each other? The method for selecting <strong>nonadjacent cells</strong> (cells that are not next to each other) is the same as selecting nonconsecutive files or folders. To do this, hold down the <strong>CTRL key</strong> while selecting the cells, rows or columns by clicking on them with your mouse.</p>

<p>Remember, do not include blank cells, rows or columns when you select the range and be sure to select the label first.</p> 

<img class="img-wrap style1" src="images/spreadsheets/selectrangenonadjacent.jpg"/>

<br />
<br />

<p>Also, notice in the examples that the <strong>same number of rows</strong> are selected for the labels as are selected for the numbers. Selecting an unequal number will cause the labels to be off in the chart.</p>

<p>Now that you have selected the ranges of data you want to use to create a chart, the next step is choosing the type of chart.</p>


<p><strong>Remember this is the most important step in creating a chart.</strong> Be sure to view the demos for your version:</p>


<div class="row">
							
<div class="twelve columns">	
								<h4>Data Range (Excel 2007/2010) </h4>
								<br>
								
<div>
									
			<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="datarange" data-uid="def1f3df" preload="none">
						
<source src="http://didljumpstart.com/video/ss/datarange.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	

<hr>



<div class="row">
							
<div class="twelve columns">	
								<h4>Data Range (Classic) </h4>
								<br>
								
<div>
									
			<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="datarangeclassic" data-uid="def1f3df" preload="none">
						
<source src="http://didljumpstart.com/video/ss/datarangeclassic.mp4" />
						</video>								
									
			</div>	
					


</div>
					
</div>
<hr>






</div>	
</div>
						
</div>	
				






			
				
				
				<!--! end of Content Section -->

				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="spreadsheets17.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i>  </a></span>
							
							<span class="buttonRadius"><a href="spreadsheets15.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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
