<%@ Page Language="VB" MasterPageFile="~/MasterPage1.master" AutoEventWireup="false" CodeFile="ComputerBasicsResult1.aspx.vb" Inherits="TestingCenter_ComputerBasics_FinalResult" title="DIDL Essential License Computer BasicsFinal Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 650px">
            <tr>
                <td width="100%" align="right" style="vertical-align: middle; color: white; background-color: #00aeef; text-align: left" class="pageHeader questionHeader">
                    <h2>Exam Results</h2></td>
            </tr>
            </table>     
        <table width="560" align="center">
            <tr>
                <td style="height: 17px; font-size:12pt"><a href="ComputerBasicsDefault.aspx">Click here for grade</a>&nbsp;<asp:Label ID="errorLabel" runat="server" CssClass="errormessage"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: inherit">
                    <asp:GridView ID="resultGrid" runat="server" 
                        DataKeyNames="QuestionID" 
                        SelectedIndex="0"
                        AutoGenerateColumns="False" 
                        CellPadding="3" 
                        OnSelectedIndexChanged="resultGrid_SelectedIndexChanged"
                        Width="652px" 
                        Height="97px" 
                        BackColor="White" 
                        BorderColor="#CCCCCC" 
                        BorderStyle="Solid" 
                        AllowPaging="True"
                        CaptionAlign="Top" 
                        ShowFooter="True" 
                        Font-Bold="False" 
                        Font-Overline="False" 
                        Font-Size="10pt" 
                        EnableSortingAndPagingCallbacks="True" HorizontalAlign="Left">
                        <FooterStyle BackColor="White" ForeColor="White" />
                        <RowStyle CssClass="generaltext" HorizontalAlign="Left" ForeColor="#000066" 
                            VerticalAlign="Middle" />
                        <EmptyDataRowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        <Columns>
                            <asp:BoundField DataField="QuestionID" HeaderText="Question Id" 
                                Visible="False" />
                            <asp:BoundField DataField="Title" HeaderText="Question" />
                            <asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answer" />
                            <asp:BoundField DataField="UserAnswer" HeaderText="Your Answer" />
                            <asp:BoundField DataField="Result" HeaderText="Result" />
                            <asp:HyperLinkField DataNavigateUrlFields="QuestionId" DataNavigateUrlFormatString="ComputerBasicsResults2.aspx?QuestionId={0}" Target="_blank"
                                Text="Details" />
                        </Columns>
                        <PagerStyle BackColor="#003366" ForeColor="#000066" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="White" 
                            HorizontalAlign="Left" VerticalAlign="Middle" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" 
                            CssClass="boldtext" HorizontalAlign="Left" VerticalAlign="Middle" />
                        <EditRowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        <AlternatingRowStyle BorderStyle="Solid" BackColor="#CCFFcc" 
                            HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                        SelectCommand="SELECT [Title], [Answer1], [Answer2], [Answer3], [QuestionID], [QuestionNo], [Answer4], [CorrectAnswer], [AnswerExplanation], [Sections] FROM [Questions] WHERE Sections = 'Computer Basics'">
                        <SelectParameters>
                            <asp:SessionParameter Name="QuizID" SessionField="QuizID" Type="Int32" DefaultValue="0" />
                        </SelectParameters>
                    </asp:SqlDataSource>                
                </td>
            </tr>
           <tr>
                <td style="height: 39px; font-size:12pt"><a href="ComputerBasicsDefault.aspx">Return</a><br />
                 <%--    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" 
                        EmptyDataText="No data to display" HeaderText="Class" Height="152px" 
                        Width="210px">
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
                            <asp:TextBox ID="EnrollUserTextBox0" runat="server" 
                                Text='<%# Bind("EnrollUser") %>' />
                            <br />
                            EnrollCustomerId:
                            <asp:TextBox ID="EnrollCustomerIdTextBox0" runat="server" 
                                Text='<%# Bind("EnrollCustomerId") %>' />
                            <br />
                            EnrollClass:
                            <asp:TextBox ID="EnrollClassTextBox0" runat="server" 
                                Text='<%# Bind("EnrollClass") %>' />
                            <br />
                            EnrollCampus:
                            <asp:TextBox ID="EnrollCampusTextBox0" runat="server" 
                                Text='<%# Bind("EnrollCampus") %>' />
                            <br />
                            EnrollSchoolId:
                            <asp:TextBox ID="EnrollSchoolIdTextBox0" runat="server" 
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
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                        SelectCommand="SELECT [EnrollUser], [EnrollCustomerId], [EnrollClass], [EnrollCampus], [EnrollSchoolId] FROM [Enrollment] WHERE ([EnrollUser] = @EnrollUser)">
                        <SelectParameters>
                            <asp:SessionParameter Name="EnrollUser" SessionField="username" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource> --%>  
                </td>
            </tr>                                 
        </table>

</asp:Content>

