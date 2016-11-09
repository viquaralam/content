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
			    	<a class="stickyNext" href="spreadsheets03.aspx">&#8250;			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="spreadsheets01.aspx">&#8249;			            <span>Previous</span>
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
<a href="spreadsheets02.aspx"class="active">Formatting Cells</a>

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
							<h2>Formatting Cells</h2>
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
	
																	
								<a name="content"></a><p class="lead"><strong>Formatting Cells introduces you to the most basic actions used in working with spreadsheets.</strong></p class="lead">


<a name="top"></a>
<p>In this section, you will learn about:</p>

<ul class="disc">
    <li><a href="#ss1">Formatting Cells</a></li>

    <li><a href="#ss2">Inserting and Deleting Cells</a></li>

    <li><a href="#ss3">Clearing Contents of a Cell, Row or Column</a></li>

    <li><a href="#ss4">Cut, Copy and Paste in the Spreadsheet</a></li>

   

   
</ul>


<hr>
<div class="row">
<div class="twelve columns">
<a name="ss1"></a>
<h4>Formatting Cells</h4>

<p>Formatting Cells introduces you to the most basic actions used in working with spreadsheets. Because a spreadsheet is made up of cells arranged in columns and rows, learning how to format the cells, insert and delete cells, cut, copy and paste cells is important to understand and master.</p>

<p>When you enter data into a cell, there are default settings that determine how text and numbers will be formatted and displayed.</p> 

<p>Numeric data is usually entered without commas, dollar signs, etc. but you do enter the decimal. If the text or numbers you enter do not look the way you want them to, as an empowered user, you can change how the information will display by changing the formatting of the cell. </p>

<p>To do this, you need to access the <strong>Format Cells Box</strong>. Start by right clicking in the active cell and from the pop-up menu that appears, select <strong>Format Cells</strong>.</p>

<img class="img-wrap style1" src="images/spreadsheets/formatcells.jpg" alt="">
<br>
<br>

<p>Notice that you have many of the same formatting options in spreadsheets that you do in word processing. You can cut, copy and paste data within worksheets just like you do in word processing and you will explore these later in the section.</p>
<hr>

<p>From the Format Cells Box that opens up, notice the 6 tabs at the top of the box: Number, Alignment, Font, Border, Fill and Protection.</p>

<img class="img-wrap style1" src="images/spreadsheets/formatcellsbox.jpg" alt="">
<br>
<br>

<p>In this example, the user has selected the <strong>Number tab</strong> in order to change the format of the numeric data in a cell. The user is entering dollar amounts, so the user chose <strong>Currency</strong>.</p>

<a href="#top">Back to top</a>
</div>
</div>





<hr>
<div class="row">
<div class="twelve columns">
<a name="ss2"></a>
<h4>Inserting and Deleting Cells</h4>	

<p>As you work within a spreadsheet, you may need to insert (add) or delete cells, rows or columns information.</p> 

<p>When you choose to <strong>insert</strong>, the program will insert blank (meaning they have no data or information) cells, rows or columns. When you insert cells, rows or columns, the surrounding cells will move or shift.</p> 

<p>If you are using formulas or functions within the area of the worksheet where you choose to insert, the formulas or functions that apply to the surrounding cells will apply to the inserted cells.</p>

<p>When you choose to <strong>delete</strong> cells, rows or columns, all of the cell contents as well as the cells will be deleted and the surrounding cells will move or shift.</p> 

<p>Depending on your version of Excel, the cells, rows or columns may shift automatically, or the program may give you options for how you want to move the cells, rows or columns.</p>

<p>In order to <strong>insert a row</strong>, place your cursor in one of the numbered <strong>row headings</strong> and right click with your mouse. From the pop-up box, select Insert. A blank row will be inserted in the row where you clicked on with your mouse and the rows below it will shift or move down.</p>

<p>To <strong>delete a row</strong>, place your cursor in one of the numbered <strong>row headings</strong> and right click with your mouse. From the pop-up box, select Delete. The row you selected will be deleted and the rows below it will shift or move up.</p>

<p>In the example below, you will see that the employees are listed in alphabetical order. If a new employee is hired, the user can easily insert a row to add the new person to the spreadsheet.</p>

<p>To insert a row, right click on the number heading where you want to insert a row and select <strong>Insert</strong>. A blank row will be inserted and the rows below it will shift or move down.<p/>
 
<img class="img-wrap style1" src="images/spreadsheets/insert.jpg" alt="">

<p>You can add or delete a <strong>single cell</strong> by right clicking on any cell in the worksheet. When you do this, the same pop-up box from above will appear. When you choose Insert or Delete this time, because you have clicked on a single cell, another box will appear so you can choose how you want the cells around it to shift.</p>

<img class="right" src="images/spreadsheets/insertbox.jpg" alt="">

<p>Notice you can choose to insert an entire row or column from this box.</p>

<p>If you want to delete a <strong>range of cells</strong>, use your mouse to click and drag in order to select the ones you wish. If you want to delete whole rows or columns, you can easily select the ones you want by clicking and dragging across the headings.</p>



<a href="#top">Back to top</a>
</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss3"></a>
<h4>Clear the Contents of a Cell, Row or Column</h4>

<img class="right" src="images/spreadsheets/clearcontents.jpg" alt="">	

<p><strong>Clearing the contents</strong> of a cell, row or column removes the contents within but leaves the cell, row or column in place in the worksheet.</p>

<p>To clear the contents of a cell, right click on a cell in the worksheet. When you do this, a pop-up box will appear. Click on <strong>Clear Contents</strong> and the data in the cell will disappear.</p> 

<p>To clear the contents of a range of cells, use your mouse to click and drag in order to select the ones you wish.</p>


<a href="#top">Back to top</a>
</div>
</div>

<hr>
<div class="row">
<div class="twelve columns">
<a name="ss4"></a>
<h4>Cut, Copy and Paste in the Spreadsheet</h4>



<p>As you learned in Word Processing, you can <strong>cut, copy and paste</strong> information within a document and within programs. In the Excel spreadsheets program, you will also use these tools.</p>

<p>In order to cut or copy in a spreadsheet, right click on the cells you want to cut or copy in order to select them. If you want to cut or copy whole rows or columns, don't forget to click and drag in the headings in order to select them. From the pop-box that appears choose Cut or Copy.</p> 

<p>After you select Cut or Copy, the cells you have selected will have a blinking, black border.</p> 

<img class="right" src="images/spreadsheets/paste.jpg" alt="">

<p>Next, place your cursor where you want to move the selected cells and right click. If you are cutting or copying whole rows or columns, right click in the heading where you want to move them. From the pop-up box that appears, you have some options.</p>

<p>If you choose Paste, the contents of the highlighted cells will paste into the new location. If the new location has data in it, it will paste over and replace the data.</p>

<p>If you choose Insert Cut Cells (if you chose Cut) or Insert Copied Cells (if you chose Copy), the contents of the highlighted cells will insert into the new location and the surrounding cells will shift.</p>

<p>Remember, <strong>when you Cut cells</strong>, the information in the cells is deleted from the original location and moved to where you place your cursor to paste them; however <strong>the cells are not removed</strong>. If you are asked to move a column from one place to another, you cut and paste the data and then delete the blank column that was left.</p>

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
							<span class="buttonRadius right"><a href="spreadsheets03.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i></a></span>
							
							<span class="buttonRadius"><a href="spreadsheets01.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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