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
			    	<a class="stickyNext" href="spreadsheets18.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets16.aspx">&#8249;
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
<a href="spreadsheets17.aspx"class="active">Chart Options </a>


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
							<h2>Chart Options</h2>
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
<a name="top"></a>
<p class="lead"><strong>This section covers selecting options that make the chart meaningful such as the title, a legend that explains the chart, and data labels and values that explain the parts of the chart. </strong></p class="lead">
	

<p>In the Excel spreadsheets program, there are many types of charts from which to choose. Each chart type shows the data differently and for some purposes, certain types of charts are better to use than others as we discussed in the <strong>Charts</strong> section. </p>

<p>How you access charts and chart types depends on the version of Microsoft Excel you have on your computer.</p>


<!--! Tab Section -->
<br />

								
<dl class="nice contained tabs">
    <dd><a href="#nice1" class="active">Excel 20XX</a></dd>
    <dd><a href="#nice2">Excel 2007/2010</a></dd>
    <dd><a href="#nice3">Classic Excel</a></dd>
    
</dl>
								
<ul class="nice tabs-content contained">

    <li class="active" id="nice1Tab">
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Chart Options in Microsoft Excel 20XX</h4>

        <p> After you have selected the ranges of data that you want to use, click on the <strong>Insert tab</strong> in the ribbon at the top of your document. </p>

<h5>Chart Style</h5>

<p>From the <strong>Charts Group</strong>, select the type of chart you want to use by looking at the icons. Click on the down facing arrow beside/below the chart type. A menu will appear with the <strong>chart subtypes</strong> listed. Click on the chart subtype you want to use. After you select the chart subtype, the chart will appear in the worksheet.</p>
<br />

<img class="img-wrap style1" src="images/spreadsheets/chartmenu2013.jpg" alt="">
	<hr>
	
<p> After you select the chart subtype, the chart will appear in the worksheet. In this example, the user selected a 2-D column chart and included the row labels (the names) to identify the numbers. The resulting chart is shown below:</p>


<br />

<img class="img-wrap style1" src="images/spreadsheets/chartex2013.jpg" alt="">
	<hr>
<h5>Chart Tools</h5>
<p>After the chart is placed in the worksheet, notice that the ribbon at the top of the document automatically changes. The <strong>Chart Tools</strong> menu opens in the ribbon.</p> 

<p>The Chart Tools menu is active and visible when the chart is active. When you click out of the chart, the chart is deactivated and Chart Tools menu disappears. When you click on the chart again to select and activate it, the Chart Tools menu reappears.</p>

<img class="img-wrap style1" src="images/spreadsheets/chartdesign2013.jpg" alt="">

<br />
<br />
The Chart Tools menu has two tabs, Design and Format. Click on <strong>Design</strong>. and then on the downward arrow under <strong>Add Chart Element </strong>to change the <strong>chart title, legend, data labels</strong>.  

            You can <strong>show values</strong> by clicking on <strong>Data Labels</strong> We will discuss each of these options below.  

<hr>
<h5>Chart Title</h5>
<p>Using the <strong>Chart Title</strong> option under <strong>Add Chart Element</strong>, the user can choose not to display a title or change the placement of the title in the chart. Type in the box with the four small circles to add the title.</p>


<img class="img-wrap style1" src="images/spreadsheets/charttitle2013.jpg" alt="">

 
<br />
<br />

<hr>
<h5>Chart Legend</h5>
<p>Using the <strong>Legend Option</strong> under <strong>Add Chart Element</strong>, the user can choose not to display a legend or change the placement of the legend in the chart.</p>

<p>Notice you can select <strong>None</strong> to remove the legend.</p>


<img class="img-wrap style1" src="images/spreadsheets/chartlegend2013.png" alt="">

 
<br />


<hr>
<h5>Chart Data Labels</h5>
<p>Using the <strong>Data Labels</strong> option under <strong>Add Chart Element</strong>, the user can choose not to display any labels (None) OR can add values to the chart. In the example below, the user has chosen<strong> More Data Label Options</strong>. In the Label Options window, the user has chosen <strong>Value</strong> and<strong> Outside End</strong>. Notice where the values show up on the chart. </p>


<img class="img-wrap style1" src="images/spreadsheets/chartdatalabels2013.png" alt="">

 
<br />
<br />

<p>In the <strong>More Data Labels Options</strong> under <strong>Data Labels</strong>, <strong>Percentages</strong> are available if you selected a <strong>Pie Chart</strong> style.</p>


<img class="img-wrap style1" src="images/spreadsheets/chartpercentage2013.png" alt="">


<hr>


<h5>Chart Example</h5>

<p>After selecting the ranges of data from Column A (<strong>row labels</strong>) and D, the user chose a <strong>column chart</strong> type, <strong>titled</strong> the chart "Gross Pay"ù, removed the <strong>legend</strong>, chose <strong>values</strong> under data labels and placed the chart as an object in the worksheet. </p>
<br />

<img class="img-wrap style1" src="images/spreadsheets/ribbonchartexample.jpg" alt="">
<br />

<br />
<p>Once the chart is placed in the worksheet, you can then move and size it. The user moved the chart to place it just below the worksheet with all of the weekly payroll data. You can right click on the edge of the chart to make changes to the appearance of the chart.</p>
 
<p>If you have selected incorrectly or do not like what you see, it can be less confusing to just delete the chart and begin again. </p>




<hr>

<div class="row">
							
<div class="twelve columns">	
								<h4>Selecting Chart Options (Excel 20XX) </h4>
								<br>
								
<div>
									
			<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="SS Chart Options 2013" data-uid="Chartoptions2013" preload="none">
						
<source src="http://didljumpstart.com/video/ss/Chartoptions2013.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	
<br />
<br />
<a href="#top">Back to top</a>
<hr>






    </li>
    
    
    <li id="nice2Tab">
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Chart Options in Microsoft Excel 2007/2010</h4>

        <p> After you have selected the ranges of data that you want to use, click on the <strong>Insert tab</strong> in the ribbon at the top of your document. </p>

<h5>Chart Style</h5>

<p>From the <strong>Charts Group</strong>, select the type of chart you want to use and click on the down facing arrow below the chart type. A menu will appear with the <strong>chart subtypes</strong> listed. Click on the chart subtype you want to use. After you select the chart subtype, the chart will appear in the worksheet.</p>
<br />

<img class="img-wrap style1" src="images/spreadsheets/ribboncharttype.jpg" alt="">
	<hr>
	
<p> After you select the chart subtype, the chart will appear in the worksheet. In this example, the user selected a 2-D column chart and included the row labels (the names) to identify the numbers.</p>


<br />

<img class="img-wrap style1" src="images/spreadsheets/ribbonchart2.jpg" alt="">
	<hr>
<h5>Chart Tools</h5>
<p>After the chart is placed in the worksheet, notice that the ribbon at the top of the document automatically changes. The <strong>Chart Tools</strong> menu opens in the ribbon.</p> 

<p>The Chart Tools menu is active and visible when the chart is active. When you click out of the chart, the chart is deactivated and Chart Tools menu disappears. When you click on the chart again to select and activate it, the Chart Tools menu reappears.</p>

<img class="img-wrap style1" src="images/spreadsheets/ribbonchartoolslayout.jpg" alt="">

<br />
<br />
The Chart Tools menu has three tabs, Design, Layout and Format. Click on <strong>Layout</strong> to change the <strong>chart title, legend, data labels, and values</strong>.  

<hr>
<h5>Chart Title</h5>
<p>Using the <strong>Chart Title</strong> option in the Labels group, the user can choose not to display a title, add a title or change the placement of the title in the chart.</p>


<img class="img-wrap style1" src="images/spreadsheets/ribboncharttitle.jpg" alt="">

 
<br />
<br />

<p>When you select an option, you will notice that a box with four small circles at each corner appears around the title. The title box lets you know the title is selected and activated.</p>

<p>Type in the title.</p>


<img class="img-wrap style1" src="images/spreadsheets/ribbonchart3.jpg" alt="">

<br />

<hr>
<h5>Chart Legend</h5>
<p>Using the <strong>Legend Option</strong> in the Labels group, the user can choose not to display a legend, add a legend or change the placement of the legend in the chart.</p>

<p>Notice you can select <strong>None</strong> to remove the legend.</p>


<img class="img-wrap style1" src="images/spreadsheets/ribbonchartlegend.jpg" alt="">

 
<br />


<hr>
<h5>Chart Data Labels</h5>
<p>Using the <strong>Data Labels</strong> option in the Labels group, the user can choose not to display any labels on the data in the chart OR can add information to the chart by adding labels to the data. </p>


<img class="img-wrap style1" src="images/spreadsheets/ribbonchartdatalabels.jpg" alt="">

 
<br />
<br />

<p>Using the <strong>More Data Labels Options</strong> in the Labels group, the user can choose to add the <strong>values</strong> to the chart. <strong>Percentages</strong> are available if you selected a <strong>Pie Chart</strong> style.</p>


<p>In this example the user checked the box by Value. This will show the exact numeric value that each column stands for.</p>


<img class="img-wrap style1" src="images/spreadsheets/ribbonchartdatalabels2.jpg" alt="">


<hr>


<h5>Chart Example</h5>

<p>After selecting the ranges of data from Column A (<strong>row labels</strong>) and D, the user chose a <strong>column chart</strong> type, <strong>titled</strong> the chart "Gross Pay"ù, removed the <strong>legend</strong>, chose <strong>values</strong> under data labels and placed the chart as an object in the worksheet. </p>
<br />

<img class="img-wrap style1" src="images/spreadsheets/ribbonchartexample.jpg" alt="">
<br />

<br />
<p>Once the chart is placed in the worksheet, you can then move and size it. The user moved the chart to place it just below the worksheet with all of the weekly payroll data. You can right click on the edge of the chart to make changes to the appearance of the chart.</p>
 
<p>If you have selected incorrectly or do not like what you see, it can be less confusing to just delete the chart and begin again. </p>




<hr>

<div class="row">
							
<div class="twelve columns">	
								<h4>Selecting Chart Options (Excel 2007/2010) </h4>
								<br>
								
<div>
									
			<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="SS Chart Options" data-uid="selectingchartoptions" preload="none">
						
<source src="http://didljumpstart.com/video/ss/selectingchartoptions.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	
<br />
<br />
<a href="#top">Back to top</a>
<hr>






    </li>
							  

    <li id="nice3Tab">
			
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Chart Options in Classic Microsoft Excel</h4>


<p> In Classic Microsoft Excel, after you have selected the data range, click on the icon for the chart wizard in the toolbar at the top of your document. The chart wizard icon looks like a bar chart.</p>
<br />


<img class="img-wrap style1" src="images/spreadsheets/classicmenucharts.jpg" alt="">
		<hr>
           
<hr>
<h5>Chart Wizard Step 1</h5>

<p>After you click on the Chart Wizard, the <strong>4 step Chart Wizard Box</strong> will open. You will be at <strong>Step 1</strong> of the Chart Wizard, called <strong>Chart Type</strong>. This is where you choose the type of chart.</p>
<br />


<img class="img-wrap style1" src="images/spreadsheets/chartwizardstep1.png" alt="">

<p>There are two tabs: <strong>Standard Types</strong> offers you the preset, chart templates that come with the Excel program; <strong>Custom Types</strong> allows you to create a chart that is customized. Most users do not need custom charts.</p>

<ol>

<li>Under <strong>Chart type</strong>, you will see the list of charts. Notice that the top five are the most common ones you already learned about. In this example, the user has selected a Column Chart type.</li>

<li>After you click on a Chart type, you will then choose the exact chart you want from the <strong>Chart sub-type</strong> selections that you will see. Notice there are seven Chart sub-types for a Column chart.</li>

<li>A short explanation of each Chart sub-type will appear.</li>
</ol>

<p>Click on the type of chart you want in Chart sub-type and click <strong>Next</strong>.</p> 

<hr>
<h5>Chart Wizard Step 2</h5>
<p>After you click Next, the Chart Wizard box for <strong>Step 2</strong> will open. Step 2 is called <strong>Chart Source Data</strong>. This is where you confirm the range of data you have selected to use in the chart. Don't let this step confuse you. If you have selected the data range correctly all you need to do is click <strong>Next</strong>.</p>

<img class="img-wrap style1" src="images/spreadsheets/chartwizardstep2.png" alt="">
<br />

<hr>
<h5>Chart Wizard Step 3</h5>
<p>After you click Next, the Chart Wizard box for <strong>Step 3</strong> will open. Step 3 is called <strong>Chart Options</strong>. This is where you can choose a title as well as make other choices about the appearance and format of the chart.</p>


<p>There are six tabs: <strong>Titles, Axes, Gridlines, Legend, Data Labels and Data Table.</strong> We will focus on Titles, Legend, and Data Labels.</p>
<h6>Titles Tab</h6>

<p> In the <strong>Titles tab</strong>, you can give the chart a title.</p>



<img class="img-wrap style1" src="images/spreadsheets/chartwizardstep3titles.png" alt="">
<br />



		<hr>
<h6>Legend Tab</h6>
<p>On the <strong>Legend Tab</strong> you can choose to have a legend on the chart you create. A legend is a key that helps explain the data being displayed. You show the legend by clicking in the check box next to Show legend. If you do not want a legend leave the box unchecked.</p>

<p>Under the Placement options, you can set the placement of the legend on the chart.
</p>

<img class="img-wrap style1" src="images/spreadsheets/chartwizardstep3legend.png" alt="">
<br />



<hr>
<h6>Data Labels Tab</h6>
<p>On the <strong>Data Labels Tab</strong> you can check the box by <strong>Value</strong> and the value (number) of each column (or bar etc) will appear above the column (or bar etc). </p>

<p>If you have selected a Pie Chart, you can check the box by <strong>Percentage</strong> and have the percentage of each piece show on the chart.
</p>

<img class="img-wrap style1" src="images/spreadsheets/chartwizardstep3datalabels.png" alt="">
<br />



<p>When you are finished, click Next.</p>


<hr>
<h5>Chart Wizard Step 4</h5>

<p>Once you have clicked <strong>Next</strong> on Step 3, <strong>Step 4</strong> appears. This is where you can choose where to place the chart in the spreadsheet. </p>

<p>The default setting is to place the chart in the worksheet as an object.</p> 

<p>We have not learned about objects. You can think of an object as a picture or image inserted into a document.</p>

<p>You may also choose to place it in a new worksheet.</p>

<p>When you are finished, click <strong>Finish</strong>.</p>
<img class="img-wrap style1" src="images/spreadsheets/chartwizardstep4.png" alt="">
<br />



<p>When you click Finish, the chart should be completed and visible wherever you chose to place it in the worksheet. In the example below, the user created a chart that shows the Gross Earnings for each employee for that week.</p>

<hr>

<h5>Chart Example</h5>

<p>After selecting the ranges of data from Column A (<strong>row labels</strong>) and D, the user chose a <strong>column chart</strong> type, <strong>titled</strong> the chart "Gross Earnings", removed the <strong>legend</strong>, chose <strong>values</strong> under data labels and placed the chart as an object in the worksheet. </p>



<img class="img-wrap style1" src="images/spreadsheets/classicchart.png" alt="">
<br />

<br />



<p>Once the chart is placed in the worksheet, you can then move and size it. The user moved the chart to place it just below the worksheet with all of the weekly payroll data. You can right click on the edge of the chart to make changes to the appearance of the chart.</p> 

<p>If you have selected incorrectly or do not like what you see, it can be less confusing just to delete the chart and begin again.</p> 


        <hr>


<div class="row">
							
<div class="twelve columns">	
								<h4>Selecting Chart Options (Classic) </h4>
								<br>
								
<div>
									
			<video controls="controls" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-title="SS Classic Chart Options" data-uid="selectingchartoptionsclassic" preload="none">
						
<source src="http://didljumpstart.com/video/ss/selectingchartoptionsclassic.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	
<br />
<br />
<a href="#top">Back to top</a>
<hr>





        </div>
        </div>
    </li>
						
</ul>								  


<!--! end of Tab Section -->















</div>	
</div>
						
</div>	
				






			
				
				
				<!--! end of Content Section -->

				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="spreadsheets18.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i>  </a></span>
							
							<span class="buttonRadius"><a href="spreadsheets16.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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

                </strong>

</asp:Content>