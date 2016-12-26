<%@ Page Language="VB" MasterPageFile="AdminMasterPage.master" AutoEventWireup="false"
    CodeFile="NewQuestions.aspx.vb" Inherits="QuizGen" Title="Question Editor" %>

<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <table style="width: 1056px">
        <tr>
            <td style="font-size: 12pt; vertical-align: middle; width: 1123px; height: 29px;
                text-align: left">
            </td>
        </tr>
        <tr>
            <td style="background-color: #00aeef; color: White; font-size: 18pt; vertical-align: middle;
                text-align: left; height: 29px; width: 1123px;">
                &nbsp;Edit Existing Questions
            </td>
        </tr>
        <tr>
            <td style="width: 1123px">
                &nbsp;
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" DataKeyNames="QuestionId" DataSourceID="SqlDataSource1"
                    Height="334px" Width="1161px" Style="border-collapse: collapse" EnableSortingAndPagingCallbacks="True"
                    HorizontalAlign="Left" GridLines="Vertical" ForeColor="Black" CssClass="webparts">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                        <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" InsertVisible="False"
                            ReadOnly="True" SortExpression="QuestionId" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Answer1" HeaderText="Answer1" SortExpression="Answer1" />
                        <asp:BoundField DataField="Answer2" HeaderText="Answer2" SortExpression="Answer2" />
                        <asp:BoundField DataField="Answer3" HeaderText="Answer3" SortExpression="Answer3" />
                        <asp:BoundField DataField="Answer4" HeaderText="Answer4" SortExpression="Answer4" />
                        <asp:BoundField DataField="Answer5" HeaderText="Answer5" SortExpression="Answer5" />
                        <asp:BoundField DataField="CorrectAnswer" HeaderText="CorrectAnswer" SortExpression="CorrectAnswer" />
                        <asp:BoundField DataField="AnswerExplanation" HeaderText="AnswerExplanation" SortExpression="AnswerExplanation" />
                        <asp:BoundField DataField="QuestionNo" HeaderText="QuestionNo" SortExpression="QuestionNo" />
                        <asp:BoundField DataField="Sections" HeaderText="Sections" SortExpression="Sections" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" BorderStyle="Solid"
                        BorderWidth="1px" />
                    <AlternatingRowStyle BackColor="#CCCCCC" BorderStyle="Inset" BorderWidth="1px" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" DeleteCommand="DELETE FROM [Questions] WHERE [QuestionId] = @original_QuestionId AND [Title] = @original_Title AND [Answer1] = @original_Answer1 AND [Answer2] = @original_Answer2 AND [Answer3] = @original_Answer3 AND [Answer4] = @original_Answer4 AND (([Answer5] = @original_Answer5) OR ([Answer5] IS NULL AND @original_Answer5 IS NULL)) AND [CorrectAnswer] = @original_CorrectAnswer AND (([AnswerExplanation] = @original_AnswerExplanation) OR ([AnswerExplanation] IS NULL AND @original_AnswerExplanation IS NULL)) AND (([QuestionNo] = @original_QuestionNo) OR ([QuestionNo] IS NULL AND @original_QuestionNo IS NULL)) AND (([Sections] = @original_Sections) OR ([Sections] IS NULL AND @original_Sections IS NULL))"
                    InsertCommand="INSERT INTO [Questions] ([Title], [Answer1], [Answer2], [Answer3], [Answer4], [Answer5], [CorrectAnswer], [AnswerExplanation], [QuestionNo], [Sections]) VALUES (@Title, @Answer1, @Answer2, @Answer3, @Answer4, @Answer5, @CorrectAnswer, @AnswerExplanation, @QuestionNo, @Sections)"
                    OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:jumpstartConnectionString.ProviderName %>"
                    SelectCommand="SELECT * FROM [Questions] ORDER BY [QuestionId]" UpdateCommand="UPDATE [Questions] SET [Title] = @Title, [Answer1] = @Answer1, [Answer2] = @Answer2, [Answer3] = @Answer3, [Answer4] = @Answer4, [Answer5] = @Answer5, [CorrectAnswer] = @CorrectAnswer, [AnswerExplanation] = @AnswerExplanation, [QuestionNo] = @QuestionNo, [Sections] = @Sections WHERE [QuestionId] = @original_QuestionId AND [Title] = @original_Title AND [Answer1] = @original_Answer1 AND [Answer2] = @original_Answer2 AND [Answer3] = @original_Answer3 AND [Answer4] = @original_Answer4 AND (([Answer5] = @original_Answer5) OR ([Answer5] IS NULL AND @original_Answer5 IS NULL)) AND [CorrectAnswer] = @original_CorrectAnswer AND (([AnswerExplanation] = @original_AnswerExplanation) OR ([AnswerExplanation] IS NULL AND @original_AnswerExplanation IS NULL)) AND (([QuestionNo] = @original_QuestionNo) OR ([QuestionNo] IS NULL AND @original_QuestionNo IS NULL)) AND (([Sections] = @original_Sections) OR ([Sections] IS NULL AND @original_Sections IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_QuestionId" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Answer1" Type="String" />
                        <asp:Parameter Name="original_Answer2" Type="String" />
                        <asp:Parameter Name="original_Answer3" Type="String" />
                        <asp:Parameter Name="original_Answer4" Type="String" />
                        <asp:Parameter Name="original_Answer5" Type="String" />
                        <asp:Parameter Name="original_CorrectAnswer" Type="String" />
                        <asp:Parameter Name="original_AnswerExplanation" Type="String" />
                        <asp:Parameter Name="original_QuestionNo" Type="String" />
                        <asp:Parameter Name="original_Sections" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Answer1" Type="String" />
                        <asp:Parameter Name="Answer2" Type="String" />
                        <asp:Parameter Name="Answer3" Type="String" />
                        <asp:Parameter Name="Answer4" Type="String" />
                        <asp:Parameter Name="Answer5" Type="String" />
                        <asp:Parameter Name="CorrectAnswer" Type="String" />
                        <asp:Parameter Name="AnswerExplanation" Type="String" />
                        <asp:Parameter Name="QuestionNo" Type="String" />
                        <asp:Parameter Name="Sections" Type="String" />
                        <asp:Parameter Name="original_QuestionId" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Answer1" Type="String" />
                        <asp:Parameter Name="original_Answer2" Type="String" />
                        <asp:Parameter Name="original_Answer3" Type="String" />
                        <asp:Parameter Name="original_Answer4" Type="String" />
                        <asp:Parameter Name="original_Answer5" Type="String" />
                        <asp:Parameter Name="original_CorrectAnswer" Type="String" />
                        <asp:Parameter Name="original_AnswerExplanation" Type="String" />
                        <asp:Parameter Name="original_QuestionNo" Type="String" />
                        <asp:Parameter Name="original_Sections" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Answer1" Type="String" />
                        <asp:Parameter Name="Answer2" Type="String" />
                        <asp:Parameter Name="Answer3" Type="String" />
                        <asp:Parameter Name="Answer4" Type="String" />
                        <asp:Parameter Name="Answer5" Type="String" />
                        <asp:Parameter Name="CorrectAnswer" Type="String" />
                        <asp:Parameter Name="AnswerExplanation" Type="String" />
                        <asp:Parameter Name="QuestionNo" Type="String" />
                        <asp:Parameter Name="Sections" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td style="background-color: #00aeef; color: White; font-size: 18pt; vertical-align: middle;
                text-align: left; height: 29px; width: 1123px;">
                New Questions
            </td>
        </tr>
        <tr>
            <td style="width: 1123px">
                &nbsp;&nbsp;
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Height="291px"
                    Width="821px" DataKeyNames="QuestionId" DefaultMode="Insert" HorizontalAlign="Left"
                    Style="border-collapse: collapse">
                    <EditItemTemplate>
                        QuestionId:
                        <asp:Label ID="QuestionIdLabel1" runat="server" Text='<%# Eval("QuestionId") %>'>
                        </asp:Label><br />
                        Question:
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' Width="655px"></asp:TextBox><br />
                        Answer A:
                        <asp:TextBox ID="Answer1TextBox" runat="server" Text='<%# Bind("Answer1") %>' Width="655px"></asp:TextBox><br />
                        Answer B:
                        <asp:TextBox ID="Answer2TextBox" runat="server" Text='<%# Bind("Answer2") %>' Width="655px"></asp:TextBox><br />
                        Answer C:
                        <asp:TextBox ID="Answer3TextBox" runat="server" Text='<%# Bind("Answer3") %>' Width="655px"></asp:TextBox><br />
                        Answer D:
                        <asp:TextBox ID="Answer4TextBox" runat="server" Text='<%# Bind("Answer4") %>' Width="655px"></asp:TextBox><br />
                        Answer E:
                        <asp:TextBox ID="Answer5TextBox" runat="server" Text='<%# Bind("Answer5") %>' Width="655px"></asp:TextBox><br />
                        Correct Answer:
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("CorrectAnswer") %>'
                            Width="67px">
                            <asp:ListItem Selected="True">A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Answer Explanation:
                        <asp:TextBox ID="AnswerExplanationTextBox" runat="server" Text='<%# Bind("AnswerExplanation") %>'
                            Width="596px"></asp:TextBox><br />
                        Sections:
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Sections") %>'>
                            <asp:ListItem Selected="True">File and Folders</asp:ListItem>
                            <asp:ListItem>Computer Basics</asp:ListItem>
                            <asp:ListItem>Internet</asp:ListItem>
                            <asp:ListItem>Word Processing</asp:ListItem>
                            <asp:ListItem>Graphics</asp:ListItem>
                            <asp:ListItem>Spreadsheets</asp:ListItem>
                            <asp:ListItem>Presentations</asp:ListItem>
                            <asp:ListItem>Database</asp:ListItem>
                            <asp:ListItem>Desktop Publishing</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update">
                        </asp:LinkButton>
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Question :
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' Width="655px"></asp:TextBox><br />
                        Answer A:
                        <asp:TextBox ID="Answer1TextBox" runat="server" Text='<%# Bind("Answer1") %>' Width="655px"></asp:TextBox><br />
                        Answer B:
                        <asp:TextBox ID="Answer2TextBox" runat="server" Text='<%# Bind("Answer2") %>' Width="655px"></asp:TextBox><br />
                        Answer C:
                        <asp:TextBox ID="Answer3TextBox" runat="server" Text='<%# Bind("Answer3") %>' Width="655px"></asp:TextBox><br />
                        Answer D:
                        <asp:TextBox ID="Answer4TextBox" runat="server" Text='<%# Bind("Answer4") %>' Width="655px"></asp:TextBox><br />
                        Answer E:
                        <asp:TextBox ID="Answer5TextBox" runat="server" Text='<%# Bind("Answer5") %>' Width="655px"></asp:TextBox><br />
                        Correct Answer:
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("CorrectAnswer") %>'
                            Width="57px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Answer Explanation:
                        <asp:TextBox ID="AnswerExplanationTextBox" runat="server" Text='<%# Bind("AnswerExplanation") %>'
                            Width="596px"></asp:TextBox><br />
                        Sections:
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Sections") %>'
                            AutoPostBack="True">
                            <asp:ListItem Selected="True">Files and Folders</asp:ListItem>
                            <asp:ListItem>Computer Basics</asp:ListItem> 
                            <asp:ListItem>Internet</asp:ListItem>
                            <asp:ListItem>Word Processing</asp:ListItem>
                            <asp:ListItem>Graphics</asp:ListItem>
                            <asp:ListItem>Spreadsheets</asp:ListItem>
                            <asp:ListItem>Presentations</asp:ListItem>
                            <asp:ListItem>Database</asp:ListItem>
                            <asp:ListItem>Desktop Publishing</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="Insert" Style="color: white; background-color: black" Width="69px"></asp:LinkButton>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel" Style="color: white; background-color: black" Width="70px"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        QuestionId:
                        <asp:Label ID="QuestionIdLabel" runat="server" Text='<%# Eval("QuestionId") %>'>
                        </asp:Label><br />
                        Question:
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' Width="655px"></asp:Label><br />
                        Answer A:
                        <asp:Label ID="Answer1Label" runat="server" Text='<%# Bind("Answer1") %>' Width="655px"></asp:Label><br />
                        Answer B:
                        <asp:Label ID="Answer2Label" runat="server" Text='<%# Bind("Answer2") %>' Width="655px"></asp:Label><br />
                        Answer C:
                        <asp:Label ID="Answer3Label" runat="server" Text='<%# Bind("Answer3") %>' Width="655px"></asp:Label><br />
                        Answer D:
                        <asp:Label ID="Answer4Label" runat="server" Text='<%# Bind("Answer4") %>' Width="655px"></asp:Label><br />
                        Answer E:
                        <asp:Label ID="Answer5Label" runat="server" Text='<%# Bind("Answer5") %>' Width="655px"></asp:Label><br />
                        Correct Answer:&nbsp;
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("CorrectAnswer") %>'
                            Width="65px">
                            <asp:ListItem Selected="True">A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Answer Explanation:
                        <asp:Label ID="AnswerExplanationLabel" runat="server" Text='<%# Bind("AnswerExplanation") %>'
                            Width="596px" Height="19px"></asp:Label><br />
                        Sections:&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Sections") %>'>
                            <asp:ListItem Selected="True">File Management</asp:ListItem>
                            <asp:ListItem>Internet</asp:ListItem>
                            <asp:ListItem>Word Processing</asp:ListItem>
                            <asp:ListItem>Graphics</asp:ListItem>
                            <asp:ListItem>Spreadsheets</asp:ListItem>
                            <asp:ListItem>Presentations</asp:ListItem>
                            <asp:ListItem>Database</asp:ListItem>
                            <asp:ListItem>Desktop Publishing</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                            Text="Edit">
                        </asp:LinkButton>
                        <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                            Text="Delete">
                        </asp:LinkButton>
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                            Text="New">
                        </asp:LinkButton>
                    </ItemTemplate>
                    <FooterStyle BackColor="Black" ForeColor="White" />
                    <InsertRowStyle BackColor="#00AEEF" />
                    <HeaderStyle BackColor="#000040" ForeColor="White" />
                    <PagerStyle BackColor="#000040" ForeColor="White" />
                    <EditRowStyle BorderStyle="Inset" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Questions] WHERE [QuestionId] = @original_QuestionId AND [Title] = @original_Title AND [Answer1] = @original_Answer1 AND [Answer2] = @original_Answer2 AND [Answer3] = @original_Answer3 AND [Answer4] = @original_Answer4 AND (([Answer5] = @original_Answer5) OR ([Answer5] IS NULL AND @original_Answer5 IS NULL)) AND [CorrectAnswer] = @original_CorrectAnswer AND (([AnswerExplanation] = @original_AnswerExplanation) OR ([AnswerExplanation] IS NULL AND @original_AnswerExplanation IS NULL)) AND (([QuestionNo] = @original_QuestionNo) OR ([QuestionNo] IS NULL AND @original_QuestionNo IS NULL)) AND (([Sections] = @original_Sections) OR ([Sections] IS NULL AND @original_Sections IS NULL))"
                    InsertCommand="INSERT INTO [Questions] ([Title], [Answer1], [Answer2], [Answer3], [Answer4], [Answer5], [CorrectAnswer], [AnswerExplanation], [QuestionNo], [Sections]) VALUES (@Title, @Answer1, @Answer2, @Answer3, @Answer4, @Answer5, @CorrectAnswer, @AnswerExplanation, @QuestionNo, @Sections)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Questions] WHERE ([QuestionId] = @QuestionId)"
                    UpdateCommand="UPDATE [Questions] SET [Title] = @Title, [Answer1] = @Answer1, [Answer2] = @Answer2, [Answer3] = @Answer3, [Answer4] = @Answer4, [Answer5] = @Answer5, [CorrectAnswer] = @CorrectAnswer, [AnswerExplanation] = @AnswerExplanation, [QuestionNo] = @QuestionNo, [Sections] = @Sections WHERE [QuestionId] = @original_QuestionId AND [Title] = @original_Title AND [Answer1] = @original_Answer1 AND [Answer2] = @original_Answer2 AND [Answer3] = @original_Answer3 AND [Answer4] = @original_Answer4 AND (([Answer5] = @original_Answer5) OR ([Answer5] IS NULL AND @original_Answer5 IS NULL)) AND [CorrectAnswer] = @original_CorrectAnswer AND (([AnswerExplanation] = @original_AnswerExplanation) OR ([AnswerExplanation] IS NULL AND @original_AnswerExplanation IS NULL)) AND (([QuestionNo] = @original_QuestionNo) OR ([QuestionNo] IS NULL AND @original_QuestionNo IS NULL)) AND (([Sections] = @original_Sections) OR ([Sections] IS NULL AND @original_Sections IS NULL))">
                    <SelectParameters>
                        <asp:Parameter Name="QuestionId" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_QuestionId" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Answer1" Type="String" />
                        <asp:Parameter Name="original_Answer2" Type="String" />
                        <asp:Parameter Name="original_Answer3" Type="String" />
                        <asp:Parameter Name="original_Answer4" Type="String" />
                        <asp:Parameter Name="original_Answer5" Type="String" />
                        <asp:Parameter Name="original_CorrectAnswer" Type="String" />
                        <asp:Parameter Name="original_AnswerExplanation" Type="String" />
                        <asp:Parameter Name="original_QuestionNo" Type="String" />
                        <asp:Parameter Name="original_Sections" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Answer1" Type="String" />
                        <asp:Parameter Name="Answer2" Type="String" />
                        <asp:Parameter Name="Answer3" Type="String" />
                        <asp:Parameter Name="Answer4" Type="String" />
                        <asp:Parameter Name="Answer5" Type="String" />
                        <asp:Parameter Name="CorrectAnswer" Type="String" />
                        <asp:Parameter Name="AnswerExplanation" Type="String" />
                        <asp:Parameter Name="QuestionNo" Type="String" />
                        <asp:Parameter Name="Sections" Type="String" />
                        <asp:Parameter Name="original_QuestionId" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Answer1" Type="String" />
                        <asp:Parameter Name="original_Answer2" Type="String" />
                        <asp:Parameter Name="original_Answer3" Type="String" />
                        <asp:Parameter Name="original_Answer4" Type="String" />
                        <asp:Parameter Name="original_Answer5" Type="String" />
                        <asp:Parameter Name="original_CorrectAnswer" Type="String" />
                        <asp:Parameter Name="original_AnswerExplanation" Type="String" />
                        <asp:Parameter Name="original_QuestionNo" Type="String" />
                        <asp:Parameter Name="original_Sections" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Answer1" Type="String" />
                        <asp:Parameter Name="Answer2" Type="String" />
                        <asp:Parameter Name="Answer3" Type="String" />
                        <asp:Parameter Name="Answer4" Type="String" />
                        <asp:Parameter Name="Answer5" Type="String" />
                        <asp:Parameter Name="CorrectAnswer" Type="String" />
                        <asp:Parameter Name="AnswerExplanation" Type="String" />
                        <asp:Parameter Name="QuestionNo" Type="String" />
                        <asp:Parameter Name="Sections" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
