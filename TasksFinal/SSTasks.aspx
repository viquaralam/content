<%@ Page Language="VB" MasterPageFile="~/MasterPage1.master" AutoEventWireup="false"
    CodeFile="SSTasks.aspx.vb" Inherits="TestingCenter_FinalTests_SSTasks" Title="SpreadSheet Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div class="container" style="width: 934px; height: 1123px;">
        <div class="row" style="width: 641px; height: 1065px;">
            <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick " Interval="1000">
            </asp:Timer>
            <table style="width: 600px; height: 526px; border-bottom: gray thin solid;" border="4"
                cellpadding="5">
                <tr>
                    <td colspan="3" class="pageHeader questionHeader">
                        <h2>
                            SpreadSheets Task</h2>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 32px; font-size: 12pt;">
                        This window will be open for 30 minutes only!
                    </td>
                </tr>
                <tr>
                    <td style="width: 239px; height: 32px; vertical-align: top; text-align: center;">
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
                    <td style="height: 32px; vertical-align: top; text-align: center; width: 324px;">
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
                    <td style="width: 238px; height: 72px; vertical-align: middle; text-align: justify;">
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
                    <td style="vertical-align: top; height: 72px; z-index: inherit; text-align: left;"
                        colspan="2">
                        <asp:HyperLink ID="TaskLink1" runat="server" NavigateUrl="~/FinalTests/Tasks/SS/didlSSTask1.pdf"
                            Target="_blank" Height="16px" Width="173px" Font-Bold="True" Font-Size="14pt">DOWNLOAD TASK</asp:HyperLink>
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
                    <td style="vertical-align: top; width: 238px; height: 182px; text-align: justify">
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
                    HeaderText="Class" Width="263px">
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
                    </td>
                    <td style="vertical-align: middle; height: 182px; text-align: left" align="left"
                        colspan="2" valign="top">
                        <fieldset style="width: 584px">
                            <table style="width: 99%; height: 232px;">
                                <tr>
                                    <td style="width: 573px; height: 214px" valign="top">
                                        <strong>Select the files first by clicking on the Browse Button then click Upload File.<br />
                                        </strong>Repeat this step until all files are uploaded. Each file upload may take
                                        1 to 2 minutes to complete, please be patient.&nbsp;<br />
                                        <asp:FileUpload ID="myFileUpload" runat="server" Width="335px" />
                                        <asp:Button ID="btnFileUpload" runat="server" Text="Upload File" OnClick="btnFileUpload_Click"
                                            Height="21px" />
                                        <hr style="width: 546px" />
                                        <p style="width: 543px">
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
                    <td colspan="1" style="vertical-align: middle; width: 238px; vertical-align: middle;
                        text-align: justify; height: 344px;">
                        <span style="font-weight: bold;">Step 3.)&nbsp;</span> Fill in the blanks and submit
                        the results.<br />
                        <br />
                        The form must be completely filled out and sent before the 30 minute time limit
                        has expired.<br />
                        <br />
                        This window closes automatically when the time has expired or you click the "Submit
                        Results" button.&nbsp;
                        <br />
                        <br />
                        Be sure to finish uploading your files before you click the button.
                    </td>
                    <td style="vertical-align: middle; text-align: left; height: 344px;">
                        <div style="width: 578px; height: 315px; font-weight: bold; font-size: 12pt; color: Black;
                            font-family: Arial, Verdana, Tahoma">
                            <p style="font-size: 24pt; text-align: left; vertical-align: middle;">
                                File Management Task</p>
                            <p>
                                Your Email Address :
                                <asp:TextBox ID="TxtFrom" runat="server" Columns="35" Width="349px" 
                                    Style="text-align: left" Height="19px" />
                                <asp:Label ID="Required1" runat="server" Font-Bold="True" ForeColor="Red" Text="Required"
                                    Visible="False" />
                            </p>
                            <p>
                                &nbsp;<asp:TextBox ID="TxtSubject" runat="server" Columns="50" Visible="false" />
                            </p>
                            <p>
                                Your Name :
                                <asp:TextBox ID="TxtName" runat="server" Columns="50" Width="406px" />
                                <asp:Label ID="Required2" runat="server" Font-Bold="True" ForeColor="Red" Text="Required"
                                    Visible="False" />
                            </p>
                            <p>
                                &nbsp;<asp:TextBox ID="TxtTo" runat="server" ReadOnly="true" Text="taskgrading@empconcepts.com"
                                    Columns="35" Visible="False" />
                            </p>
                            <asp:TextBox ID="TxtBody" runat="server" Columns="75" TextMode="MultiLine" Rows="10"
                                Visible="True" Height="66px" Width="488px" ReadOnly="true" />
                            <asp:Button ID="BtnSend" runat="server" Text="Submit Results" Width="495px" Style="font-weight: bold;
                                font-size: 14pt" Height="34px" Visible="true" />
                        </div>
                    </td>
                </tr>-->
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    SelectCommand="SELECT [EnrollUser], [EnrollCustomerId], [EnrollClass], [EnrollCampus], [EnrollSchoolId] FROM [Enrollment] WHERE ([EnrollUser] = @EnrollUser)">
                    <SelectParameters>
                        <asp:SessionParameter Name="EnrollUser" SessionField="UserName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </table>
        </div>
    </div>
</asp:Content>
