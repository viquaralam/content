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
			    	<a class="stickyNext" href="spreadsheets02.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets00.1.aspx">&#8249;
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
<a href="spreadsheets01.aspx"class="active">Basic Terms and Tools</a>
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
							<h2>Basic Terms</br> and Tools</h2>
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
																										
								
<p class="lead"><strong>Now that you understand how to create documents, like letters and reports using word processing programs and software, let's move to what are called spreadsheets. </strong></p class="lead">

<p>In the Microsoft Office Suite, the spreadsheets program is called Excel.</p>

<a name="top"></a>
<p>In this section, you will learn about:</p>

<ul class="disc">
    <li><a href="#ss1">What is a Spreadsheet?</a></li>

    <li><a href="#ss2">The Worksheet</a></li>

    <li><a href="#ss3">Toolbars</a></li>

    <li><a href="#ss4">Entering Data into a Spreadsheet</a></li>

    <li><a href="#ss5">Undo</a></li>

   
</ul>

<p>Each of the basic terms and tools for spreadsheets is important to master,
so let's begin!</p>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss1"></a>
<h4>What is a Spreadsheet?</h4>


<p>So, just what is a <strong>spreadsheet</strong>? A spreadsheet is an application for organizing, analyzing, managing, storing and presenting information and data that is mainly numeric (meaning numbers or number based). Spreadsheets are very commonly used by accountants, bookkeepers, office managers, financial planners and other people who work with numbers frequently. However, since the software and applications for spreadsheets are often bundled within a suite of software, more and more people who are not accountants, bookkeepers or financial professionals use spreadsheets very regularly.</p>

<p>Spreadsheets are especially helpful in answering "What if?"ù questions
and exploring possibilities. For example, you can setup a budget for yourself
that adds up what you spend monthly on such things as rent, food, utilities,
clothing, car payment, insurance, entertainment, etc. You can quickly see how
changing some of the numbers affects your overall budget. For example, you can
see just how much money you would have to save on entertainment and clothing to
allow you to move to a more expensive place to live.</p>

<p>To begin, let's look at a typical spreadsheet and identify what you see when you open one up on the computer.</p>


<a href="#top">Back to top</a>
</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss2"></a>
<h4>The Worksheet</h4>

<p> When you open up a spreadsheet, the individual document
you see is called a <strong>worksheet</strong>. No matter what version of Office you have, the basics of the worksheet are the same. Within a spreadsheet, there can be just one worksheet or many worksheets, depending upon the type of task and the user's need.</p>

<p>The <strong>default setting in spreadsheets is for three</strong> worksheets. The worksheets are <strong>tabbed</strong> at the bottom of the spreadsheet and named Sheet 1, Sheet 2 and Sheet 3. You can add or delete worksheets and you can name them as well. You will learn more about this later.</p>

<p>Each worksheet is made up of a grid of numbered, horizontal <strong>rows</strong> and alphabetically lettered, vertical <strong>columns</strong>. When you open up a new, blank
worksheet, notice that all of the rows are the same size, all of the columns
are the same size and so are all of the cells. These are the default program
settings. You can change the sizes of the rows, columns or cells and will learn
about that later in the section.</p>

<p>The intersection of a row and column is called a <strong>cell</strong>. You will recall that you learned about cells in word processing in the section on tables. A table looks similar to a spreadsheet, since it is made up of rows and columns, but they are not the same thing. Recall, a table is a tool for organizing data in a document created using word processing software. The Spreadsheet program is an entirely separate program.</p>

<p>Within a spreadsheet, every cell has a <strong>cell address</strong>. The cell address is made up of the letter of the column and the number of the row.</p>

<p>You will notice two spaces at the top of the worksheet. They are the <strong>Name Box</strong> and the <strong>Formula Bar</strong>. The Name Box shows you the cell address of the cell in which you are working. The Formula Bar shows the <strong>formula</strong> or the <strong>function</strong> that applies
to the cell address where you are working. If the user is not using formulas or
functions, then it displays the data in the cell. You will learn more about
these later in the section.</p>


<img class="img-wrap style1" src="images/spreadsheets/worksheet.jpg"/>
<br>
<br>


<p>In the above example, the blank worksheet you see is called <strong>Sheet 1</strong> (circled in the picture).The default setting for a spreadsheet is to open with three worksheets named Sheet 1, Sheet 2 and Sheet 3.</p>


<p>The format of a worksheet is a grid made up of <strong>rows</strong>, <strong>columns</strong> and <strong>cells</strong>.</p>

<p>You can see 10 horizontal rows, numbered 1 - 10
on the left side of the worksheet. These numbers are called <strong>row headings</strong>.</p>

<p>You can see 5 vertical columns, letters A - E, at 
the top of the worksheet. These letters are called <strong>column headings</strong>.</p>

<p>The blank cell with the <strong>cell address C7</strong> is boxed in the picture. Note the "C"ù at the top of the column and the "7"ù at the beginning of the row are highlighted to show you the <strong>cell address</strong>. </p>

<p>The cell address also shows in the <strong>Name Box</strong> at the top left of the worksheet.<p>

<p>To the right of the Name Box is the <strong>Formula Bar</strong>, which has the two letters <strong><i>fx</i></strong> in front of it.</p>


<p>A <strong>range</strong> is a rectangular block of cells. A range can go
across columns and rows or not. A range can have many cells or just a
few.</p>

<p>Just like a cell address is set by the Column and Row, a range is set by the
upper left-most cell address and the lower right-most cell address. You will
notice that these cell addresses are the two opposite corners of the rectangle
formed by the range. When you name the range, the two cell addresses are
separated by a colon.</p>

<p>In the example below, the range goes across columns and rows. The range here
is C6:D9. Ranges in formulas are enclosed with parentheses.</p>

<img class="img-wrap style1" src="images/spreadsheets/range.jpg"/>
<br>
<br>

<a href="#top">Back to top</a>


</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss3"></a>
<h4>Toolbars</h4>

<p>As you learned in Word Processing, most programs use <strong>toolbars</strong>. Toolbars are groups of related commands and tools represented with icons that are displayed on the screen for easy access.</p> 

<p>The toolbars in the Microsoft Office Suite are similar between programs; so much of what you learned about toolbars in Word Processing will apply in spreadsheets. And, just like in word processing, if you move your mouse over an icon in the toolbar and <strong>hover</strong> (wait a few seconds), the name of the tool will appear. By clicking on the icon for the tool, you activate that command.</p> 

<p>Spreadsheets is a program designed to work with numbers, so even though many of the tools are the same as in word processing, using them in the spreadsheets environment is a little different from using them in a word processing environment.</p> 

<p>An important difference on the toolbar for spreadsheets is the <strong>Formula Bar</strong>. The Formula Bar allows you to enter a formula, function, or data. Formulas and Functions are powerful tools and you will learn more about them later in the section.</p> 

<img class="img-wrap style1" src="images/spreadsheets/formulabar.jpg"/>
<br>
<br>

<a href="#top">Back to top</a>

</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss4"></a>
<h4>Entering Data into a Spreadsheet</h4>

<p>As you learned, spreadsheets are most often used for numeric information; however, they are flexible enough for all types of information besides numbers. The <strong>cells</strong> in a worksheet can contain numbers as well as text, formulas, or graphics.</p>

<p>So, if the main purpose of spreadsheets is for managing numerical information, why would a user enter text or other information into a worksheet? A common reason is to enter text to <strong>label</strong>, identify or explain what the numeric information in the columns or rows is about or what it is for. For example, if a user is keeping information about payroll and salary in a worksheet, the names of the employees would be put on the worksheet in text, like in the example below.</p>

<p>To enter data in a cell, place your cursor in the cell where you want to work and click. Begin typing the data in the cell.</p> 

<img class="img-wrap style1" src="images/spreadsheets/cells.jpg"/>

<p>In this worksheet, the user is keeping weekly payroll data for 6 employees.</p>

<p>Notice Column A has text only. This is because in the cell, A2, the column is labeled  "Employee Name"ù  and the name of each employee is in cells A4  - A9.</p>

<p>Columns B, C and D have text and numbers. This is because in the cells B2, C2 and D2 the columns are labeled <strong> "Hours Worked"ù  (B2),  "Hourly Pay Rate"ù  (C2) and  "Gross Earnings"  (D2)</strong> but the rest of the cells contain numbers.</p> 

<p>Notice Rows 1 and 2 have text only and Rows 4  - 9 have text and numbers. This is because each row is labeled with the <strong>employee name (cells A4 - A9)</strong> and the rest of the data about the employee in each row are numeric.</p>

<p>Often, column and row labels are text. The data in the cells in each column or row may be numeric only or a mix of numeric and text or text only. It depends on what the user needs to do in the worksheet.</p>


<p>When you are finished typing information into a cell in the worksheet, you must press one of three keys on the keyboard:  the <strong>Enter key</strong>, the <strong>tab key</strong>, or an <strong>arrow key</strong>. By pressing one of these three keys, you close out entering information into that particular cell and move to another cell in the worksheet.</p>

<p>When you press the Enter key or the tab key, you close out the current cell. Next, the cursor appears in the next cell to the right (in the same row) or below for more information to be entered.</p>

<p>The arrow keys will take you to the next cell in one of four directions, above, below, left or right. Like the Enter key and the tab key, pressing it closes out the current cell and takes you to another cell for information to be entered.</p>

<a href="#top">Back to top</a>

</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss5"></a>
<h4>Undo</h4>

<p>Just like in Word Processing, you can undo the last thing you typed or last action you performed in your document by using the arrow that circles to the left at the top of an open Excel spreadsheet. The symbol looks something like this:</p>

<img class="img-wrap style1" src="images/wordprocessing/undo.jpg"/>
<br>
<br>
<img class="img-wrap style1" src="images/spreadsheets/undobar.jpg"/>
<br>
<br>

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
							<span class="buttonRadius right"><a href="spreadsheets02.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i></a></span>
							
							<span class="buttonRadius"><a href="spreadsheets00.1.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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