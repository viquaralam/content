﻿<%@ Page Title="" Language="VB" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="ProfileEditor2.aspx.vb" Inherits="admin_ProfileEditor2"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
    <td align="center" 
            
            style="font-family: Arial, Helvetica, sans-serif; background-color: #00aeef" 
            valign="middle">
    
    <asp:Label ID="Label1" runat="server" Text="Select Customer Id" Font-Bold="true" Font-Names="Arial" Font-Size="12pt" />
    &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="CustomerId" 
            DataValueField="CustomerId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
            SelectCommand="SELECT DISTINCT [CustomerId] FROM [Users]">
        </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
    <td>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="UserId" DataSourceID="SqlDataSource1" GridLines="Vertical" 
            UseAccessibleHeader="False">
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UserId" HeaderText="User Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="UserName" HeaderText="User Name" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="CustomerId" HeaderText="Customer Id" 
                    SortExpression="CustomerId" />
                <asp:BoundField DataField="DIDLLevel" HeaderText="DIDL Level" 
                    SortExpression="DIDLLevel" />
                <asp:BoundField DataField="DateBasic" HeaderText="Date Basic" 
                    SortExpression="DateBasic" />
                <asp:BoundField DataField="DateProfessional" HeaderText="Date Professional" 
                    SortExpression="DateProfessional" />
                <asp:BoundField DataField="DateMaster" HeaderText="Date Master" 
                    SortExpression="DateMaster" />
                <asp:BoundField DataField="TaskFM" HeaderText="Task FM" 
                    SortExpression="TaskFM" />
                <asp:BoundField DataField="TaskWP" HeaderText="Task WP" 
                    SortExpression="TaskWP" />
                <asp:BoundField DataField="TaskGraphics" HeaderText="Task Graphics" 
                    SortExpression="TaskGraphics" />
                <asp:BoundField DataField="TaskDP" HeaderText="Task DP" 
                    SortExpression="TaskDP" />
                <asp:BoundField DataField="TaskDB" HeaderText="Task DB" 
                    SortExpression="TaskDB" />
                <asp:BoundField DataField="TaskSS" HeaderText="Task SS" 
                    SortExpression="TaskSS" />
                <asp:BoundField DataField="TaskPP" HeaderText="Task PP" 
                    SortExpression="TaskPP" />
                <asp:BoundField DataField="TestProfessional" HeaderText="Test Professional" 
                    SortExpression="TestProfessional" />
                <asp:BoundField DataField="TestMaster" HeaderText="Test Master" 
                    SortExpression="TestMaster" />
                <asp:BoundField DataField="TaskProfFinal" HeaderText="Task Prof Final" 
                    SortExpression="TaskProfFinal" />
                <asp:BoundField DataField="TaskMasterFinal" HeaderText="Task Master Final" 
                    SortExpression="TaskMasterFinal" />
                <asp:BoundField DataField="TestInternet" HeaderText="Test Internet" 
                    SortExpression="TestInternet" />
                <asp:BoundField DataField="DIDLAccess" HeaderText="DIDLAccess" 
                    SortExpression="DIDLAccess" />
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
            DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) 
            OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) 
            OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([CustomerId] = @original_CustomerId) 
            OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([DIDLLevel] = @original_DIDLLevel) 
            OR ([DIDLLevel] IS NULL AND @original_DIDLLevel IS NULL)) AND (([TaskFM] = @original_TaskFM) 
            OR ([TaskFM] IS NULL AND @original_TaskFM IS NULL)) AND (([TaskWP] = @original_TaskWP) 
            OR ([TaskWP] IS NULL AND @original_TaskWP IS NULL)) AND (([TaskGraphics] = @original_TaskGraphics) 
            OR ([TaskGraphics] IS NULL AND @original_TaskGraphics IS NULL)) AND (([TaskDP] = @original_TaskDP) 
            OR ([TaskDP] IS NULL AND @original_TaskDP IS NULL)) AND (([TaskDB] = @original_TaskDB) 
            OR ([TaskDB] IS NULL AND @original_TaskDB IS NULL)) AND (([TaskSS] = @original_TaskSS) 
            OR ([TaskSS] IS NULL AND @original_TaskSS IS NULL)) AND (([TaskPP] = @original_TaskPP) 
            OR ([TaskPP] IS NULL AND @original_TaskPP IS NULL)) AND (([DateBasic] = @original_DateBasic) 
            OR ([DateBasic] IS NULL AND @original_DateBasic IS NULL)) AND (([DateProfessional] = @original_DateProfessional) 
            OR ([DateProfessional] IS NULL AND @original_DateProfessional IS NULL)) AND (([DateMaster] = @original_DateMaster) 
            OR ([DateMaster] IS NULL AND @original_DateMaster IS NULL)) AND (([UserName] = @original_UserName) 
            OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([TestProfessional] = @original_TestProfessional) 
            OR ([TestProfessional] IS NULL AND @original_TestProfessional IS NULL)) AND (([TestBasic] = @original_TestBasic) 
            OR ([TestBasic] IS NULL AND @original_TestBasic IS NULL)) AND (([TestMaster] = @original_TestMaster) 
            OR ([TestMaster] IS NULL AND @original_TestMaster IS NULL)) AND (([TaskProfFinal] = @original_TaskProfFinal) 
            OR ([TaskProfFinal] IS NULL AND @original_TaskProfFinal IS NULL)) AND (([TaskMasterFinal] = @original_TaskMasterFinal) 
            OR ([TaskMasterFinal] IS NULL AND @original_TaskMasterFinal IS NULL)) AND (([TestInternet] = @original_TestInternet) 
            OR ([TestInternet] IS NULL AND @original_TestInternet IS NULL)) AND (([DIDLAccess] = @original_DIDLAccess) 
            OR ([DIDLAccess] IS NULL AND @original_DIDLAccess IS NULL))" 
            InsertCommand="INSERT INTO [Users] ([LastName], [FirstName], [CustomerId], [DIDLLevel], [TaskFM], [TaskWP], [TaskGraphics], [TaskDP], [TaskDB], [TaskSS], [TaskPP], [DateBasic], [DateProfessional], [DateMaster], [UserName], [TestProfessional], [TestBasic], [TestMaster], [TaskProfFinal], [TaskMasterFinal], [TestInternet], [DIDLAccess]) VALUES (@LastName, @FirstName, @CustomerId, @DIDLLevel, @TaskFM, @TaskWP, @TaskGraphics, @TaskDP, @TaskDB, @TaskSS, @TaskPP, @DateBasic, @DateProfessional, @DateMaster, @UserName, @TestProfessional, @TestBasic, @TestMaster, @TaskProfFinal, @TaskMasterFinal, @TestInternet, @DIDLAccess)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [UserId], [LastName], [FirstName], [CustomerId], [DIDLLevel], [TaskFM], [TaskWP], [TaskGraphics], [TaskDP], [TaskDB], [TaskSS], [TaskPP], [DateBasic], [DateProfessional], [DateMaster], [UserName], [TestProfessional], [TestBasic], [TestMaster], [TaskProfFinal], [TaskMasterFinal], [TestInternet], [DIDLAccess] FROM [Users] WHERE ([CustomerId] = @CustomerId)" 
            
            UpdateCommand="UPDATE [Users] SET [LastName] = @LastName, [FirstName] = @FirstName, [CustomerId] = @CustomerId, [DIDLLevel] = @DIDLLevel, [TaskFM] = @TaskFM, [TaskWP] = @TaskWP, [TaskGraphics] = @TaskGraphics, [TaskDP] = @TaskDP, [TaskDB] = @TaskDB, [TaskSS] = @TaskSS, [TaskPP] = @TaskPP, [DateBasic] = @DateBasic, [DateProfessional] = @DateProfessional, [DateMaster] = @DateMaster, [UserName] = @UserName, [TestProfessional] = @TestProfessional, [TestBasic] = @TestBasic, [TestMaster] = @TestMaster, [TaskProfFinal] = @TaskProfFinal, [TaskMasterFinal] = @TaskMasterFinal, [TestInternet] = @TestInternet, [DIDLAccess] = @DIDLAccess WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([DIDLLevel] = @original_DIDLLevel) OR ([DIDLLevel] IS NULL AND @original_DIDLLevel IS NULL)) AND (([TaskFM] = @original_TaskFM) OR ([TaskFM] IS NULL AND @original_TaskFM IS NULL)) AND (([TaskWP] = @original_TaskWP) OR ([TaskWP] IS NULL AND @original_TaskWP IS NULL)) AND (([TaskGraphics] = @original_TaskGraphics) OR ([TaskGraphics] IS NULL AND @original_TaskGraphics IS NULL)) AND (([TaskDP] = @original_TaskDP) OR ([TaskDP] IS NULL AND @original_TaskDP IS NULL)) AND (([TaskDB] = @original_TaskDB) OR ([TaskDB] IS NULL AND @original_TaskDB IS NULL)) AND (([TaskSS] = @original_TaskSS) OR ([TaskSS] IS NULL AND @original_TaskSS IS NULL)) AND (([TaskPP] = @original_TaskPP) OR ([TaskPP] IS NULL AND @original_TaskPP IS NULL)) AND (([DateBasic] = @original_DateBasic) OR ([DateBasic] IS NULL AND @original_DateBasic IS NULL)) AND (([DateProfessional] = @original_DateProfessional) OR ([DateProfessional] IS NULL AND @original_DateProfessional IS NULL)) AND (([DateMaster] = @original_DateMaster) OR ([DateMaster] IS NULL AND @original_DateMaster IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([TestProfessional] = @original_TestProfessional) OR ([TestProfessional] IS NULL AND @original_TestProfessional IS NULL)) AND (([TestBasic] = @original_TestBasic) OR ([TestBasic] IS NULL AND @original_TestBasic IS NULL)) AND (([TestMaster] = @original_TestMaster) OR ([TestMaster] IS NULL AND @original_TestMaster IS NULL)) AND (([TaskProfFinal] = @original_TaskProfFinal) OR ([TaskProfFinal] IS NULL AND @original_TaskProfFinal IS NULL)) AND (([TaskMasterFinal] = @original_TaskMasterFinal) OR ([TaskMasterFinal] IS NULL AND @original_TaskMasterFinal IS NULL)) AND (([TestInternet] = @original_TestInternet) OR ([TestInternet] IS NULL AND @original_TestInternet IS NULL)) AND (([DIDLAccess] = @original_DIDLAccess) OR ([DIDLAccess] IS NULL AND @original_DIDLAccess IS NULL))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CustomerId" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_UserId" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_CustomerId" Type="Int32" />
                <asp:Parameter Name="original_DIDLLevel" Type="String" />
                <asp:Parameter Name="original_DateBasic" Type="DateTime" />
                <asp:Parameter Name="original_DateProfessional" Type="DateTime" />
                <asp:Parameter Name="original_DateMaster" Type="DateTime" />
                <asp:Parameter Name="original_TaskFM" Type="DateTime" />
                <asp:Parameter Name="original_TaskWP" Type="DateTime" />
                <asp:Parameter Name="original_TaskGraphics" Type="DateTime" />
                <asp:Parameter Name="original_TaskDP" Type="DateTime" />
                <asp:Parameter Name="original_TaskDB" Type="DateTime" />
                <asp:Parameter Name="original_TaskSS" Type="DateTime" />
                <asp:Parameter Name="original_TaskPP" Type="DateTime" />
                <asp:Parameter Name="original_TestProfessional" Type="Int16" />
                <asp:Parameter Name="original_TestBasic" Type="Int16" />
                <asp:Parameter Name="original_TestMaster" Type="Int16" />
                <asp:Parameter Name="original_TaskProfFinal" Type="DateTime" />
                <asp:Parameter Name="original_TaskMasterFinal" Type="DateTime" />
                <asp:Parameter Name="original_TestInternet" Type="Int16" />
                <asp:Parameter Name="original_DIDLAccess" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
                <asp:Parameter Name="DIDLLevel" Type="String" />
                <asp:Parameter Name="DateBasic" Type="DateTime" />
                <asp:Parameter Name="DateProfessional" Type="DateTime" />
                <asp:Parameter Name="DateMaster" Type="DateTime" />
                <asp:Parameter Name="TaskFM" Type="DateTime" />
                <asp:Parameter Name="TaskWP" Type="DateTime" />
                <asp:Parameter Name="TaskGraphics" Type="DateTime" />
                <asp:Parameter Name="TaskDP" Type="DateTime" />
                <asp:Parameter Name="TaskDB" Type="DateTime" />
                <asp:Parameter Name="TaskSS" Type="DateTime" />
                <asp:Parameter Name="TaskPP" Type="DateTime" />
                <asp:Parameter Name="TestProfessional" Type="Int16" />
                <asp:Parameter Name="TestBasic" Type="Int16" />
                <asp:Parameter Name="TestMaster" Type="Int16" />
                <asp:Parameter Name="TaskProfFinal" Type="DateTime" />
                <asp:Parameter Name="TaskMasterFinal" Type="DateTime" />
                <asp:Parameter Name="TestInternet" Type="Int16" />
                <asp:Parameter Name="DIDLAccess" Type="String" />
                <asp:Parameter Name="original_UserId" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_CustomerId" Type="Int32" />
                <asp:Parameter Name="original_DIDLLevel" Type="String" />
                <asp:Parameter Name="original_DateBasic" Type="DateTime" />
                <asp:Parameter Name="original_DateProfessional" Type="DateTime" />
                <asp:Parameter Name="original_DateMaster" Type="DateTime" />
                <asp:Parameter Name="original_TaskFM" Type="DateTime" />
                <asp:Parameter Name="original_TaskWP" Type="DateTime" />
                <asp:Parameter Name="original_TaskGraphics" Type="DateTime" />
                <asp:Parameter Name="original_TaskDP" Type="DateTime" />
                <asp:Parameter Name="original_TaskDB" Type="DateTime" />
                <asp:Parameter Name="original_TaskSS" Type="DateTime" />
                <asp:Parameter Name="original_TaskPP" Type="DateTime" />
                <asp:Parameter Name="original_TestProfessional" Type="Int16" />
                <asp:Parameter Name="original_TestBasic" Type="Int16" />
                <asp:Parameter Name="original_TestMaster" Type="Int16" />
                <asp:Parameter Name="original_TaskProfFinal" Type="DateTime" />
                <asp:Parameter Name="original_TaskMasterFinal" Type="DateTime" />
                <asp:Parameter Name="original_TestInternet" Type="Int16" />
                <asp:Parameter Name="original_DIDLAccess" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
                <asp:Parameter Name="DIDLLevel" Type="String" />                
                <asp:Parameter Name="DateBasic" Type="DateTime" />
                <asp:Parameter Name="DateProfessional" Type="DateTime" />
                <asp:Parameter Name="DateMaster" Type="DateTime" />
                <asp:Parameter Name="TaskFM" Type="DateTime" />
                <asp:Parameter Name="TaskWP" Type="DateTime" />
                <asp:Parameter Name="TaskGraphics" Type="DateTime" />
                <asp:Parameter Name="TaskDP" Type="DateTime" />
                <asp:Parameter Name="TaskDB" Type="DateTime" />
                <asp:Parameter Name="TaskSS" Type="DateTime" />
                <asp:Parameter Name="TaskPP" Type="DateTime" />
                <asp:Parameter Name="TestProfessional" Type="Int16" />
                <asp:Parameter Name="TestBasic" Type="Int16" />
                <asp:Parameter Name="TestMaster" Type="Int16" />
                <asp:Parameter Name="TaskProfFinal" Type="DateTime" />
                <asp:Parameter Name="TaskMasterFinal" Type="DateTime" />
                <asp:Parameter Name="TestInternet" Type="Int16" />
                <asp:Parameter Name="DIDLAccess" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        </td>
    </tr>
    </table>
</asp:Content>

