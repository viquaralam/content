<%@ Page Language="VB" MasterPageFile="~/SchoolsAdmin/School.master" AutoEventWireup="false" CodeFile="GradeBook.aspx.vb" Inherits="SchoolsAdmin_GradeBook" Title="Grade Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <p style="background-color: Navy; font-family:Arial; font-size: 14pt; color: #FFFFFF;">Grade Book</p>             </td>
        </tr>
        <tr>
            <td style="height: 96px; width: 264px;">
            </td>
            <td style="height: 96px">
                
                <br />
                
                <br />
                
                </td>
        </tr>
        <tr>
            <td valign="top" style="width: 264px">
                <p style="font-family: 'Arial Black'; font-style: italic; text-decoration: underline">Edit Grades</p><br />
                <br />
                The grid displayed to the right contains records of the learner&#39;s multiple test 
                results. Also a notice each time a learner submits a task for grading.&nbsp; 
                Here the grader can maintain the learner grades of his or her learners.&nbsp;
                The grader will edit these records and enter the learner&#39;s grade for that task.</td>
            <td align="left" valign="top">
                &nbsp;
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    DataKeyNames="UserQuizId" DataSourceID="SqlDataSource1" GridLines="Vertical" 
                    HorizontalAlign="Left" UseAccessibleHeader="False">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="UserQuizId" HeaderText="UserQuizId" 
                            InsertVisible="False" ReadOnly="True" SortExpression="UserQuizId" />
                        <asp:BoundField DataField="QuizId" HeaderText="QuizId" 
                            SortExpression="QuizId" />
                        <asp:BoundField DataField="DateTimeComplete" HeaderText="DateTimeComplete" 
                            SortExpression="DateTimeComplete" />
                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="Questions" HeaderText="Questions" 
                            SortExpression="Questions" />
                        <asp:BoundField DataField="CorrectAns" HeaderText="CorrectAns" 
                            SortExpression="CorrectAns" />
                        <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" 
                            SortExpression="CustomerId" />
                        <asp:BoundField DataField="School" HeaderText="School" 
                            SortExpression="School" />
                        <asp:BoundField DataField="Campus" HeaderText="Campus" 
                            SortExpression="Campus" />
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                        <asp:BoundField DataField="Grader" HeaderText="Grader" 
                            SortExpression="Grader" />
                        <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                        <asp:BoundField DataField="GradeDesc" HeaderText="GradeDesc" 
                            SortExpression="GradeDesc" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="GraderUserName" HeaderText="GraderUserName" 
                            SortExpression="GraderUserName" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [UserQuiz] WHERE [UserQuizId] = @original_UserQuizId AND (([QuizId] = @original_QuizId) OR ([QuizId] IS NULL AND @original_QuizId IS NULL)) AND (([DateTimeComplete] = @original_DateTimeComplete) OR ([DateTimeComplete] IS NULL AND @original_DateTimeComplete IS NULL)) AND (([Score] = @original_Score) OR ([Score] IS NULL AND @original_Score IS NULL)) AND [UserName] = @original_UserName AND (([Questions] = @original_Questions) OR ([Questions] IS NULL AND @original_Questions IS NULL)) AND (([CorrectAns] = @original_CorrectAns) OR ([CorrectAns] IS NULL AND @original_CorrectAns IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([School] = @original_School) OR ([School] IS NULL AND @original_School IS NULL)) AND (([Campus] = @original_Campus) OR ([Campus] IS NULL AND @original_Campus IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Grader] = @original_Grader) OR ([Grader] IS NULL AND @original_Grader IS NULL)) AND (([Grade] = @original_Grade) OR ([Grade] IS NULL AND @original_Grade IS NULL)) AND (([GradeDesc] = @original_GradeDesc) OR ([GradeDesc] IS NULL AND @original_GradeDesc IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([GraderUserName] = @original_GraderUserName) OR ([GraderUserName] IS NULL AND @original_GraderUserName IS NULL))" 
                    InsertCommand="INSERT INTO [UserQuiz] ([QuizId], [DateTimeComplete], [Score], [UserName], [Questions], [CorrectAns], [CustomerId], [School], [Campus], [Class], [Grader], [Grade], [GradeDesc], [Type], [GraderUserName]) VALUES (@QuizId, @DateTimeComplete, @Score, @UserName, @Questions, @CorrectAns, @CustomerId, @School, @Campus, @Class, @Grader, @Grade, @GradeDesc, @Type, @GraderUserName)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [UserQuiz] WHERE ([GraderUserName] = 'george') ORDER BY [GraderUserName]" 
                    UpdateCommand="UPDATE [UserQuiz] SET [QuizId] = @QuizId, [DateTimeComplete] = @DateTimeComplete, [Score] = @Score, [UserName] = @UserName, [Questions] = @Questions, [CorrectAns] = @CorrectAns, [CustomerId] = @CustomerId, [School] = @School, [Campus] = @Campus, [Class] = @Class, [Grader] = @Grader, [Grade] = @Grade, [GradeDesc] = @GradeDesc, [Type] = @Type, [GraderUserName] = @GraderUserName WHERE [UserQuizId] = @original_UserQuizId AND (([QuizId] = @original_QuizId) OR ([QuizId] IS NULL AND @original_QuizId IS NULL)) AND (([DateTimeComplete] = @original_DateTimeComplete) OR ([DateTimeComplete] IS NULL AND @original_DateTimeComplete IS NULL)) AND (([Score] = @original_Score) OR ([Score] IS NULL AND @original_Score IS NULL)) AND [UserName] = @original_UserName AND (([Questions] = @original_Questions) OR ([Questions] IS NULL AND @original_Questions IS NULL)) AND (([CorrectAns] = @original_CorrectAns) OR ([CorrectAns] IS NULL AND @original_CorrectAns IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([School] = @original_School) OR ([School] IS NULL AND @original_School IS NULL)) AND (([Campus] = @original_Campus) OR ([Campus] IS NULL AND @original_Campus IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Grader] = @original_Grader) OR ([Grader] IS NULL AND @original_Grader IS NULL)) AND (([Grade] = @original_Grade) OR ([Grade] IS NULL AND @original_Grade IS NULL)) AND (([GradeDesc] = @original_GradeDesc) OR ([GradeDesc] IS NULL AND @original_GradeDesc IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([GraderUserName] = @original_GraderUserName) OR ([GraderUserName] IS NULL AND @original_GraderUserName IS NULL))">
                    
                    
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserQuizId" Type="Int32" />
                        <asp:Parameter Name="original_QuizId" Type="Int32" />
                        <asp:Parameter Name="original_DateTimeComplete" Type="DateTime" />
                        <asp:Parameter Name="original_Score" Type="Int32" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_Questions" Type="Int32" />
                        <asp:Parameter Name="original_CorrectAns" Type="Int32" />
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_School" Type="Int32" />
                        <asp:Parameter Name="original_Campus" Type="Int32" />
                        <asp:Parameter Name="original_Class" Type="Int32" />
                        <asp:Parameter Name="original_Grader" Type="Int32" />
                        <asp:Parameter Name="original_Grade" Type="String" />
                        <asp:Parameter Name="original_GradeDesc" Type="String" />
                        <asp:Parameter Name="original_Type" Type="String" />
                        <asp:Parameter Name="original_GraderUserName" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="QuizId" Type="Int32" />
                        <asp:Parameter Name="DateTimeComplete" Type="DateTime" />
                        <asp:Parameter Name="Score" Type="Int32" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Questions" Type="Int32" />
                        <asp:Parameter Name="CorrectAns" Type="Int32" />
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                        <asp:Parameter Name="School" Type="Int32" />
                        <asp:Parameter Name="Campus" Type="Int32" />
                        <asp:Parameter Name="Class" Type="Int32" />
                        <asp:Parameter Name="Grader" Type="Int32" />
                        <asp:Parameter Name="Grade" Type="String" />
                        <asp:Parameter Name="GradeDesc" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="GraderUserName" Type="String" />
                        <asp:Parameter Name="original_UserQuizId" Type="Int32" />
                        <asp:Parameter Name="original_QuizId" Type="Int32" />
                        <asp:Parameter Name="original_DateTimeComplete" Type="DateTime" />
                        <asp:Parameter Name="original_Score" Type="Int32" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_Questions" Type="Int32" />
                        <asp:Parameter Name="original_CorrectAns" Type="Int32" />
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_School" Type="Int32" />
                        <asp:Parameter Name="original_Campus" Type="Int32" />
                        <asp:Parameter Name="original_Class" Type="Int32" />
                        <asp:Parameter Name="original_Grader" Type="Int32" />
                        <asp:Parameter Name="original_Grade" Type="String" />
                        <asp:Parameter Name="original_GradeDesc" Type="String" />
                        <asp:Parameter Name="original_Type" Type="String" />
                        <asp:Parameter Name="original_GraderUserName" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="QuizId" Type="Int32" />
                        <asp:Parameter Name="DateTimeComplete" Type="DateTime" />
                        <asp:Parameter Name="Score" Type="Int32" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Questions" Type="Int32" />
                        <asp:Parameter Name="CorrectAns" Type="Int32" />
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                        <asp:Parameter Name="School" Type="Int32" />
                        <asp:Parameter Name="Campus" Type="Int32" />
                        <asp:Parameter Name="Class" Type="Int32" />
                        <asp:Parameter Name="Grader" Type="Int32" />
                        <asp:Parameter Name="Grade" Type="String" />
                        <asp:Parameter Name="GradeDesc" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="GraderUserName" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                </td>
        </tr>
    </table>
</asp:Content>
