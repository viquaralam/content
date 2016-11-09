<%@ Page Title="" Language="VB" MasterPageFile="~/SchoolsAdmin/School.master" AutoEventWireup="false" CodeFile="GraderEditor.aspx.vb" Inherits="SchoolsAdmin_GraderEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        GridLines="Vertical" Height="268px" Width="404px" DataKeyNames="GraderId">
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <EditItemTemplate>
            GraderId:
            <asp:Label ID="GraderIdLabel1" runat="server" Text='<%# Eval("GraderId") %>' />
            <br />
            GraderLastName:
            <asp:TextBox ID="GraderLastNameTextBox" runat="server" 
                Text='<%# Bind("GraderLastName") %>' />
            <br />
            GraderFirstName:
            <asp:TextBox ID="GraderFirstNameTextBox" runat="server" 
                Text='<%# Bind("GraderFirstName") %>' />
            <br />
            GraderMI:
            <asp:TextBox ID="GraderMITextBox" runat="server" 
                Text='<%# Bind("GraderMI") %>' />
            <br />
            GraderAddr1:
            <asp:TextBox ID="GraderAddr1TextBox" runat="server" 
                Text='<%# Bind("GraderAddr1") %>' />
            <br />
            GraderAddr2:
            <asp:TextBox ID="GraderAddr2TextBox" runat="server" 
                Text='<%# Bind("GraderAddr2") %>' />
            <br />
            GraderCity:
            <asp:TextBox ID="GraderCityTextBox" runat="server" 
                Text='<%# Bind("GraderCity") %>' />
            <br />
            GraderState:
            <asp:TextBox ID="GraderStateTextBox" runat="server" 
                Text='<%# Bind("GraderState") %>' />
            <br />
            GraderZip:
            <asp:TextBox ID="GraderZipTextBox" runat="server" 
                Text='<%# Bind("GraderZip") %>' />
            <br />
            GraderPhone:
            <asp:TextBox ID="GraderPhoneTextBox" runat="server" 
                Text='<%# Bind("GraderPhone") %>' />
            <br />
            GraderSSN:
            <asp:TextBox ID="GraderSSNTextBox" runat="server" 
                Text='<%# Bind("GraderSSN") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            GraderLastName:
            <asp:TextBox ID="GraderLastNameTextBox" runat="server" 
                Text='<%# Bind("GraderLastName") %>' />
            <br />
            GraderFirstName:
            <asp:TextBox ID="GraderFirstNameTextBox" runat="server" 
                Text='<%# Bind("GraderFirstName") %>' />
            <br />
            GraderMI:
            <asp:TextBox ID="GraderMITextBox" runat="server" 
                Text='<%# Bind("GraderMI") %>' />
            <br />
            GraderAddr1:
            <asp:TextBox ID="GraderAddr1TextBox" runat="server" 
                Text='<%# Bind("GraderAddr1") %>' />
            <br />
            GraderAddr2:
            <asp:TextBox ID="GraderAddr2TextBox" runat="server" 
                Text='<%# Bind("GraderAddr2") %>' />
            <br />
            GraderCity:
            <asp:TextBox ID="GraderCityTextBox" runat="server" 
                Text='<%# Bind("GraderCity") %>' />
            <br />
            GraderState:
            <asp:TextBox ID="GraderStateTextBox" runat="server" 
                Text='<%# Bind("GraderState") %>' />
            <br />
            GraderZip:
            <asp:TextBox ID="GraderZipTextBox" runat="server" 
                Text='<%# Bind("GraderZip") %>' />
            <br />
            GraderPhone:
            <asp:TextBox ID="GraderPhoneTextBox" runat="server" 
                Text='<%# Bind("GraderPhone") %>' />
            <br />
            GraderSSN:
            <asp:TextBox ID="GraderSSNTextBox" runat="server" 
                Text='<%# Bind("GraderSSN") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            GraderId:
            <asp:Label ID="GraderIdLabel" runat="server" 
                Text='<%# Eval("GraderId") %>' />
            <br />
            GraderLastName:
            <asp:Label ID="GraderLastNameLabel" runat="server" 
                Text='<%# Bind("GraderLastName") %>' />
            <br />
            GraderFirstName:
            <asp:Label ID="GraderFirstNameLabel" runat="server" 
                Text='<%# Bind("GraderFirstName") %>' />
            <br />
            GraderMI:
            <asp:Label ID="GraderMILabel" runat="server" 
                Text='<%# Bind("GraderMI") %>' />
            <br />
            GraderAddr1:
            <asp:Label ID="GraderAddr1Label" runat="server" 
                Text='<%# Bind("GraderAddr1") %>' />
            <br />
            GraderAddr2:
            <asp:Label ID="GraderAddr2Label" runat="server" 
                Text='<%# Bind("GraderAddr2") %>' />
            <br />
            GraderCity:
            <asp:Label ID="GraderCityLabel" runat="server" 
                Text='<%# Bind("GraderCity") %>' />
            <br />
            GraderState:
            <asp:Label ID="GraderStateLabel" runat="server" 
                Text='<%# Bind("GraderState") %>' />
            <br />
            GraderZip:
            <asp:Label ID="GraderZipLabel" runat="server" Text='<%# Bind("GraderZip") %>' />
            <br />
            GraderPhone: <asp:Label ID="GraderPhoneLabel" runat="server" 
                Text='<%# Bind("GraderPhone") %>' />
            <br />
            GraderSSN:
            <asp:Label ID="GraderSSNLabel" runat="server" Text='<%# Bind("GraderSSN") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
        OldValuesParameterFormatString="original_{0}" 
        
        SelectCommand="SELECT * FROM [Graders]" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Graders] WHERE [GraderId] = @original_GraderId AND (([GraderLastName] = @original_GraderLastName) OR ([GraderLastName] IS NULL AND @original_GraderLastName IS NULL)) AND (([GraderFirstName] = @original_GraderFirstName) OR ([GraderFirstName] IS NULL AND @original_GraderFirstName IS NULL)) AND (([GraderMI] = @original_GraderMI) OR ([GraderMI] IS NULL AND @original_GraderMI IS NULL)) AND (([GraderAddr1] = @original_GraderAddr1) OR ([GraderAddr1] IS NULL AND @original_GraderAddr1 IS NULL)) AND (([GraderAddr2] = @original_GraderAddr2) OR ([GraderAddr2] IS NULL AND @original_GraderAddr2 IS NULL)) AND (([GraderCity] = @original_GraderCity) OR ([GraderCity] IS NULL AND @original_GraderCity IS NULL)) AND (([GraderState] = @original_GraderState) OR ([GraderState] IS NULL AND @original_GraderState IS NULL)) AND (([GraderZip] = @original_GraderZip) OR ([GraderZip] IS NULL AND @original_GraderZip IS NULL)) AND (([GraderPhone] = @original_GraderPhone) OR ([GraderPhone] IS NULL AND @original_GraderPhone IS NULL)) AND (([GraderSSN] = @original_GraderSSN) OR ([GraderSSN] IS NULL AND @original_GraderSSN IS NULL))" 
        InsertCommand="INSERT INTO [Graders] ([GraderLastName], [GraderFirstName], [GraderMI], [GraderAddr1], [GraderAddr2], [GraderCity], [GraderState], [GraderZip], [GraderPhone], [GraderSSN]) VALUES (@GraderLastName, @GraderFirstName, @GraderMI, @GraderAddr1, @GraderAddr2, @GraderCity, @GraderState, @GraderZip, @GraderPhone, @GraderSSN)" 
        UpdateCommand="UPDATE [Graders] SET [GraderLastName] = @GraderLastName, [GraderFirstName] = @GraderFirstName, [GraderMI] = @GraderMI, [GraderAddr1] = @GraderAddr1, [GraderAddr2] = @GraderAddr2, [GraderCity] = @GraderCity, [GraderState] = @GraderState, [GraderZip] = @GraderZip, [GraderPhone] = @GraderPhone, [GraderSSN] = @GraderSSN WHERE [GraderId] = @original_GraderId AND (([GraderLastName] = @original_GraderLastName) OR ([GraderLastName] IS NULL AND @original_GraderLastName IS NULL)) AND (([GraderFirstName] = @original_GraderFirstName) OR ([GraderFirstName] IS NULL AND @original_GraderFirstName IS NULL)) AND (([GraderMI] = @original_GraderMI) OR ([GraderMI] IS NULL AND @original_GraderMI IS NULL)) AND (([GraderAddr1] = @original_GraderAddr1) OR ([GraderAddr1] IS NULL AND @original_GraderAddr1 IS NULL)) AND (([GraderAddr2] = @original_GraderAddr2) OR ([GraderAddr2] IS NULL AND @original_GraderAddr2 IS NULL)) AND (([GraderCity] = @original_GraderCity) OR ([GraderCity] IS NULL AND @original_GraderCity IS NULL)) AND (([GraderState] = @original_GraderState) OR ([GraderState] IS NULL AND @original_GraderState IS NULL)) AND (([GraderZip] = @original_GraderZip) OR ([GraderZip] IS NULL AND @original_GraderZip IS NULL)) AND (([GraderPhone] = @original_GraderPhone) OR ([GraderPhone] IS NULL AND @original_GraderPhone IS NULL)) AND (([GraderSSN] = @original_GraderSSN) OR ([GraderSSN] IS NULL AND @original_GraderSSN IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_GraderId" Type="Int32" />
            <asp:Parameter Name="original_GraderLastName" Type="String" />
            <asp:Parameter Name="original_GraderFirstName" Type="String" />
            <asp:Parameter Name="original_GraderMI" Type="String" />
            <asp:Parameter Name="original_GraderAddr1" Type="String" />
            <asp:Parameter Name="original_GraderAddr2" Type="String" />
            <asp:Parameter Name="original_GraderCity" Type="String" />
            <asp:Parameter Name="original_GraderState" Type="String" />
            <asp:Parameter Name="original_GraderZip" Type="String" />
            <asp:Parameter Name="original_GraderPhone" Type="String" />
            <asp:Parameter Name="original_GraderSSN" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="GraderLastName" Type="String" />
            <asp:Parameter Name="GraderFirstName" Type="String" />
            <asp:Parameter Name="GraderMI" Type="String" />
            <asp:Parameter Name="GraderAddr1" Type="String" />
            <asp:Parameter Name="GraderAddr2" Type="String" />
            <asp:Parameter Name="GraderCity" Type="String" />
            <asp:Parameter Name="GraderState" Type="String" />
            <asp:Parameter Name="GraderZip" Type="String" />
            <asp:Parameter Name="GraderPhone" Type="String" />
            <asp:Parameter Name="GraderSSN" Type="String" />
            <asp:Parameter Name="original_GraderId" Type="Int32" />
            <asp:Parameter Name="original_GraderLastName" Type="String" />
            <asp:Parameter Name="original_GraderFirstName" Type="String" />
            <asp:Parameter Name="original_GraderMI" Type="String" />
            <asp:Parameter Name="original_GraderAddr1" Type="String" />
            <asp:Parameter Name="original_GraderAddr2" Type="String" />
            <asp:Parameter Name="original_GraderCity" Type="String" />
            <asp:Parameter Name="original_GraderState" Type="String" />
            <asp:Parameter Name="original_GraderZip" Type="String" />
            <asp:Parameter Name="original_GraderPhone" Type="String" />
            <asp:Parameter Name="original_GraderSSN" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="GraderLastName" Type="String" />
            <asp:Parameter Name="GraderFirstName" Type="String" />
            <asp:Parameter Name="GraderMI" Type="String" />
            <asp:Parameter Name="GraderAddr1" Type="String" />
            <asp:Parameter Name="GraderAddr2" Type="String" />
            <asp:Parameter Name="GraderCity" Type="String" />
            <asp:Parameter Name="GraderState" Type="String" />
            <asp:Parameter Name="GraderZip" Type="String" />
            <asp:Parameter Name="GraderPhone" Type="String" />
            <asp:Parameter Name="GraderSSN" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="GraderId" DataSourceID="SqlDataSource2" GridLines="Vertical" 
        UseAccessibleHeader="False" Width="1275px">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="GraderId" HeaderText="GraderId" 
                InsertVisible="False" ReadOnly="True" SortExpression="GraderId" />
            <asp:BoundField DataField="GraderLastName" HeaderText="GraderLastName" 
                SortExpression="GraderLastName" />
            <asp:BoundField DataField="GraderFirstName" HeaderText="GraderFirstName" 
                SortExpression="GraderFirstName" />
            <asp:BoundField DataField="GraderMI" HeaderText="GraderMI" 
                SortExpression="GraderMI" />
            <asp:BoundField DataField="GraderAddr1" HeaderText="GraderAddr1" 
                SortExpression="GraderAddr1" />
            <asp:BoundField DataField="GraderAddr2" HeaderText="GraderAddr2" 
                SortExpression="GraderAddr2" />
            <asp:BoundField DataField="GraderCity" HeaderText="GraderCity" 
                SortExpression="GraderCity" />
            <asp:BoundField DataField="GraderState" HeaderText="GraderState" 
                SortExpression="GraderState" />
            <asp:BoundField DataField="GraderZip" HeaderText="GraderZip" 
                SortExpression="GraderZip" />
            <asp:BoundField DataField="GraderPhone" HeaderText="GraderPhone" 
                SortExpression="GraderPhone" />
            <asp:BoundField DataField="GraderSSN" HeaderText="GraderSSN" 
                SortExpression="GraderSSN" />
            <asp:HyperLinkField HeaderText="Grade Book" 
                NavigateUrl="GradeBook.aspx?GraderId={0}" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
        DeleteCommand="DELETE FROM [Graders] WHERE [GraderId] = @original_GraderId AND (([GraderLastName] = @original_GraderLastName) OR ([GraderLastName] IS NULL AND @original_GraderLastName IS NULL)) AND (([GraderFirstName] = @original_GraderFirstName) OR ([GraderFirstName] IS NULL AND @original_GraderFirstName IS NULL)) AND (([GraderMI] = @original_GraderMI) OR ([GraderMI] IS NULL AND @original_GraderMI IS NULL)) AND (([GraderAddr1] = @original_GraderAddr1) OR ([GraderAddr1] IS NULL AND @original_GraderAddr1 IS NULL)) AND (([GraderAddr2] = @original_GraderAddr2) OR ([GraderAddr2] IS NULL AND @original_GraderAddr2 IS NULL)) AND (([GraderCity] = @original_GraderCity) OR ([GraderCity] IS NULL AND @original_GraderCity IS NULL)) AND (([GraderState] = @original_GraderState) OR ([GraderState] IS NULL AND @original_GraderState IS NULL)) AND (([GraderZip] = @original_GraderZip) OR ([GraderZip] IS NULL AND @original_GraderZip IS NULL)) AND (([GraderPhone] = @original_GraderPhone) OR ([GraderPhone] IS NULL AND @original_GraderPhone IS NULL)) AND (([GraderSSN] = @original_GraderSSN) OR ([GraderSSN] IS NULL AND @original_GraderSSN IS NULL))" 
        InsertCommand="INSERT INTO [Graders] ([GraderLastName], [GraderFirstName], [GraderMI], [GraderAddr1], [GraderAddr2], [GraderCity], [GraderState], [GraderZip], [GraderPhone], [GraderSSN]) VALUES (@GraderLastName, @GraderFirstName, @GraderMI, @GraderAddr1, @GraderAddr2, @GraderCity, @GraderState, @GraderZip, @GraderPhone, @GraderSSN)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Graders] ORDER BY [GraderId]" 
        
        UpdateCommand="UPDATE [Graders] SET [GraderLastName] = @GraderLastName, [GraderFirstName] = @GraderFirstName, [GraderMI] = @GraderMI, [GraderAddr1] = @GraderAddr1, [GraderAddr2] = @GraderAddr2, [GraderCity] = @GraderCity, [GraderState] = @GraderState, [GraderZip] = @GraderZip, [GraderPhone] = @GraderPhone, [GraderSSN] = @GraderSSN WHERE [GraderId] = @original_GraderId AND (([GraderLastName] = @original_GraderLastName) OR ([GraderLastName] IS NULL AND @original_GraderLastName IS NULL)) AND (([GraderFirstName] = @original_GraderFirstName) OR ([GraderFirstName] IS NULL AND @original_GraderFirstName IS NULL)) AND (([GraderMI] = @original_GraderMI) OR ([GraderMI] IS NULL AND @original_GraderMI IS NULL)) AND (([GraderAddr1] = @original_GraderAddr1) OR ([GraderAddr1] IS NULL AND @original_GraderAddr1 IS NULL)) AND (([GraderAddr2] = @original_GraderAddr2) OR ([GraderAddr2] IS NULL AND @original_GraderAddr2 IS NULL)) AND (([GraderCity] = @original_GraderCity) OR ([GraderCity] IS NULL AND @original_GraderCity IS NULL)) AND (([GraderState] = @original_GraderState) OR ([GraderState] IS NULL AND @original_GraderState IS NULL)) AND (([GraderZip] = @original_GraderZip) OR ([GraderZip] IS NULL AND @original_GraderZip IS NULL)) AND (([GraderPhone] = @original_GraderPhone) OR ([GraderPhone] IS NULL AND @original_GraderPhone IS NULL)) AND (([GraderSSN] = @original_GraderSSN) OR ([GraderSSN] IS NULL AND @original_GraderSSN IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_GraderId" Type="Int32" />
            <asp:Parameter Name="original_GraderLastName" Type="String" />
            <asp:Parameter Name="original_GraderFirstName" Type="String" />
            <asp:Parameter Name="original_GraderMI" Type="String" />
            <asp:Parameter Name="original_GraderAddr1" Type="String" />
            <asp:Parameter Name="original_GraderAddr2" Type="String" />
            <asp:Parameter Name="original_GraderCity" Type="String" />
            <asp:Parameter Name="original_GraderState" Type="String" />
            <asp:Parameter Name="original_GraderZip" Type="String" />
            <asp:Parameter Name="original_GraderPhone" Type="String" />
            <asp:Parameter Name="original_GraderSSN" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="GraderLastName" Type="String" />
            <asp:Parameter Name="GraderFirstName" Type="String" />
            <asp:Parameter Name="GraderMI" Type="String" />
            <asp:Parameter Name="GraderAddr1" Type="String" />
            <asp:Parameter Name="GraderAddr2" Type="String" />
            <asp:Parameter Name="GraderCity" Type="String" />
            <asp:Parameter Name="GraderState" Type="String" />
            <asp:Parameter Name="GraderZip" Type="String" />
            <asp:Parameter Name="GraderPhone" Type="String" />
            <asp:Parameter Name="GraderSSN" Type="String" />
            <asp:Parameter Name="original_GraderId" Type="Int32" />
            <asp:Parameter Name="original_GraderLastName" Type="String" />
            <asp:Parameter Name="original_GraderFirstName" Type="String" />
            <asp:Parameter Name="original_GraderMI" Type="String" />
            <asp:Parameter Name="original_GraderAddr1" Type="String" />
            <asp:Parameter Name="original_GraderAddr2" Type="String" />
            <asp:Parameter Name="original_GraderCity" Type="String" />
            <asp:Parameter Name="original_GraderState" Type="String" />
            <asp:Parameter Name="original_GraderZip" Type="String" />
            <asp:Parameter Name="original_GraderPhone" Type="String" />
            <asp:Parameter Name="original_GraderSSN" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="GraderLastName" Type="String" />
            <asp:Parameter Name="GraderFirstName" Type="String" />
            <asp:Parameter Name="GraderMI" Type="String" />
            <asp:Parameter Name="GraderAddr1" Type="String" />
            <asp:Parameter Name="GraderAddr2" Type="String" />
            <asp:Parameter Name="GraderCity" Type="String" />
            <asp:Parameter Name="GraderState" Type="String" />
            <asp:Parameter Name="GraderZip" Type="String" />
            <asp:Parameter Name="GraderPhone" Type="String" />
            <asp:Parameter Name="GraderSSN" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>

    

</asp:Content>

