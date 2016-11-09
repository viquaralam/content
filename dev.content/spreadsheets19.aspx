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
			    	<a class="stickyNext" href="spreadsheets20.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets18.aspx">&#8249;
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
<a href="spreadsheets19.aspx"class="active">Print Options</a>
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
							<h2>Print Options</h2>
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
																										
								
<p class="lead"><strong>Print Options offer the user choices for how the spreadsheet will be printed.  </strong></p class="lead">

<p>The reason for these different printing options is to empower users to customize what they want to see on a printed paper copy of the spreadsheet. This offers users the ability to control how the data will appear in print copies and print presentations.</p>

<a name="top"></a>
<p>This section, will include:</p>

<ul class="disc">
    <li><a href="#ss1">Print Preview</a></li>

    <li><a href="#ss2">Set Print Area</a></li>

    <li><a href="#ss3">Displaying Formulas on the Printout</a></li>

    <li><a href="#ss4">Fit to One Page</a></li>

    <li><a href="#ss5">Printing Gridlines and Row/Column Headings on Every Page</a></li>

   
</ul>

<p>How you access Print Options depends upon the version of Microsoft Excel you have.</p>


<div class="row">
<div class="twelve columns">
<a name="ss1"></a>
<h4>Print Preview</h4>

<!--! Tab Section -->
<br />

								
<dl class="nice contained tabs">
    <dd><a href="#nice1" class="active">Microsoft Excel 2007/2010</a></dd>
    <dd><a href="#nice2">Classic Microsoft Excel</a></dd>
    
</dl>
								
<ul class="nice tabs-content contained">

    <li class="active" id="nice1Tab">
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Access to Print Options in Microsoft Word 2007/2010</h4>

        <p> In Microsoft Excel 2007/2010, you can access <strong>Print Options</strong> by clicking on the <strong>File</strong> Button in and then on <strong>Print</strong>. From the Print menu, you can choose <strong>Print, Quick Print, or Print Preview</strong>.</p>

<p>Clicking on <strong>Print Preview</strong> brings up a view of how the spreadsheet will really print based on the current settings that are in place. If you do not like what you see and what to make changes, you can close the Print Preview and return to the spreadsheet to make the changes you want.</p>
 
        <img class="img-wrap style1" src="images/spreadsheets/ribbonprintoptions.jpg"/>
	<hr>
	
<p>In some versions when you click on Print, you get a <strong>Backstage view</strong> that shows the Print Preview.</p>

<img class="img-wrap style1" src="images/spreadsheets/ribbonbackstageview.jpg"/>
        <hr>
        </div>
        </div>


    </li>
							  

    <li id="nice2Tab">
			
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Access to Print Options in Classic Microsoft Excel</h4>

<p>In Classic Microsoft Excel, you can access <strong>Print Options</strong> by clicking on <strong>File</strong> in the toolbar at the top of your document. From the File menu that appears, you will see that the four main print options, <strong>Page Setup, Print Area, Print Preview and Print</strong> are grouped together.</p>


<img class="img-wrap style1" src="images/spreadsheets/classicprintoptions.jpg"/>



<p>Notice that to the left of Print Preview is an icon that looks like a piece of paper and a magnifying glass. Next to Print is an icon that looks like a printer with a piece of paper in it. These icons are also located in the toolbar at the top of your document and you can click on these icons as a quick way to access these two Print Options.</p>

<p>There is also the keyboard shortcut, <strong>Ctrl + P</strong> listed to the right of Print.</p>


<p><strong>Print Preview</strong> is a very helpful tool. By using it, you can see what the spreadsheet will look like when you print it. If you do not like what you see and what to make changes, you can close the Print Preview and return to the spreadsheet to make the changes you want.</p>



    </li>
						
</ul>								  


<!--! end of Tab Section -->






<a href="#top">Back to top</a>
</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss2"></a>
<h4>Set Print Area</h4>

<p> The default setting for the spreadsheets program is to print the whole spreadsheet. But a user may not wish to print the whole spreadsheet, especially a large spreadsheet with lots of data. </p>

<p>To control what parts of the spreadsheet are printed, users can <strong>set the print area</strong> in their spreadsheets. When you set the Print Area, only the area you set will print. If the worksheet does not print correctly, you may need to clear or reset the Print Area.</p>

<p>What if you have a chart in the worksheet?  If there is a chart in the worksheet and you wish to print it with the worksheet, be sure to select the blank cells over which the chart is placed to make sure the chart prints. Also, if you have clicked on a chart and then select Print, the chart is the only part that will print. You must click off the chart or deselect the chart for the whole worksheet to print.</p>

<p>No matter what version of Microsoft Excel you have, to set the Print Area a spreadsheet, you must first click and drag with your mouse across the range of cells that you wish to select for the Print Area. As you click and drag, the range of cells you select will be highlighted.</p>

<p>How a user accesses the set Print Area tool is different, depending on the version of Excel.</p>

<!--! Tab Section -->
<br />

								
<dl class="nice contained tabs">
    <dd><a href="#nice3" class="active">Microsoft Excel 2007/2010</a></dd>
    <dd><a href="#nice4">Classic Microsoft Excel</a></dd>
    
</dl>
								
<ul class="nice tabs-content contained">

    <li class="active" id="nice3Tab">
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Set Print Area in Microsoft Word 2007/2010</h4>

        <p> In Microsoft Excel 2007/2010, you can access Print Area by clicking on the <strong>Page Layout tab</strong> in the ribbon and in the <strong>Page Setup group</strong> you will see Print Area. Click on <strong>Print Area</strong> and there are two options: <strong>Set Print Area and Clear Print Area</strong>.

<p>As you would expect, click on Set Print Area to set and Clear Print Area to clear it. Note that once the Print Area is set in a spreadsheet, it will stay in place until the user clears it.</p>




 
        <img class="img-wrap style1" src="images/spreadsheets/ribbonsetprintarea.jpg"/>
<br />
<br />

<p>Highlight the range of cells in the spreadsheet you want to print and then click on Set Print Area.</p>

<p>Remember, once the Print Area is set in a spreadsheet, it will stay in place until the user clears it.</p>


	<hr>
	



        </div>
        </div>


    </li>
							  

    <li id="nice4Tab">
			
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Set Print Area in Classic Microsoft Excel</h4>

<p>In Classic Microsoft Excel, you access the set Print Area tool by clicking on File in the toolbar at the top of your document. </p>

<p>From the <strong>File Menu</strong> that appears, select <strong>Print Area</strong>. Another menu will appear that offers two options: Set Print Area and Clear Print Area. </p>


<img class="img-wrap style1" src="images/spreadsheets/classicprintoptions.jpg"/>

<br />
<br />

<p>Notice that to the left of Print Preview is an icon that looks like a piece of paper and a magnifying glass. Next to Print is an icon that looks like a printer with a piece of paper in it. These icons are also located in the toolbar at the top of your document and you can click on these icons as a quick way to access these two Print Options.</p>

<p>There is also the keyboard shortcut, <strong>Ctrl + P</strong> listed to the right of Print.</p>


<p><strong>Print Preview</strong> is a very helpful tool. By using it, you can see what the spreadsheet will look like when you print it. If you do not like what you see and what to make changes, you can close the Print Preview and return to the spreadsheet to make the changes you want.</p>



    </li>
						
</ul>								  


<!--! end of Tab Section -->




<a href="#top">Back to top</a>


</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss3"></a>
<h4>Displaying Formulas on the Printout</h4>

<p>As you have learned, if formulas and/or functions are being applied in a spreadsheet, they are displayed in the formula bar when those cells are activated. However, the formulas and/or functions do not print in the spreadsheet unless the user chooses the option to <strong>display formulas</strong>.</p> 

<p>Why might a user want the formulas and/or functions to print?  To make it easy to find the cells using formulas or functions, especially in a large spreadsheet; to check for errors, especially in a large spreadsheet; to see all of the formulas and/or functions that are being used, especially in a large spreadsheet. </p> 

<p>In DIDL JumpStart, you will need to be able to show the formulas on your spreadsheet not just the results of the calculation on a practical task. If you are asked for this printout, only formulas will be verified with it and the formatting will be verified with other printouts.</p> 

<p>In all versions of Microsoft Excel, you can use the keyboard shortcut <strong>CTRL + ` </strong> to display the formulas and/or functions in the worksheet.</p>

<p>The symbol <strong>`</strong> is called the <strong>grave accent</strong>. It is located on the keyboard to the left of the number 1 key. You hold down the CTRL key and then press the ` key and the formulas will be displayed. Instead of seeing the numerical result of the formula in the cell or cells, you will see the formula or function applied to that cell by the user. The results will spread out the spreadsheet to make room for the formulas and all formatting options and selections will disappear.</p> 

<p>To <strong>remove the display of formulas</strong>, hold down the CTRL key and then press the ` key and the formulas will be removed and the formatting returned.</p>

<p> In the picture below, you can see the worksheet with no formulas displayed and all formatting in place.</p>
 

<img class="img-wrap style1" src="images/spreadsheets/displayformula1.jpg"/>
<br>
<br>

<p>In the picture below, you can see the worksheet with formulas displayed and all formatting removed. Notice the dotted line, indicating where the first page ends.</p>

<img class="img-wrap style1" src="images/spreadsheets/displayformula2.jpg"/>
<br>
<br>

<p>In Microsoft Excel 2007/2010, you can also display formulas in the worksheet by clicking on the<strong> Formulas tab</strong> in the ribbon at the top of the worksheet. From the<strong> Formula Auditing Group</strong>, click on <strong>Show Formulas</strong>. To remove the display of formulas, click on Show Formulas and the formulas will be removed and formatting returned.</p>

<img class="img-wrap style1" src="images/spreadsheets/ribbondisplayformula.jpg"/>

<br>
<br>

<div class="row">
							
<div class="twelve columns">	
								<h4>Displaying Formulas on the Printout (Excel 2007/2010) </h4>
								<br>
								
<div>
									
			<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="printingformulas" data-uid="def1f3df" preload="none">
						
<source src="http://didljumpstart.com/video/ss/printingformulas.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	


<br>
<br>

<div class="row">
							
<div class="twelve columns">	
								<h4>Displaying Formulas on the Printout (Classic) </h4>
								<br>
								
<div>
									
			<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="printingformulasclassic" data-uid="def1f3df" preload="none">
						
<source src="http://didljumpstart.com/video/ss/printingformulasclassic.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>


<br>
<br>








<a href="#top">Back to top</a>

</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss4"></a>
<h4>Fit to One Page</h4>

<p>Before printing a spreadsheet, there is a helpful option in the <strong>Page Setup Box</strong> called <strong>Fit to One Page</strong>. It can be useful to print a large spreadsheet on one page. 
</p>

<p>Before deciding to use the Fit to One Page option, it is a good idea to use Print Preview to see what the spreadsheet will look like with whatever current settings and formatting are in place and how many pages it will have when it prints.</p>

<p>What you must consider when choosing Fit to One Page is that sometimes the information becomes so small and packed together that it can be hard to read when it is printed. After you select Fit to One Page, try Print Preview to check if the data in the spreadsheet can still be read or if it has become too small.</p> 

<p>In all versions of Microsoft Excel, you access Fit to One Page through the <strong>Page Setup Box</strong>. In all versions of Microsoft Excel the Page Setup Box is the same. How a user accesses the Page Setup Box is different, depending on the version of Excel.</p>

<p>You learned how to access the Page Setup Box earlier in the lesson. A quick review is provided below:</p>

<!--! Tab Section -->
<br />

								
<dl class="nice contained tabs">
    <dd><a href="#nice5" class="active">Microsoft Excel 2007/2010</a></dd>
    <dd><a href="#nice6">Classic Microsoft Excel</a></dd>
    
</dl>
								
<ul class="nice tabs-content contained">

    <li class="active" id="nice5Tab">
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Fit to One Page in Microsoft Excel 2007/2010</h4>

        <p> In Microsoft Excel 2007/2010, click on the <strong>Page Layout tab</strong> in the ribbon at the top of the document. Next, click on the <strong>arrow</strong> in the bottom right of the <strong>Page Setup group</strong>, the Page Setup Box opens up. </p>
 
        <div class="row">
							
<div class="twelve columns">	
								<h4>Fit to One Page (Excel 2007/2010) </h4>
								<br>
								
<div>
									
			<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="fitotonepage" data-uid="def1f3df" preload="none">
						
<source src="http://didljumpstart.com/video/ss/fittoonepage.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	


        </div>
        </div>


    </li>
							  

    <li id="nice6Tab">
			
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Fit to One Page in Classic Microsoft Excel</h4>

            <p>In Classic Microsoft Excel, you access the Page Setup Box by clicking on <strong>File</strong> in the toolbar at the top of your document. From the File menu that appears, select, <strong>Page Setup</strong> and the Page Setup Box opens up.</p>
	 <div class="row">
							
<div class="twelve columns">	
								<h4>Fit to One Page (Classic) </h4>
								<br>
								
<div>
									
			<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="fitotonepageclassic" data-uid="def1f3df" preload="none">
						
<source src="http://didljumpstart.com/video/ss/fittoonepageclassic.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	
  

        
        </div>
        </div>
    </li>
						
</ul>								  


<!--! end of Tab Section -->

<h4>Page Setup Box (All Versions)</h4>

<p>In the Page Setup Box, make sure the <strong>Page tab</strong> is selected and click the radio button by <strong>Fit to:</strong>.</p>  

<p>The default in Fit to: is 1 page, so double check that it is set to 1 page and click <strong>OK</strong>.</p>



<img class="img-wrap style1" src="images/spreadsheets/pagesetupfittoonepage.jpg"/>

<br />
<br />



<a href="#top">Back to top</a>

</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss5"></a>
<h4>Printing Gridlines and Row/Column Headings on Every Page</h4>

<p>When you view a spreadsheet on the computer screen, you will see the gridlines that divide the row, columns and cells of the document. It is the same for column and row headings; you will see them on the screen when you are viewing your document. </p>
<p><strong>Remember that row and column headings are different from row and column labels.</strong> The row headings are letters like A-Z and the column headings are numbers like 1-30. The labels are what you type in at the top of a column or at the beginning of a row to describe the data.</p>

<p>However, what you see on the screen is not automatically what will print.</p> 

<p>The default setting in Excel is that the spreadsheet does not automatically print with gridlines or with column and row headings. A user must choose to print these by accessing the option through the Page Setup Box. You learned how to access the Page Setup Box earlier in the lesson.</p>

<p>In the <strong>Page Setup Box</strong>, click on the <strong>Sheet tab</strong>. In the Print section, you will see boxes next to the choices, Gridlines and Row and Column Headings. Since the default is not to print them, the boxes are unchecked. Put a check mark next to the options you want.</p>

<img class="img-wrap style1" src="images/spreadsheets/pagesetupsheet.jpg"/>
<br>
<br>

<p>It is often helpful to print the <strong>row and column labels</strong> (the ones you type in) on every page of the spreadsheet when you print it.</p> 

<p>In the examples below, the spreadsheet is printed on two pages and you must line up the pages together to see the averages in the last column on page 2 (column S) for each student whose names are on page 1 (column A).</p> 

<img class="img-wrap style1" src="images/spreadsheets/printpage1.jpg"/>
<img class="img-wrap style1" src="images/spreadsheets/printpage2.jpg"/>
<br>
<br>

<p>You can make a selection in the <strong>Page Setup Box</strong> to print column A on each printout. Access the Page Setup Box for your version of Microsoft Excel.</p>

<!--! Tab Section -->
<br />

								
<dl class="nice contained tabs">
    <dd><a href="#nice7" class="active">Microsoft Excel 2007/2010</a></dd>
    <dd><a href="#nice8">Classic Microsoft Excel</a></dd>
    
</dl>
								
<ul class="nice tabs-content contained">

    <li class="active" id="nice7Tab">
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Printing Gridlines and Headers (Excel 2007/2010)</h4>
 
      								<br>
								
<div>
									
			<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="printinggridlinesandheaders" data-uid="def1f3df" preload="none">
						
<source src="http://didljumpstart.com/video/ss/printinggridlinesandleaders.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	


    


    </li>
							  

    <li id="nice8Tab">
			
        <hr>
        <div class="row">
        <div class="twelve columns">
        <h4>Printing Gridlines and Headers (Classic)</h4>

            								<br>
								
<div>
									
			<video class="sublime" poster="http://didljumpstart.com/video/img/videocover478x360.jpg" width="480" height="360" data-name="printinggridlinesandheadersclassic" data-uid="def1f3df" preload="none">
						
<source src="http://didljumpstart.com/video/ss/printinggridlinesandheadersclassic.mp4" />
						</video>								
									
			</div>	
						
</div>
					
</div>	
  

        
     
       
    </li>
						
</ul>								  


<!--! end of Tab Section -->






<p>In the Page Setup Box, make sure the <strong>Sheet tab is selected. </strong></p>

<p>Next, look at the Print titles section. Click on the red arrow at the right side of either the <strong><i>Rows you want to repeat at left:</i></strong> or <strong><i>Columns you want to repeat at left:</i></strong> box.</p> 

<img class="img-wrap style1" src="images/spreadsheets/pagesetupsheetrepeatcolumn.jpg"/>
<br>
<br>


<p>The worksheet will open up with a little box at the top. Click in the column(s) you want to repeat, in this instance, column A. The column you choose will be put in that box. If you want more than one column repeated, click and drag the columns you want repeated.</p>

<p>Click on the red arrow again and the Page Setup Box will reappear.</p>

<img class="img-wrap style1" src="images/spreadsheets/repeatcolumn.jpg"/>
<br>
<br>

<p>After returning to box, the <strong>Columns to repeat at left</strong> box has the column(s) selection.</p>

<p>Click <strong>Ok</strong>.</p>


<img class="img-wrap style1" src="images/spreadsheets/pagesetuprepeatcolumn.jpg"/>
<br>
<br>

<p>Notice that in page two of the printout, Column A is repeated and is next to Column L.</p>

<img class="img-wrap style1" src="images/spreadsheets/repeatcolumnpage2.jpg"/>
<br>
<br>

<p>This process is the same for Rows to Repeat at Top. Click on red arrow, select the rows to repeat, click on red arrow again, and the Page Setup box is returned with the rows selected in the appropriate format. Click Ok.</p>
 
<p>An important thing to remember about printing with a chart on a spreadsheet is that if the chart is selected (has the boxes around it), the chart is the only thing that will print. Deselect the chart (click away from the chart) to print the worksheet along with the chart.</p>

<a href="#top">Back to top</a>

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
							<span class="buttonRadius right"><a href="spreadsheets20.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i></a></span>
							
							<span class="buttonRadius"><a href="spreadsheets18.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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