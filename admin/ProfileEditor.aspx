<%@ Page Language="VB" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="ProfileEditor.aspx.vb" Inherits="admin_ProfileEditor" title="Profile Editor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 1370px">
        <tr>
            <td style="width: 100px; height: 389px;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    DataKeyNames="UserId" DataSourceID="SqlDataSource1" GridLines="Vertical" 
                    UseAccessibleHeader="False" Width="1294px">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="UserId" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" 
                            SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                            SortExpression="FirstName" />
                        <asp:BoundField DataField="Address1" HeaderText="Address1" 
                            SortExpression="Address1" />
                        <asp:BoundField DataField="Address2" HeaderText="Address2" 
                            SortExpression="Address2" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
                            SortExpression="ZipCode" />
                        <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" 
                            SortExpression="CustomerId" />
                        <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                        <asp:BoundField DataField="DIDLLevel" HeaderText="DIDLLevel" 
                            SortExpression="DIDLLevel" />
                        <asp:BoundField DataField="CompletedDate" HeaderText="CompletedDate" 
                            SortExpression="CompletedDate" />
                        <asp:BoundField DataField="TaskFM" HeaderText="TaskFM" 
                            SortExpression="TaskFM" />
                        <asp:BoundField DataField="TaskWP" HeaderText="TaskWP" 
                            SortExpression="TaskWP" />
                        <asp:BoundField DataField="TaskGraphics" HeaderText="TaskGraphics" 
                            SortExpression="TaskGraphics" />
                        <asp:BoundField DataField="TaskDP" HeaderText="TaskDP" 
                            SortExpression="TaskDP" />
                        <asp:BoundField DataField="TaskDB" HeaderText="TaskDB" 
                            SortExpression="TaskDB" />
                        <asp:BoundField DataField="TaskSS" HeaderText="TaskSS" 
                            SortExpression="TaskSS" />
                        <asp:BoundField DataField="TaskPP" HeaderText="TaskPP" 
                            SortExpression="TaskPP" />
                        <asp:BoundField DataField="DateBasic" HeaderText="DateBasic" 
                            SortExpression="DateBasic" />
                        <asp:BoundField DataField="DateProfessional" HeaderText="DateProfessional" 
                            SortExpression="DateProfessional" />
                        <asp:BoundField DataField="DateMaster" HeaderText="DateMaster" 
                            SortExpression="DateMaster" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="TestProfessional" HeaderText="TestProfessional" 
                            SortExpression="TestProfessional" />
                        <asp:BoundField DataField="TestBasic" HeaderText="TestBasic" 
                            SortExpression="TestBasic" />
                        <asp:BoundField DataField="TestMaster" HeaderText="TestMaster" 
                            SortExpression="TestMaster" />
                        <asp:BoundField DataField="TaskProfFinal" HeaderText="TaskProfFinal" 
                            SortExpression="TaskProfFinal" />
                        <asp:BoundField DataField="TaskMasterFinal" HeaderText="TaskMasterFinal" 
                            SortExpression="TaskMasterFinal" />
                        <asp:BoundField DataField="TestInternet" HeaderText="TestInternet" 
                            SortExpression="TestInternet" />
                        <asp:BoundField DataField="DIDLAccess" HeaderText="DIDLAccess" 
                            SortExpression="DIDLAccess" />
                        <asp:BoundField DataField="UserSchool" HeaderText="UserSchool" 
                            SortExpression="UserSchool" />
                        <asp:BoundField DataField="UserCampus" HeaderText="UserCampus" 
                            SortExpression="UserCampus" />
                        <asp:BoundField DataField="UserClass" HeaderText="UserClass" 
                            SortExpression="UserClass" />
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
                    DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([DIDLLevel] = @original_DIDLLevel) OR ([DIDLLevel] IS NULL AND @original_DIDLLevel IS NULL)) AND (([CompletedDate] = @original_CompletedDate) OR ([CompletedDate] IS NULL AND @original_CompletedDate IS NULL)) AND (([TaskFM] = @original_TaskFM) OR ([TaskFM] IS NULL AND @original_TaskFM IS NULL)) AND (([TaskWP] = @original_TaskWP) OR ([TaskWP] IS NULL AND @original_TaskWP IS NULL)) AND (([TaskGraphics] = @original_TaskGraphics) OR ([TaskGraphics] IS NULL AND @original_TaskGraphics IS NULL)) AND (([TaskDP] = @original_TaskDP) OR ([TaskDP] IS NULL AND @original_TaskDP IS NULL)) AND (([TaskDB] = @original_TaskDB) OR ([TaskDB] IS NULL AND @original_TaskDB IS NULL)) AND (([TaskSS] = @original_TaskSS) OR ([TaskSS] IS NULL AND @original_TaskSS IS NULL)) AND (([TaskPP] = @original_TaskPP) OR ([TaskPP] IS NULL AND @original_TaskPP IS NULL)) AND (([DateBasic] = @original_DateBasic) OR ([DateBasic] IS NULL AND @original_DateBasic IS NULL)) AND (([DateProfessional] = @original_DateProfessional) OR ([DateProfessional] IS NULL AND @original_DateProfessional IS NULL)) AND (([DateMaster] = @original_DateMaster) OR ([DateMaster] IS NULL AND @original_DateMaster IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([TestProfessional] = @original_TestProfessional) OR ([TestProfessional] IS NULL AND @original_TestProfessional IS NULL)) AND (([TestBasic] = @original_TestBasic) OR ([TestBasic] IS NULL AND @original_TestBasic IS NULL)) AND (([TestMaster] = @original_TestMaster) OR ([TestMaster] IS NULL AND @original_TestMaster IS NULL)) AND (([TaskProfFinal] = @original_TaskProfFinal) OR ([TaskProfFinal] IS NULL AND @original_TaskProfFinal IS NULL)) AND (([TaskMasterFinal] = @original_TaskMasterFinal) OR ([TaskMasterFinal] IS NULL AND @original_TaskMasterFinal IS NULL)) AND (([TestInternet] = @original_TestInternet) OR ([TestInternet] IS NULL AND @original_TestInternet IS NULL)) AND (([DIDLAccess] = @original_DIDLAccess) OR ([DIDLAccess] IS NULL AND @original_DIDLAccess IS NULL)) AND (([UserSchool] = @original_UserSchool) OR ([UserSchool] IS NULL AND @original_UserSchool IS NULL)) AND (([UserCampus] = @original_UserCampus) OR ([UserCampus] IS NULL AND @original_UserCampus IS NULL)) AND (([UserClass] = @original_UserClass) OR ([UserClass] IS NULL AND @original_UserClass IS NULL))" 
                    InsertCommand="INSERT INTO [Users] ([LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [SSN], [DIDLLevel], [CompletedDate], [TaskFM], [TaskWP], [TaskGraphics], [TaskDP], [TaskDB], [TaskSS], [TaskPP], [DateBasic], [DateProfessional], [DateMaster], [UserName], [TestProfessional], [TestBasic], [TestMaster], [TaskProfFinal], [TaskMasterFinal], [TestInternet], [DIDLAccess], [UserSchool], [UserCampus], [UserClass]) VALUES (@LastName, @FirstName, @Address1, @Address2, @City, @State, @ZipCode, @CustomerId, @SSN, @DIDLLevel, @CompletedDate, @TaskFM, @TaskWP, @TaskGraphics, @TaskDP, @TaskDB, @TaskSS, @TaskPP, @DateBasic, @DateProfessional, @DateMaster, @UserName, @TestProfessional, @TestBasic, @TestMaster, @TaskProfFinal, @TaskMasterFinal, @TestInternet, @DIDLAccess, @UserSchool, @UserCampus, @UserClass)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Users] ORDER BY [UserId]" 
                    
                    UpdateCommand="UPDATE [Users] SET [LastName] = @LastName, [FirstName] = @FirstName, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [CustomerId] = @CustomerId, [SSN] = @SSN, [DIDLLevel] = @DIDLLevel, [CompletedDate] = @CompletedDate, [TaskFM] = @TaskFM, [TaskWP] = @TaskWP, [TaskGraphics] = @TaskGraphics, [TaskDP] = @TaskDP, [TaskDB] = @TaskDB, [TaskSS] = @TaskSS, [TaskPP] = @TaskPP, [DateBasic] = @DateBasic, [DateProfessional] = @DateProfessional, [DateMaster] = @DateMaster, [UserName] = @UserName, [TestProfessional] = @TestProfessional, [TestBasic] = @TestBasic, [TestMaster] = @TestMaster, [TaskProfFinal] = @TaskProfFinal, [TaskMasterFinal] = @TaskMasterFinal, [TestInternet] = @TestInternet, [DIDLAccess] = @DIDLAccess, [UserSchool] = @UserSchool, [UserCampus] = @UserCampus, [UserClass] = @UserClass WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([DIDLLevel] = @original_DIDLLevel) OR ([DIDLLevel] IS NULL AND @original_DIDLLevel IS NULL)) AND (([CompletedDate] = @original_CompletedDate) OR ([CompletedDate] IS NULL AND @original_CompletedDate IS NULL)) AND (([TaskFM] = @original_TaskFM) OR ([TaskFM] IS NULL AND @original_TaskFM IS NULL)) AND (([TaskWP] = @original_TaskWP) OR ([TaskWP] IS NULL AND @original_TaskWP IS NULL)) AND (([TaskGraphics] = @original_TaskGraphics) OR ([TaskGraphics] IS NULL AND @original_TaskGraphics IS NULL)) AND (([TaskDP] = @original_TaskDP) OR ([TaskDP] IS NULL AND @original_TaskDP IS NULL)) AND (([TaskDB] = @original_TaskDB) OR ([TaskDB] IS NULL AND @original_TaskDB IS NULL)) AND (([TaskSS] = @original_TaskSS) OR ([TaskSS] IS NULL AND @original_TaskSS IS NULL)) AND (([TaskPP] = @original_TaskPP) OR ([TaskPP] IS NULL AND @original_TaskPP IS NULL)) AND (([DateBasic] = @original_DateBasic) OR ([DateBasic] IS NULL AND @original_DateBasic IS NULL)) AND (([DateProfessional] = @original_DateProfessional) OR ([DateProfessional] IS NULL AND @original_DateProfessional IS NULL)) AND (([DateMaster] = @original_DateMaster) OR ([DateMaster] IS NULL AND @original_DateMaster IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([TestProfessional] = @original_TestProfessional) OR ([TestProfessional] IS NULL AND @original_TestProfessional IS NULL)) AND (([TestBasic] = @original_TestBasic) OR ([TestBasic] IS NULL AND @original_TestBasic IS NULL)) AND (([TestMaster] = @original_TestMaster) OR ([TestMaster] IS NULL AND @original_TestMaster IS NULL)) AND (([TaskProfFinal] = @original_TaskProfFinal) OR ([TaskProfFinal] IS NULL AND @original_TaskProfFinal IS NULL)) AND (([TaskMasterFinal] = @original_TaskMasterFinal) OR ([TaskMasterFinal] IS NULL AND @original_TaskMasterFinal IS NULL)) AND (([TestInternet] = @original_TestInternet) OR ([TestInternet] IS NULL AND @original_TestInternet IS NULL)) AND (([DIDLAccess] = @original_DIDLAccess) OR ([DIDLAccess] IS NULL AND @original_DIDLAccess IS NULL)) AND (([UserSchool] = @original_UserSchool) OR ([UserSchool] IS NULL AND @original_UserSchool IS NULL)) AND (([UserCampus] = @original_UserCampus) OR ([UserCampus] IS NULL AND @original_UserCampus IS NULL)) AND (([UserClass] = @original_UserClass) OR ([UserClass] IS NULL AND @original_UserClass IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserId" Type="Int32" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_Address1" Type="String" />
                        <asp:Parameter Name="original_Address2" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_ZipCode" Type="String" />
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_SSN" Type="String" />
                        <asp:Parameter Name="original_DIDLLevel" Type="String" />
                        <asp:Parameter Name="original_CompletedDate" Type="DateTime" />
                        <asp:Parameter Name="original_TaskFM" Type="DateTime" />
                        <asp:Parameter Name="original_TaskWP" Type="DateTime" />
                        <asp:Parameter Name="original_TaskGraphics" Type="DateTime" />
                        <asp:Parameter Name="original_TaskDP" Type="DateTime" />
                        <asp:Parameter Name="original_TaskDB" Type="DateTime" />
                        <asp:Parameter Name="original_TaskSS" Type="DateTime" />
                        <asp:Parameter Name="original_TaskPP" Type="DateTime" />
                        <asp:Parameter Name="original_DateBasic" Type="DateTime" />
                        <asp:Parameter Name="original_DateProfessional" Type="DateTime" />
                        <asp:Parameter Name="original_DateMaster" Type="DateTime" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_TestProfessional" Type="Int16" />
                        <asp:Parameter Name="original_TestBasic" Type="Int16" />
                        <asp:Parameter Name="original_TestMaster" Type="Int16" />
                        <asp:Parameter Name="original_TaskProfFinal" Type="DateTime" />
                        <asp:Parameter Name="original_TaskMasterFinal" Type="DateTime" />
                        <asp:Parameter Name="original_TestInternet" Type="Int16" />
                        <asp:Parameter Name="original_DIDLAccess" Type="String" />
                        <asp:Parameter Name="original_UserSchool" Type="Int32" />
                        <asp:Parameter Name="original_UserCampus" Type="Int32" />
                        <asp:Parameter Name="original_UserClass" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="Address1" Type="String" />
                        <asp:Parameter Name="Address2" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="ZipCode" Type="String" />
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                        <asp:Parameter Name="SSN" Type="String" />
                        <asp:Parameter Name="DIDLLevel" Type="String" />
                        <asp:Parameter Name="CompletedDate" Type="DateTime" />
                        <asp:Parameter Name="TaskFM" Type="DateTime" />
                        <asp:Parameter Name="TaskWP" Type="DateTime" />
                        <asp:Parameter Name="TaskGraphics" Type="DateTime" />
                        <asp:Parameter Name="TaskDP" Type="DateTime" />
                        <asp:Parameter Name="TaskDB" Type="DateTime" />
                        <asp:Parameter Name="TaskSS" Type="DateTime" />
                        <asp:Parameter Name="TaskPP" Type="DateTime" />
                        <asp:Parameter Name="DateBasic" Type="DateTime" />
                        <asp:Parameter Name="DateProfessional" Type="DateTime" />
                        <asp:Parameter Name="DateMaster" Type="DateTime" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="TestProfessional" Type="Int16" />
                        <asp:Parameter Name="TestBasic" Type="Int16" />
                        <asp:Parameter Name="TestMaster" Type="Int16" />
                        <asp:Parameter Name="TaskProfFinal" Type="DateTime" />
                        <asp:Parameter Name="TaskMasterFinal" Type="DateTime" />
                        <asp:Parameter Name="TestInternet" Type="Int16" />
                        <asp:Parameter Name="DIDLAccess" Type="String" />
                        <asp:Parameter Name="UserSchool" Type="Int32" />
                        <asp:Parameter Name="UserCampus" Type="Int32" />
                        <asp:Parameter Name="UserClass" Type="Int32" />
                        <asp:Parameter Name="original_UserId" Type="Int32" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_Address1" Type="String" />
                        <asp:Parameter Name="original_Address2" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_ZipCode" Type="String" />
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_SSN" Type="String" />
                        <asp:Parameter Name="original_DIDLLevel" Type="String" />
                        <asp:Parameter Name="original_CompletedDate" Type="DateTime" />
                        <asp:Parameter Name="original_TaskFM" Type="DateTime" />
                        <asp:Parameter Name="original_TaskWP" Type="DateTime" />
                        <asp:Parameter Name="original_TaskGraphics" Type="DateTime" />
                        <asp:Parameter Name="original_TaskDP" Type="DateTime" />
                        <asp:Parameter Name="original_TaskDB" Type="DateTime" />
                        <asp:Parameter Name="original_TaskSS" Type="DateTime" />
                        <asp:Parameter Name="original_TaskPP" Type="DateTime" />
                        <asp:Parameter Name="original_DateBasic" Type="DateTime" />
                        <asp:Parameter Name="original_DateProfessional" Type="DateTime" />
                        <asp:Parameter Name="original_DateMaster" Type="DateTime" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_TestProfessional" Type="Int16" />
                        <asp:Parameter Name="original_TestBasic" Type="Int16" />
                        <asp:Parameter Name="original_TestMaster" Type="Int16" />
                        <asp:Parameter Name="original_TaskProfFinal" Type="DateTime" />
                        <asp:Parameter Name="original_TaskMasterFinal" Type="DateTime" />
                        <asp:Parameter Name="original_TestInternet" Type="Int16" />
                        <asp:Parameter Name="original_DIDLAccess" Type="String" />
                        <asp:Parameter Name="original_UserSchool" Type="Int32" />
                        <asp:Parameter Name="original_UserCampus" Type="Int32" />
                        <asp:Parameter Name="original_UserClass" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="Address1" Type="String" />
                        <asp:Parameter Name="Address2" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="ZipCode" Type="String" />
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                        <asp:Parameter Name="SSN" Type="String" />
                        <asp:Parameter Name="DIDLLevel" Type="String" />
                        <asp:Parameter Name="CompletedDate" Type="DateTime" />
                        <asp:Parameter Name="TaskFM" Type="DateTime" />
                        <asp:Parameter Name="TaskWP" Type="DateTime" />
                        <asp:Parameter Name="TaskGraphics" Type="DateTime" />
                        <asp:Parameter Name="TaskDP" Type="DateTime" />
                        <asp:Parameter Name="TaskDB" Type="DateTime" />
                        <asp:Parameter Name="TaskSS" Type="DateTime" />
                        <asp:Parameter Name="TaskPP" Type="DateTime" />
                        <asp:Parameter Name="DateBasic" Type="DateTime" />
                        <asp:Parameter Name="DateProfessional" Type="DateTime" />
                        <asp:Parameter Name="DateMaster" Type="DateTime" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="TestProfessional" Type="Int16" />
                        <asp:Parameter Name="TestBasic" Type="Int16" />
                        <asp:Parameter Name="TestMaster" Type="Int16" />
                        <asp:Parameter Name="TaskProfFinal" Type="DateTime" />
                        <asp:Parameter Name="TaskMasterFinal" Type="DateTime" />
                        <asp:Parameter Name="TestInternet" Type="Int16" />
                        <asp:Parameter Name="DIDLAccess" Type="String" />
                        <asp:Parameter Name="UserSchool" Type="Int32" />
                        <asp:Parameter Name="UserCampus" Type="Int32" />
                        <asp:Parameter Name="UserClass" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr >
            <td style="width: 500px; ">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    Caption="Add User" CellPadding="3" DataKeyNames="UserId" 
                    DataSourceID="SqlDataSource2" GridLines="Vertical" Height="108px" 
                    Width="774px">
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <CommandRowStyle BackColor="#003399" ForeColor="White" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="UserId" HeaderText="User Id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="UserId" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" 
                            SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" 
                            SortExpression="FirstName" />
                        <asp:BoundField DataField="Address1" HeaderText="Address" 
                            SortExpression="Address1" />
                        <asp:BoundField DataField="Address2" HeaderText="Address" 
                            SortExpression="Address2" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" 
                            SortExpression="ZipCode" />
                        <asp:BoundField DataField="CustomerId" HeaderText="Customer Id" 
                            SortExpression="CustomerId" />
                        <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                        <asp:BoundField DataField="UserName" HeaderText="User Name" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="UserSchool" HeaderText="User School" 
                            SortExpression="UserSchool" />
                        <asp:BoundField DataField="UserCampus" HeaderText="User Campus" 
                            SortExpression="UserCampus" />
                        <asp:BoundField DataField="UserClass" HeaderText="User Class" 
                            SortExpression="UserClass" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#003366" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserSchool] = @original_UserSchool) OR ([UserSchool] IS NULL AND @original_UserSchool IS NULL)) AND (([UserCampus] = @original_UserCampus) OR ([UserCampus] IS NULL AND @original_UserCampus IS NULL)) AND (([UserClass] = @original_UserClass) OR ([UserClass] IS NULL AND @original_UserClass IS NULL))" 
                    InsertCommand="INSERT INTO [Users] ([LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [SSN], [UserName], [UserSchool], [UserCampus], [UserClass]) VALUES (@LastName, @FirstName, @Address1, @Address2, @City, @State, @ZipCode, @CustomerId, @SSN, @UserName, @UserSchool, @UserCampus, @UserClass)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [UserId], [LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [SSN], [UserName], [UserSchool], [UserCampus], [UserClass] FROM [Users]" 
                    
                    UpdateCommand="UPDATE [Users] SET [LastName] = @LastName, [FirstName] = @FirstName, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [CustomerId] = @CustomerId, [SSN] = @SSN, [UserName] = @UserName, [UserSchool] = @UserSchool, [UserCampus] = @UserCampus, [UserClass] = @UserClass WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserSchool] = @original_UserSchool) OR ([UserSchool] IS NULL AND @original_UserSchool IS NULL)) AND (([UserCampus] = @original_UserCampus) OR ([UserCampus] IS NULL AND @original_UserCampus IS NULL)) AND (([UserClass] = @original_UserClass) OR ([UserClass] IS NULL AND @original_UserClass IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserId" Type="Int32" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_Address1" Type="String" />
                        <asp:Parameter Name="original_Address2" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_ZipCode" Type="String" />
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_SSN" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserSchool" Type="Int32" />
                        <asp:Parameter Name="original_UserCampus" Type="Int32" />
                        <asp:Parameter Name="original_UserClass" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="Address1" Type="String" />
                        <asp:Parameter Name="Address2" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="ZipCode" Type="String" />
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                        <asp:Parameter Name="SSN" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="UserSchool" Type="Int32" />
                        <asp:Parameter Name="UserCampus" Type="Int32" />
                        <asp:Parameter Name="UserClass" Type="Int32" />
                        <asp:Parameter Name="original_UserId" Type="Int32" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_Address1" Type="String" />
                        <asp:Parameter Name="original_Address2" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_ZipCode" Type="String" />
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_SSN" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserSchool" Type="Int32" />
                        <asp:Parameter Name="original_UserCampus" Type="Int32" />
                        <asp:Parameter Name="original_UserClass" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="Address1" Type="String" />
                        <asp:Parameter Name="Address2" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="ZipCode" Type="String" />
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                        <asp:Parameter Name="SSN" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="UserSchool" Type="Int32" />
                        <asp:Parameter Name="UserCampus" Type="Int32" />
                        <asp:Parameter Name="UserClass" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;
    </asp:Content>

