<%@ Page Language="VB" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="QuizEditor.aspx.vb" Inherits="admin_QuizEditor" title="Test Editor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
   <br /><br /> 
    <div align="center">
        
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
        BorderWidth="1px" CellPadding="3" DataKeyNames="UserQuizId" DataSourceID="SqlDataSource1"
        GridLines="Vertical" Width="1247px" ForeColor="Black" 
            UseAccessibleHeader="False" PageSize="20" HorizontalAlign="Left">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserQuizId" HeaderText="UserQuizId" InsertVisible="False"
                ReadOnly="True" SortExpression="UserQuizId" />
            <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
            <asp:BoundField DataField="DateTimeComplete" HeaderText="DateTimeComplete" 
                SortExpression="DateTimeComplete" />
            <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Questions" HeaderText="Questions" SortExpression="Questions" />
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
            <asp:BoundField DataField="DateTaken" HeaderText="DateTaken" 
                SortExpression="DateTaken" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
        DeleteCommand="DELETE FROM [UserQuiz] WHERE [UserQuizId] = @original_UserQuizId AND (([QuizId] = @original_QuizId) OR ([QuizId] IS NULL AND @original_QuizId IS NULL)) AND (([DateTimeComplete] = @original_DateTimeComplete) OR ([DateTimeComplete] IS NULL AND @original_DateTimeComplete IS NULL)) AND (([Score] = @original_Score) OR ([Score] IS NULL AND @original_Score IS NULL)) AND [UserName] = @original_UserName AND (([Questions] = @original_Questions) OR ([Questions] IS NULL AND @original_Questions IS NULL)) AND (([CorrectAns] = @original_CorrectAns) OR ([CorrectAns] IS NULL AND @original_CorrectAns IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([School] = @original_School) OR ([School] IS NULL AND @original_School IS NULL)) AND (([Campus] = @original_Campus) OR ([Campus] IS NULL AND @original_Campus IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Grader] = @original_Grader) OR ([Grader] IS NULL AND @original_Grader IS NULL)) AND (([Grade] = @original_Grade) OR ([Grade] IS NULL AND @original_Grade IS NULL)) AND (([GradeDesc] = @original_GradeDesc) OR ([GradeDesc] IS NULL AND @original_GradeDesc IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([GraderUserName] = @original_GraderUserName) OR ([GraderUserName] IS NULL AND @original_GraderUserName IS NULL)) AND (([DateTaken] = @original_DateTaken) OR ([DateTaken] IS NULL AND @original_DateTaken IS NULL))"
        InsertCommand="INSERT INTO [UserQuiz] ([QuizId], [DateTimeComplete], [Score], [UserName], [Questions], [CorrectAns], [CustomerId], [School], [Campus], [Class], [Grader], [Grade], [GradeDesc], [Type], [GraderUserName], [DateTaken]) VALUES (@QuizId, @DateTimeComplete, @Score, @UserName, @Questions, @CorrectAns, @CustomerId, @School, @Campus, @Class, @Grader, @Grade, @GradeDesc, @Type, @GraderUserName, @DateTaken)"
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [UserQuizId], [QuizId], [DateTimeComplete], [Score], [UserName], [Questions], [CorrectAns], [CustomerId], [School], [Campus], [Class], [Grader], [Grade], [GradeDesc], [Type], [GraderUserName], [DateTaken] FROM [UserQuiz]"
        
            UpdateCommand="UPDATE [UserQuiz] SET [QuizId] = @QuizId, [DateTimeComplete] = @DateTimeComplete, [Score] = @Score, [UserName] = @UserName, [Questions] = @Questions, [CorrectAns] = @CorrectAns, [CustomerId] = @CustomerId, [School] = @School, [Campus] = @Campus, [Class] = @Class, [Grader] = @Grader, [Grade] = @Grade, [GradeDesc] = @GradeDesc, [Type] = @Type, [GraderUserName] = @GraderUserName, [DateTaken] = @DateTaken WHERE [UserQuizId] = @original_UserQuizId AND (([QuizId] = @original_QuizId) OR ([QuizId] IS NULL AND @original_QuizId IS NULL)) AND (([DateTimeComplete] = @original_DateTimeComplete) OR ([DateTimeComplete] IS NULL AND @original_DateTimeComplete IS NULL)) AND (([Score] = @original_Score) OR ([Score] IS NULL AND @original_Score IS NULL)) AND [UserName] = @original_UserName AND (([Questions] = @original_Questions) OR ([Questions] IS NULL AND @original_Questions IS NULL)) AND (([CorrectAns] = @original_CorrectAns) OR ([CorrectAns] IS NULL AND @original_CorrectAns IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([School] = @original_School) OR ([School] IS NULL AND @original_School IS NULL)) AND (([Campus] = @original_Campus) OR ([Campus] IS NULL AND @original_Campus IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Grader] = @original_Grader) OR ([Grader] IS NULL AND @original_Grader IS NULL)) AND (([Grade] = @original_Grade) OR ([Grade] IS NULL AND @original_Grade IS NULL)) AND (([GradeDesc] = @original_GradeDesc) OR ([GradeDesc] IS NULL AND @original_GradeDesc IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([GraderUserName] = @original_GraderUserName) OR ([GraderUserName] IS NULL AND @original_GraderUserName IS NULL)) AND (([DateTaken] = @original_DateTaken) OR ([DateTaken] IS NULL AND @original_DateTaken IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_UserQuizId" Type="Int32" />
            <asp:Parameter Name="original_QuizId" Type="Int32" />
            <asp:Parameter Type="DateTime" Name="original_DateTimeComplete" />
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
            <asp:Parameter Name="original_DateTaken" Type="DateTime" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="QuizId" Type="Int32" />
            <asp:Parameter Type="DateTime" Name="DateTimeComplete" />
            <asp:Parameter Name="Score" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Questions" Type="Int32" />
            <asp:Parameter Name="CorrectAns" Type="Int32" />
            <asp:Parameter Name="CustomerId" Type="Int32" />
            <asp:Parameter Name="School" Type="Int32" />
            <asp:Parameter Name="Campus" Type="Int32" />
            <asp:Parameter Type="Int32" Name="Class" />
            <asp:Parameter Name="Grader" Type="Int32" />
            <asp:Parameter Name="Grade" Type="String" />
            <asp:Parameter Name="GradeDesc" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="GraderUserName" Type="String" />
            <asp:Parameter Name="DateTaken" Type="DateTime" />
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
            <asp:Parameter Name="original_DateTaken" Type="DateTime" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="QuizId" Type="Int32" />
            <asp:Parameter Type="DateTime" Name="DateTimeComplete" />
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
            <asp:Parameter Name="DateTaken" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

