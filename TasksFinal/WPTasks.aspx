<%@ Page Language="VB" MasterPageFile="~/MasterPage1.master" AutoEventWireup="false"
    CodeFile="WPTasks.aspx.vb" Inherits="TestingCenter_FinalTests_WPTasks" Title="Word Processing Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

 <script type="text/javascript">
     $(document).ready(function () {
         var startDate = new Date();
         if ($('[id$=_hdnStartDate]').val() == "") {
             $('[id$=_hdnStartDate]').val(startDate.format('M/dd/yy HH:mm:ss'));
         }

         startDate = new Date($('[id$=_hdnStartDate]').val());
         var endDate = new Date();
         endDate.setTime(startDate.getTime() + 30*60*1000);
         $('[id$=_Label1]').text(startDate.format('M/dd/yy HH:mm:ss'));
         $('[id$=_Label2]').text(endDate.format('M/dd/yy HH:mm:ss'));

         // Set the date we're counting down to
         var countDownDate = endDate.getTime();
         // Update the count down every 1 second

         var x = setInterval(function () {

             // Get todays date and time
             var now = new Date().getTime();
    
             // Find the distance between now an the count down date
             var distance = countDownDate - now + 1000;
    
             // Time calculations for days, hours, minutes and seconds
        
             var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
             var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
             // Output the result in an element with id="demo"
             $('[id$=_Label3]').text("The window will be closed in " + minutes + " Minutes & " + seconds + " Seconds");
    
             // If the count down is over, write some text 
             if (distance < 0) {
                 clearInterval(x);
                 $('[id$=_Label3]').text("The window will be closed in 0 Seconds");
                 $('[id$=_Freeze').val(0)
                 $('[id$=_Ptr').val(0)
                 window.location.replace("../Login.aspx");


             }
         }, 1000);
     });
</script>               
    <div class="container" style="width: 934px; height: 1123px;">
        <asp:HiddenField ID="hdnStartDate" Value="" runat="server"/>
        <asp:HiddenField ID="Ptr" Value="0" runat="server"/>
        <asp:HiddenField ID="Freeze" Value="0" runat="server"/>
        <div class="row" style="width: 641px; height: 1065px;">
            <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick " Interval="1800000">
            </asp:Timer>
                    
            
            <table style="width: 933px; height: 526px; border-bottom: gray thin solid;" border="4"
                cellpadding="5">
                <tr>
                    <td colspan="3" class="pageHeader questionHeader">
                        <h2>
                            Word Processing
                            <br />
                            Task</h2>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 32px; font-size: 16pt; font-weight: bold; font-style: italic;">
                    
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        
                    </td>
                    
                </tr>
                <tr>
                    <td style="border-style: none; width: 239px; height: 32px;">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" />
                            </Triggers>
                            <ContentTemplate>
                                Start Date/Time:<br />
                                <asp:Label ID="Label1" runat="server" Width="281px" Text="label" Height="18px" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td style="width: 239px; height: 32px; vertical-align: top; text-align: center;">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                End Date/Time:<br />
                                <asp:Label ID="Label2" runat="server" Text="Label2" Width="281px" Height="18px" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td style="height: 32px; vertical-align: top; text-align: center; width: 324px;">
                        <asp:Button ID="ExitBtn1" runat="server" Text="Finish" CssClass="nice red button"
                            OnClick="ExitBtn1_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 250px; height: 85px; vertical-align: middle; text-align: justify;">
                        <span style="font-weight: bold;">Step 1.&nbsp; </span>Click on <strong>DOWNLOAD TASK</strong>
                        to get the instructions for this task. You must complete <strong>THESE INSTRUCTIONS</strong>
                        and upload the files called for by <strong>THESE INSTRUCTIONS</strong> within the
                        30 minute time limit.
                        <br />
                        <br />
                        <br />
                        <br />
                        <span style="font-weight: bold;">Step 2.&nbsp; </span>Follow the instructions you
                        just downloaded. You will have to <strong>minimize this browser window</strong>
                        during the task so you can complete the task.
                        <br />
                        <br />
                    </td>
                    <td style="height: 85px; vertical-align: top; text-align: left;" colspan="3">
                        <asp:HyperLink ID="TaskLink1" runat="server" NavigateUrl="~/FinalTests/Tasks/FM/didlFMTask1.pdf"
                            Target="_blank" Height="16px" Width="173px" Font-Bold="True" Font-Size="14pt">DOWNLOAD Task</asp:HyperLink>
                        <br />
                        <br />
                        When you click on <strong>DOWNLOAD TASK</strong>, another window will appear the
                        instructions. Print the instructions from that window and close it.
                        <br />
                        <br />
                        <strong>OR</strong>
                        <br />
                        <br />
                        If you can not print, you can size the window, move it to the side for reference
                        during the task, or you can keep referring to the instructions by clicking on the
                        tab for the instructions in the browser.
                    </td>
                </tr>
                <tr>
                    <td colspan="1" style="vertical-align: top; width: 410px; height: 202px; text-align: justify">
                        <span style="font-weight: bold; vertical-align: middle;">Step 3.&nbsp;</span> Upload
                        the files required by <strong>these instructions</strong>.
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <span style="font-weight: bold; vertical-align: middle;">Step 4.&nbsp;</span> Click
                        the Finish button at the top of the page.
                        <br />
                        <br />
                        <br />
                       <%-- <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                            Width="250px">
                            <EditItemTemplate>
                                EnrollUser:
                                <asp:TextBox ID="EnrollUserTextBox" runat="server" 
                                    Text='<%# Bind("EnrollUser") %>' />
                                <br />
                                EnrollCustomerId:
                                <asp:TextBox ID="EnrollCustomerIdTextBox" runat="server" 
                                    Text='<%# Bind("EnrollCustomerId") %>' />
                                <br />
                                EnrollClass:
                                <asp:TextBox ID="EnrollClassTextBox" runat="server" 
                                    Text='<%# Bind("EnrollClass") %>' />
                                <br />
                                EnrollCampus:
                                <asp:TextBox ID="EnrollCampusTextBox" runat="server" 
                                    Text='<%# Bind("EnrollCampus") %>' />
                                <br />
                                EnrollSchoolId:
                                <asp:TextBox ID="EnrollSchoolIdTextBox" runat="server" 
                                    Text='<%# Bind("EnrollSchoolId") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                EnrollUser:
                                <asp:TextBox ID="EnrollUserTextBox" runat="server" 
                                    Text='<%# Bind("EnrollUser") %>' />
                                <br />
                                EnrollCustomerId:
                                <asp:TextBox ID="EnrollCustomerIdTextBox" runat="server" 
                                    Text='<%# Bind("EnrollCustomerId") %>' />
                                <br />
                                EnrollClass:
                                <asp:TextBox ID="EnrollClassTextBox" runat="server" 
                                    Text='<%# Bind("EnrollClass") %>' />
                                <br />
                                EnrollCampus:
                                <asp:TextBox ID="EnrollCampusTextBox" runat="server" 
                                    Text='<%# Bind("EnrollCampus") %>' />
                                <br />
                                EnrollSchoolId:
                                <asp:TextBox ID="EnrollSchoolIdTextBox" runat="server" 
                                    Text='<%# Bind("EnrollSchoolId") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                EnrollUser:
                                <asp:Label ID="EnrollUserLabel" runat="server" 
                                    Text='<%# Bind("EnrollUser") %>' />
                                <br />
                                EnrollCustomerId:
                                <asp:Label ID="EnrollCustomerIdLabel" runat="server" 
                                    Text='<%# Bind("EnrollCustomerId") %>' />
                                <br />
                                EnrollClass:
                                <asp:Label ID="EnrollClassLabel" runat="server" 
                                    Text='<%# Bind("EnrollClass") %>' />
                                <br />
                                EnrollCampus:
                                <asp:Label ID="EnrollCampusLabel" runat="server" 
                                    Text='<%# Bind("EnrollCampus") %>' />
                                <br />
                                EnrollSchoolId:
                                <asp:Label ID="EnrollSchoolIdLabel" runat="server" 
                                    Text='<%# Bind("EnrollSchoolId") %>' />
                                <br />
                            </ItemTemplate>
                        </asp:FormView>--%>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                            SelectCommand="SELECT [EnrollUser], [EnrollCustomerId], [EnrollClass], [EnrollCampus], [EnrollSchoolId] FROM [Enrollment] WHERE ([EnrollUser] = @EnrollUser)">
                            <SelectParameters>
                                <asp:SessionParameter Name="EnrollUser" SessionField="UserName" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td colspan="3" style="vertical-align: top; height: 202px; text-align: center">
                        <fieldset style="width: 652px">
                            <table style="width: 100%; height: 232px;">
                                <tr>
                                    <td style="width: 573px; height: 214px">
                                        <strong>Select the files first by clicking on the Browse Button then click Upload File.<br />
                                        </strong>Repeat this step until all files are uploaded. Each file upload may take
                                        1 to 2 minutes to complete, please be patient.
                                        <br />
                                        <asp:FileUpload ID="myFileUpload" runat="server" Width="410px" />
                                        <asp:Button ID="btnFileUpload" runat="server" Text="Upload File" 
                                            Height="21px" />
                                        <hr style="width: 618px" />
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
                    </td>
                </tr>
                <!--<tr>
            <td colspan="1" 
                style="vertical-align: middle; width: 410px; vertical-align: middle; text-align: justify; height: 344px;">
                <span style=" font-weight:bold; ">Step 3.)&nbsp;</span> Fill in the blanks and submit the results.<br />
                <br />
                The form must be completely filled out and sent before the 30 minute time limit
                has expired or you click the "Submit Results" button.&nbsp;
                <br />
                <br />
                Be sure to finish uploading your files before you click the button..<br />
                <br />
                This window closes automatically when the time has expired.</td>
            <td colspan="3" style="vertical-align: middle; text-align: center; height: 344px;">
                
        <div style="width: 656px; height: 315px; font-weight: bold; font-size: 12pt; color: Black; font-family: Arial, Verdana, Tahoma">
        
       
        <p style="font-size: 24pt; text-align: center; vertical-align: middle;">
            Word Processing Task</p>
        <p>
            Your Email Address :
            <asp:TextBox ID="TxtFrom" runat="server" Columns="35" Width="349px" style="text-align: left" />
            <asp:Label ID="Required1" runat="server" Font-Bold="True" ForeColor="Red" Text="Required" Visible="False" /></p>
        
        <p>
            &nbsp;<asp:TextBox ID="TxtSubject" runat="server" Columns="50" Visible="false" /></p>
        <p>Your Name :
            <asp:TextBox ID="TxtName" runat="server" Columns="50" Width="406px" />
            <asp:Label ID="Required2" runat="server" Font-Bold="True" ForeColor="Red" Text="Required" Visible="False" /></p>
            <p>
            &nbsp;<asp:TextBox ID="TxtTo" runat="server" ReadOnly="true" Text="taskgrading@empconcepts.com" Columns="35" Visible="False" /></p>
        
           <asp:TextBox ID="TxtBody" runat="server" Columns="75" TextMode="MultiLine" Rows="10" Visible="True" Height="66px" Width="591px" ReadOnly="true" />
            <asp:Button ID="BtnSend" runat="server" Text="Submit Results" Width="601px" style="font-weight: bold; font-size: 14pt" Height="34px" Visible="true" />   
    </div> 
       
            </td>
        </tr>-->
            </table>
        </div>
    </div>
</asp:Content>
