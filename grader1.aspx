<%@ Page Language="VB" MasterPageFile="~/MasterPageGrader.master" AutoEventWireup="false"
    CodeFile="Grader1.aspx.vb" Inherits="Grader1" Title="" %>
  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <!-- Begin Main Conent -->
    <div class="twelve columns large" id="mainContent">
        <!-- Begin Section Header -->
        <div>
            <!--! end of Section Header -->
            <!-- Begin Section Title -->
            <div class="twelve columns">
                <div class="pageHeader">
                    <h4>
                        Grading</h4>
                    <h2>
                        Task Grading</h2>
                </div>
            </div>
            <!--! end of Section Title -->
            <!-- Begin Content Section -->
            <div class="row">
                <div class="twelve columns">
                    <div class="sectionContent">
                        <div class="row">
                            <div class="twelve columns">
                                <h5>
                                    Instructions</h5>
                                <p>
                                    Below is a list of all the <strong>Tasks Records</strong> for tasks that need to
                                    be graded. The record indicates the student, the task (Files and Folders, Word Processing,
                                    or Spreadsheets) and the version of the task.
                                </p>
                                <p>
                                    After grading indicate either <strong>pass</strong> or <strong>retake</strong> in
                                    the Grade field and for students who pass, record the current date in the Date Completed
                                    field.</p>
                                <p>
                                    <strong>Note: </strong>Students who do not finish the task in the allotted time
                                    will have a task record but no files to be graded for the task. In this case, update
                                    the <strong>Grade</strong> field in the <strong>Task Record</strong> with <strong>retake</strong>,
                                    create a checklist that indicates no files were uploaded, and save in the student's
                                    folder.</p>
                                <p>
                                    The keys for the task are in the book provided for you <strong>OR</strong> online
                                    from the link in the top navigation.</p>
                                <hr />
                                <h5>
                                    Task Records (these records are displayed in ascending Date Taken order and this
                                    panel scrolls for large numbers of tasks.</h5>
                                <br />
                                <hr />
                                <table>
                                <tr>
                                 <td>
                                
                                
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                                            SelectCommand="SELECT Distinct [Type] FROM [UserQuiz]WHERE Type<>'Test'">
                                        </asp:SqlDataSource>
                                        <br />
                                        <strong>Select Type of Task:</strong>&nbsp;
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3"
                                            DataTextField="Type" DataValueField="Type" Height="22px" Width="163px">
                                        </asp:DropDownList>
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                                            AutoGenerateColumns="False" BackColor="White" 
                                            DataKeyNames="Type,UserName,GradeDesc" DataSourceID="SqlDataSource1"
                                            HorizontalAlign="Left" ShowFooter="True" UseAccessibleHeader="False" 
                                            Width="600px">
                                            <PagerSettings Mode="NumericFirstLast" />
                                            <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="True" />
                                            <Columns>
                                                <asp:BoundField DataField="DateTimeComplete" HeaderText="DateTimeComplete" 
                                                    SortExpression="DateTimeComplete" />
                                                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                                                    SortExpression="UserName" />
                                                <asp:BoundField DataField="Grade" HeaderText="Grade" 
                                                    SortExpression="Grade" />
                                                <asp:BoundField DataField="GradeDesc" HeaderText="GradeDesc" 
                                                    SortExpression="GradeDesc" />
                                                <asp:BoundField DataField="Type" HeaderText="Type" 
                                                    SortExpression="Type" />
                                                <asp:BoundField DataField="DateTaken" HeaderText="DateTaken" 
                                                    SortExpression="DateTaken" />
                                                <asp:CommandField ShowSelectButton="True" />
                                            </Columns>
                                            <PagerStyle BackColor="#CCFFFF" ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" />
                                            <SelectedRowStyle ForeColor="White" HorizontalAlign="Left" VerticalAlign="Middle" />
                                            <HeaderStyle BackColor="#000066" ForeColor="White" HorizontalAlign="Left" VerticalAlign="Middle" />
                                            <EditRowStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                                            <AlternatingRowStyle BackColor="#CCFFFF" />
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <br />
                                </td>
                                 <td rowspan="2" style="width: 0px; overflow: auto;" valign="top">
                                     <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="261px" 
                                         AutoGenerateRows="False" DataSourceID="SqlDataSource2" BackColor="White" 
                                         BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                         DefaultMode="Edit" GridLines="Vertical">
                                         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                         <Fields>
                                             <asp:CommandField ShowEditButton="True" />
                                             <asp:BoundField DataField="TaskType" HeaderText="TaskType" 
                                                 SortExpression="TaskType" />
                                             <asp:BoundField DataField="UserName" HeaderText="UserName" 
                                                 SortExpression="UserName" />
                                             <asp:BoundField DataField="TaskDate" HeaderText="TaskDate" 
                                                 SortExpression="TaskDate" />
                                             <asp:BoundField DataField="TaskVer" HeaderText="TaskVer" 
                                                 SortExpression="TaskVer" />
                                             <asp:CheckBoxField DataField="TaskGrade" HeaderText="TaskGrade" 
                                                 SortExpression="TaskGrade" />
                                             <asp:BoundField DataField="TaskGradenote" HeaderText="TaskGradenote" 
                                                 SortExpression="TaskGradenote" />
                                             <asp:BoundField DataField="Task0" HeaderText="Task0" SortExpression="Task0" />
                                             <asp:BoundField DataField="Task1" HeaderText="Task1" SortExpression="Task1" />
                                             <asp:BoundField DataField="Task2" HeaderText="Task2" SortExpression="Task2" />
                                             <asp:BoundField DataField="Task3" HeaderText="Task3" SortExpression="Task3" />
                                             <asp:BoundField DataField="Task4" HeaderText="Task4" SortExpression="Task4" />
                                             <asp:BoundField DataField="Task5" HeaderText="Task5" SortExpression="Task5" />
                                             <asp:BoundField DataField="Task6" HeaderText="Task6" SortExpression="Task6" />
                                             <asp:BoundField DataField="Task7" HeaderText="Task7" SortExpression="Task7" />
                                             <asp:BoundField DataField="Task8" HeaderText="Task8" SortExpression="Task8" />
                                             <asp:BoundField DataField="Task9" HeaderText="Task9" SortExpression="Task9" />
                                             <asp:BoundField DataField="Task10" HeaderText="Task10" 
                                                 SortExpression="Task10" />
                                             <asp:BoundField DataField="Task11" HeaderText="Task11" 
                                                 SortExpression="Task11" />
                                             <asp:BoundField DataField="Task12" HeaderText="Task12" 
                                                 SortExpression="Task12" />
                                             <asp:BoundField DataField="Task13" HeaderText="Task13" 
                                                 SortExpression="Task13" />
                                             <asp:BoundField DataField="Task14" HeaderText="Task14" 
                                                 SortExpression="Task14" />
                                             <asp:BoundField DataField="Task15" HeaderText="Task15" 
                                                 SortExpression="Task15" />
                                             <asp:BoundField DataField="Task16" HeaderText="Task16" 
                                                 SortExpression="Task16" />
                                             <asp:BoundField DataField="Task17" HeaderText="Task17" 
                                                 SortExpression="Task17" />
                                             <asp:BoundField DataField="Task18" HeaderText="Task18" 
                                                 SortExpression="Task18" />
                                             <asp:BoundField DataField="Task19" HeaderText="Task19" 
                                                 SortExpression="Task19" />
                                             <asp:BoundField DataField="Task20" HeaderText="Task20" 
                                                 SortExpression="Task20" />
                                             <asp:BoundField DataField="Task21" HeaderText="Task21" 
                                                 SortExpression="Task21" />
                                             <asp:BoundField DataField="Task22" HeaderText="Task22" 
                                                 SortExpression="Task22" />
                                             <asp:BoundField DataField="Task23" HeaderText="Task23" 
                                                 SortExpression="Task23" />
                                             <asp:BoundField DataField="Task24" HeaderText="Task24" 
                                                 SortExpression="Task24" />
                                             <asp:BoundField DataField="Task25" HeaderText="Task25" 
                                                 SortExpression="Task25" />
                                             <asp:BoundField DataField="Task26" HeaderText="Task26" 
                                                 SortExpression="Task26" />
                                             <asp:BoundField DataField="Task27" HeaderText="Task27" 
                                                 SortExpression="Task27" />
                                             <asp:BoundField DataField="Task28" HeaderText="Task28" 
                                                 SortExpression="Task28" />
                                             <asp:BoundField DataField="Task29" HeaderText="Task29" 
                                                 SortExpression="Task29" />
                                         </Fields>
                                         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                         <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                         <AlternatingRowStyle BackColor="#DCDCDC" />
                                     </asp:DetailsView>
                                
                                     
                                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                                         
                                         SelectCommand="SELECT TaskType, UserName, TaskDate, TaskVer, TaskGrade, TaskGradenote, Task0, Task1, Task2, Task3, Task4, Task5, Task6, Task7, Task8, Task9, Task10, Task11, Task12, Task13, Task14, Task15, Task16, Task17, Task18, Task19, Task20, Task21, Task22, Task23, Task24, Task25, Task26, Task27, Task28, Task29 FROM CheckList WHERE (TaskType = @TaskType) AND (UserName = @UserName) AND (TaskVer = @TaskVer)">
                                         <SelectParameters>
                                             <asp:ControlParameter ControlID="GridView1" Name="TaskType" 
                                                 PropertyName="SelectedValue" Type="String" />
                                             <asp:Parameter Name="UserName" />
                                             <asp:Parameter Name="TaskVer" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
                                </td>
                                </tr>
                                <tr>
                                <td>
                                
                                <br />
                                <div runat="server" style="float:left; width: 588px;">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <fieldset style="width: 584px">
                                            <table style="width: 99%; height: 232px;">
                                                <tr>
                                                    <td style="width: 573px; height: 214px">
                                                        <strong>Select the files first by clicking on the Browse Button and then click Upload
                                                            File.<br />
                                                        </strong>Repeat this step until all files are uploaded. Each file upload may take
                                                        1 to 2 minutes to complete, so please be patient.&nbsp;<br />
                                                        <asp:FileUpload ID="myFileUpload" runat="server" Width="335px" />
                                                        <asp:Button ID="btnFileUpload" runat="server" Text="Upload File" OnClick="btnFileUpload_Click"
                                                            Height="21px" />
                                                        <hr style="width: 546px" />
                                                        <p>
                                                            Received the following file:</p>
                                                        <table border="1">
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>File Name:</strong>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblFileName" runat="server" Width="380px" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>File Type:</strong>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblFileType" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <strong>File Size:</strong>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblFileSize" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:Label ID="lblSaveResults" runat="server" />
                                                        <br />
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>
                                </td>
                                 </tr>
                                </table>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                                    SelectCommand="SELECT DateTimeComplete, UserName, Grader, Grade, GradeDesc, Type, DateTaken, UserQuizId FROM UserQuiz WHERE (Type = @Type)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="Type" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                    
                                </asp:SqlDataSource>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Bottom Paging Section -->
                
                </div>
                <div class="row centered">
                    <div class="twelve columns">
                        <div class="pageFooter">
                        </div>
                    </div>
                </div>
                <!--! end of Bottom Paging Section -->
            </div>
            <!--! end Main Conent -->
        </div>
    
    <!-- end of container -->
    </asp:Content>
