<%@ Page Title="Word Processing" MasterPageFile="MasterPageWP.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">	


<!-- Sticky Nav -->
			<ul id="navigationMenu">
			    <li>
				    <a id="ToC" class="inline cboxElement stickyToC" href="#inline_content">&#x2637;
			            <span>Table of Contents</span>
			        </a>
			    </li>
			    <li>
			    	<a class="stickyNext" href="wordprocessing04.aspx">&#8250;
			            <span>Next</span>
			        </a>
			    </li>
			    <li>
				     <a class="stickyPrev" href="wordprocessing02.aspx">&#8249;
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
							<p id="breadCrumb"><a href="dashboard.aspx">Dashboard</a> &nbsp;>&nbsp; <a href="wordprocessing00.aspx">Word Processing</a>&nbsp;>&nbsp; 
<a href="wordprocessing03.aspx"class="active">The Document Cycle</a>

</p>
					</div>

				



<!-- Begin Drop Down Table of Contents Menu -->
					<!-- #include file="include/toc-dd-wordprocessing.inc"-->
				<!-- End of Drop Down Table of Contents Menu -->
					
				



<!--! end of Section Header -->
				
				<!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader">
							<h4>Word Processing</h4>
							<h2>The Document </br>Cycle</h2>
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
							   




<a name="content"></a> <p class="lead"><strong>Word processing is a software application designed
    to make the computer a useful electronic writing tool that edits, stores,
    and prints documents.</strong></p>

    <p>Word processing programs are used for working with words or any type of
    written communication or text. Word processors produce documents. The
    process of creating a document is called the <strong>document
    cycle</strong>.</p>
    <hr>

    <h4>The Document Cycle includes:</h4>

    <ul class="disc">
        <li><strong>Entering</strong> or typing the text into the computer</li>

        <li><strong>Editing</strong> text - includes checking spelling,
        grammar, punctuation etc.</li>

        <li><strong>Formatting</strong> the text - includes setting margins,
        line spacing, font etc.</li>

        <li><strong>Proofreading</strong> the text - reading over the draft
        to look for any mistakes and errors</li>

        <li><strong>Saving</strong> the text as document to the location you
        decide on your computer</li>

        <li><strong>Printing</strong> the document</li>
    </ul>

    <p>Recall from the Files and Folders section that new documents reside in
    RAM, and you, the user, must SAVE a document to a drive or to a storage
    device to store it for long term in case you lose power.</p>

    <p>While saving the text is listed at the end of the document cycle, anyone
    who has worked with computers for any length of time knows you must save
    the document every so often as you are working on it. Users do this to
    prevent losing their work in case of a power failure or some other problem.
    <strong>It is wise to save your work about every 5 minutes.</strong></p>

    <p>With that in mind, here is the document cycle that is best to follow.
    Note how often the user is saving the document.</p>

    <ul class="disc">
        <li>Entering text</li>

        <li>Save text as a document</li>

        <li>Enter more text</li>

        <li>Save</li>

        <li>Editing text</li>

        <li>Save</li>

        <li>Formatting the text</li>

        <li>Save</li>

        <li>Proofreading the text - Spell/Grammar check</li>

        <li>Save</li>

        <li>Printing the document</li>
    </ul>
</div>
</div>
</div>
</div>
	<!--! end of Content Section -->

				<!-- Bottom Paging Section -->
				<div class="row centered">
					<div class="twelve columns">
						<div class="pageFooter">
							<span class="buttonRadius right"><a href="wordprocessing04.aspx" class="nice small radius green button">Continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="icon-arrow-right"></i></a></span>
							
							<span class="buttonRadius"><a href="wordprocessing02.aspx" class="nice small radius green button"><i class="icon-arrow-left"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Previous</a></span>
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
	<!-- #include file="include/toc-word.inc"-->	<!-- End of Table of Contents Menu -->

	

	<!-- Included JS Files -->


</asp:Content>