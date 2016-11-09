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
			    	<a class="stickyNext" href="spreadsheets12.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets10.aspx">&#8249;
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
<a href="spreadsheets11.aspx"class="active">Formulas and Functions</a>


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
							<h2>Formulas and <br /> Functions</h2>
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

<p class="lead"><strong>As you learned at the beginning of spreadsheets, these are documents commonly used by accountants, bookkeepers, office managers, financial planners and other people who work with numbers frequently.   </strong></p class="lead">
	


<p>Just like word processing programs are set up to work mainly with words and text, spreadsheet programs are set up to handle mainly numerical data, everything from very simple tasks to highly complex and complicated scientific, mathematic and financial data. </p>



<p>What is even more useful about spreadsheet programs is that it not only holds the data that a user types into it, spreadsheet programs are able to <strong>calculate and compute </strong>data when users apply <strong>formulas or functions</strong> to ranges of cells and the data inside of them.</p>

<a name="top"></a>
<p>This section includes:</p>




<ul class="disc">
    <li><a href="#ss1">Review of Name Box and Formula Bar</a></li>

    <li><a href="#ss2">Formula Definition</a></li>

    <li><a href="#ss3">Function Definition</a></li>

    
</ul>






<hr>
<div class="row">
<div class="twelve columns">
<a name="ss1"></a>
<h4>Review of Name Box and Formula Bar </h4>


<p>The <strong>current or active cell</strong> is the one in the spreadsheet where the cursor is located. In the example below, the active cell is D6. The cell address of the active cell is displayed on the spreadsheet tool bar in a box called the name box.</p>

<p> Spreadsheets with a lot of data can become quite large. The <strong>name box</strong> can be helpful in keeping track of where a user is working within a particular worksheet.</p>

<p>The <strong>formula bar </strong>shows the formula that applies to the <strong>active cell</strong>. If the user is not using formulas in that cell, the formula bar will show the actual data (numbers or text) in the cell.</p>


<p>In the example below, the active cell is <strong>D6</strong> and it is showing in the name box.
Since the formula bar in this example shows <strong>"=B6*C6"</strong> instead of the actual data in the cell (which is $204.00) you know the user is using formulas in this worksheet.</p>


<img class="img-wrap style1" src="images/spreadsheets/formulabar2.jpg" alt="">




<br />
<br />

<a href="#top">Back to top</a>

<hr>


<div class="row">
<div class="twelve columns">

<a name="ss2"></a>
<h4>Formula Definition</h4>


<p>What is a formula?  In the most basic terms, a <strong>formula</strong> is a pattern used to make a mathematical calculation. In spreadsheets, formulas are created by the user and automatically calculate numerical data within the spreadsheet. </p>


<p>An example of a formula in the above picture is =B6*C6. This formula multiplies the data in cell B6 by the data in cell C6. The result is stored in the cell in which the formula is entered, in this case D6.</p>

<h5> Symbols in a Formula</h5>


<p>In more detail, what does =B6*C6 mean?</p>

<ul class="disc"> 
<li>B6 and C6 are cell addresses. </li>
<li>The * is the symbol used for multiplication.</li>
<li>The = sign in a spreadsheet is a signal that a <strong>formula</strong> is being entered and applied to that cell.</li>
<li>It means that the information in cell D6 (in the example) is the product of (result of, equals) the information in cell B6 being multiplied by the information in cell C6.</li>
<li>In the above example, it means George worked 40 hours (cell B6) in one week and he earned $5.10 per hour (cell C6). In one week, he earned $204.00 (cell D6) </li>
<li>You could change the numbers in B6 and C6 and the number would be automatically re-calculated in cell D6.</li> 
</ul>

<p> Let's see what happens when you change the information in the cells but keep the formula the same.</p> 

<p>George still works 40 hours per week, but now he makes $12.75 per hour. When the user changes the data in cell C6 to $12.75, the formula will still automatically calculate his weekly earnings. </p>

<img class="img-wrap style1" src="images/spreadsheets/formulachange.jpg" alt="">


<p>No matter what numbers are in cell B6 and cell C6, because of the formula, the spreadsheet program will automatically multiply that data together and the answer will automatically be placed in cell D6 until the user changes or deletes the formula. Having blank cells within a selected range of cells will not change how the formula or function calculates the information.</p>

<p>Other mathematical symbols can be used in formulas as well as numbers. The <strong>+ means addition</strong>, the <strong>- means subtraction</strong>, the<strong> * means multiplication</strong>, and the <strong>/ means division</strong>. The formula,
 =C6-5 means to subtract 5 from whatever number is placed in the cell, C6.</p>


<a href="#top">Back to top</a>


</div>	

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss3"></a>
<h4>Function Definition</h4>


<p>Within the Microsoft Excel program, there are <strong>preset</strong>, default formulas that you can use within your spreadsheets. These built in formulas are called <strong>functions</strong>. Just like formulas, functions automatically calculate numerical data.</p> 

<p>The Product function, <strong>=Product(B6,C6)</strong> , does the same thing as the formula, <strong>=B6*C6</strong>. Both multiply the data in cell B6 and C6 and the results can be seen in the cell where the formula or function has been entered by the user. </p>

<p>A function is a formula. The difference is that a function is a formula you do not have to create and type into the formula bar yourself. You can choose a function from a list of functions defined in the spreadsheet program. </p>

<p>Since the Excel spreadsheet program already has many, many functions in it, many users choose never need to create a formula.</p>

<img class="img-wrap style1" src="images/spreadsheets/function.jpg" alt="">

<p>All versions of Microsoft Excel access the Insert Function Option Box, by clicking on the <strong><i>fx</i></strong> next to the formula bar near the top of the spreadsheet. The Insert Function Option Box will appear. </p>


<img class="img-wrap style1" src="images/spreadsheets/insertfunction.jpg" alt="">






<p>You can use the Insert Function Box to search for a function and to apply it to the selected cell or range of cells.</p>

<ol>

<li>In the <strong>Search for a function</strong> space, you can type what kind of function you are looking for. </li>

<li>You can browse functions by category in the select a <strong>category</strong> space. Click on the down facing arrow and from the drop down menu that appears and you can view all of the categories. If you select the <strong> "All"ù</strong> category, you can browse through all of the functions that are in the spreadsheet program.</li>

<li>After you select a category of functions to browse, you use the Select a function <strong>scrolling box</strong> with the scroll bar to view them. To select a function, click on it and the selected function will be highlighted in the scroll box. To apply the function in the selected cells, click on the OK button.</li>

<li>Notice the short <strong>explanation</strong> of the highlighted function below the Select a function scrolling box.</li>
</ol>




<p>When you are finished with your selections, click <strong>OK</strong>.</p>

 <hr>

<p>Once you select the function, the <strong>Function Argument Box</strong> appears. The Function Argument Box is the same for all versions of Excel. However, it differs for each function because each function is different.</p>


<p>The Function Argument Box, is where the cell addresses that the spreadsheet will use when it applies the function are input. If you have already highlighted the cells, they will appear in this box.</p>


<p>The spreadsheet program is created to try to help the user by predicting and filling the information in for you, so even if you have not highlighted the cells you want, there will be values already filled in for you.</p>

<p>If the values are correct, click <strong>OK</strong>. If the values are not correct, <strong>change them and click OK</strong>. The Function Arguments Box will close and the program will automatically insert the results of the function into the cell.</p>

<p>Below is a Function Argument Box for the PRODUCT function.</p>

 
<img class="img-wrap style1" src="images/spreadsheets/functionargumentbox.jpg" alt="">




<hr>

	
				
<p>Functions apply to cells in parenthesis. Notice the function, =Product(B6,C6). The function is <strong>Product</strong> and cells to which the function are applied are in parenthesis. If the cells in the parenthesis have a <strong>comma</strong> between them, the function is applied to the cells listed. If the cells have a <strong>colon :</strong> between them, the function is applied to the range of cells between the two cells.</p> 



<p>There are eleven categories of functions in most spreadsheet programs. Within each category, you can have a few or many functions to choose from.</p> 

<p>Many of the functions are very specialized and they perform complex and difficult scientific, statistical, financial and other calculations. JumpStart will focus on more commonly used and commonly useful functions.</p> 

<p>Commonly used functions are: <strong>AutoSum (&#8721;)</strong>, <strong>Date & Time</strong>, <strong>Average</strong>, <strong>Max</strong> (determining the maximum or highest number in the selected range of cells), and <strong>Min </strong>(determining the lowest number in the selected range of cells.</p> 

<p>All of the functions are accessible through the <strong>Insert Function Option Box</strong>, however, there are some shortcuts for some functions on the toolbar or the ribbon.</p> 


<a href="#top">Back to top</a>

<hr>

</div>
</div>


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
							<span class="buttonRadius right"><a href="spreadsheets12.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i>  </a></span>
							
							<span class="buttonRadius"><a href="spreadsheets10.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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