<%@ Page Language="VB" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="CustomerEditor.aspx.vb" Inherits="admin_CustomerEditor" title="Customer Editor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <table border="0" cellpadding="0" cellspacing="0" style="width: 800; height: 600">
        <tr>
            <td style="height: 353px" align="left" valign="bottom">&nbsp;
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
                        DataKeyNames="CustomerId" 
                        DataSourceID="SqlDataSource1" 
                        Height="192px" 
                        Width="627px" 
                        HorizontalAlign="Center" 
                        BackColor="#CCFFFF" 
                        BorderColor="#009999" 
                        BorderStyle="Solid" 
                        BorderWidth="1px" 
                        CellPadding="3" 
                        GridLines="Vertical" 
                        DefaultMode="Insert" 
                        EnablePagingCallbacks="True" 
                        ForeColor="Black">
                    <RowStyle BackColor="#00AEEF" ForeColor="Black" BorderStyle="None" />
                    <PagerStyle BackColor="White" ForeColor="Black" />
                    <Fields>
                        <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False"
                            ReadOnly="True" SortExpression="CustomerId" />
                        <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" SortExpression="CustomerName" >
                            <ControlStyle BackColor="#00AEEF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Address1" HeaderText="Address 1" SortExpression="Address1" >
                            <ControlStyle BackColor="#00AEEF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Address2" HeaderText="Address 2" SortExpression="Address2" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" >
                            <ControlStyle BackColor="#00AEEF" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" >
                            <ControlStyle BackColor="#00AEEF" />
                            <ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CurrentBal" HeaderText="Current Bal" SortExpression="CurrentBal" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Students" HeaderText="Students" SortExpression="Students" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ContactName" HeaderText="Contact Name" SortExpression="ContactName" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ContactEmail" HeaderText="Contact Email" SortExpression="ContactEmail" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ContactPhone" HeaderText="Contact Phone" SortExpression="ContactPhone" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ContactXt" HeaderText="Contact" SortExpression="ContactXt" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ContactName2" HeaderText="Contact Name2" SortExpression="ContactName2" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ContactPhone2" HeaderText="Contact Phone2" SortExpression="ContactPhone2" >
                            <ControlStyle BackColor="#00AEEF" /><ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <CommandRowStyle BorderStyle="None" Font-Size="12pt" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#CCFFFF" Font-Bold="True" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" 
                        BorderWidth="1px" Width="400px" />
                </asp:DetailsView>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" 
                AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" 
                    BorderColor="#999999" 
                    BorderStyle="None" 
                    BorderWidth="1px"
                    CellPadding="3" 
                    DataKeyNames="CustomerId" 
                    DataSourceID="SqlDataSource1"
                    ShowFooter="True" 
                    UseAccessibleHeader="False" 
                    EnableSortingAndPagingCallbacks="True" 
                    HorizontalAlign="Left">
                    <RowStyle BackColor="White" ForeColor="Black" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False"
                            ReadOnly="True" SortExpression="CustomerId" />
                        <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" SortExpression="CustomerName" />
                        <asp:BoundField DataField="Address1" HeaderText="Address 1" SortExpression="Address1" />
                        <asp:BoundField DataField="Address2" HeaderText="Address 2" SortExpression="Address2" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                        <asp:BoundField DataField="CurrentBal" HeaderText="Current Bal" SortExpression="CurrentBal" />
                        <asp:BoundField DataField="Students" HeaderText="Students" SortExpression="Students" />
                        <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate" />
                        <asp:BoundField DataField="ContactName" HeaderText="Contact Name" SortExpression="ContactName" />
                        <asp:BoundField DataField="ContactEmail" HeaderText="Contact Email" SortExpression="ContactEmail" />
                        <asp:BoundField DataField="ContactPhone" HeaderText="Contact Phone" SortExpression="ContactPhone" />
                        <asp:BoundField DataField="ContactXt" HeaderText="Contact" SortExpression="ContactXt" />
                        <asp:BoundField DataField="ContactName2" HeaderText="Contact Name 2" SortExpression="ContactName2" />
                        <asp:BoundField DataField="ContactPhone2" HeaderText="Contact Phone 2" SortExpression="ContactPhone2" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @original_CustomerId AND [CustomerName] = @original_CustomerName AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([CurrentBal] = @original_CurrentBal) OR ([CurrentBal] IS NULL AND @original_CurrentBal IS NULL)) AND (([Students] = @original_Students) OR ([Students] IS NULL AND @original_Students IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([ContactName] = @original_ContactName) OR ([ContactName] IS NULL AND @original_ContactName IS NULL)) AND (([ContactEmail] = @original_ContactEmail) OR ([ContactEmail] IS NULL AND @original_ContactEmail IS NULL)) AND (([ContactPhone] = @original_ContactPhone) OR ([ContactPhone] IS NULL AND @original_ContactPhone IS NULL)) AND (([ContactXt] = @original_ContactXt) OR ([ContactXt] IS NULL AND @original_ContactXt IS NULL)) AND (([ContactName2] = @original_ContactName2) OR ([ContactName2] IS NULL AND @original_ContactName2 IS NULL)) AND (([ContactPhone2] = @original_ContactPhone2) OR ([ContactPhone2] IS NULL AND @original_ContactPhone2 IS NULL))"
                    InsertCommand="INSERT INTO [Customer] ([CustomerName], [Address1], [Address2], [City], [State], [Zip], [CurrentBal], [Students], [StartDate], [ContactName], [ContactEmail], [ContactPhone], [ContactXt], [ContactName2], [ContactPhone2]) VALUES (@CustomerName, @Address1, @Address2, @City, @State, @Zip, @CurrentBal, @Students, @StartDate, @ContactName, @ContactEmail, @ContactPhone, @ContactXt, @ContactName2, @ContactPhone2)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer] ORDER BY [CustomerName]"
                    UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [Zip] = @Zip, [CurrentBal] = @CurrentBal, [Students] = @Students, [StartDate] = @StartDate, [ContactName] = @ContactName, [ContactEmail] = @ContactEmail, [ContactPhone] = @ContactPhone, [ContactXt] = @ContactXt, [ContactName2] = @ContactName2, [ContactPhone2] = @ContactPhone2 WHERE [CustomerId] = @original_CustomerId AND [CustomerName] = @original_CustomerName AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([CurrentBal] = @original_CurrentBal) OR ([CurrentBal] IS NULL AND @original_CurrentBal IS NULL)) AND (([Students] = @original_Students) OR ([Students] IS NULL AND @original_Students IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([ContactName] = @original_ContactName) OR ([ContactName] IS NULL AND @original_ContactName IS NULL)) AND (([ContactEmail] = @original_ContactEmail) OR ([ContactEmail] IS NULL AND @original_ContactEmail IS NULL)) AND (([ContactPhone] = @original_ContactPhone) OR ([ContactPhone] IS NULL AND @original_ContactPhone IS NULL)) AND (([ContactXt] = @original_ContactXt) OR ([ContactXt] IS NULL AND @original_ContactXt IS NULL)) AND (([ContactName2] = @original_ContactName2) OR ([ContactName2] IS NULL AND @original_ContactName2 IS NULL)) AND (([ContactPhone2] = @original_ContactPhone2) OR ([ContactPhone2] IS NULL AND @original_ContactPhone2 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_CustomerName" Type="String" />
                        <asp:Parameter Name="original_Address1" Type="String" />
                        <asp:Parameter Name="original_Address2" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                        <asp:Parameter Name="original_CurrentBal" Type="Decimal" />
                        <asp:Parameter Name="original_Students" Type="Int32" />
                        <asp:Parameter Type="DateTime" Name="original_StartDate" />
                        <asp:Parameter Name="original_ContactName" Type="String" />
                        <asp:Parameter Name="original_ContactEmail" Type="String" />
                        <asp:Parameter Name="original_ContactPhone" Type="String" />
                        <asp:Parameter Name="original_ContactXt" Type="String" />
                        <asp:Parameter Name="original_ContactName2" Type="String" />
                        <asp:Parameter Name="original_ContactPhone2" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="Address1" Type="String" />
                        <asp:Parameter Name="Address2" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                        <asp:Parameter Name="CurrentBal" Type="Decimal" />
                        <asp:Parameter Name="Students" Type="Int32" />
                        <asp:Parameter Type="DateTime" Name="StartDate" />
                        <asp:Parameter Name="ContactName" Type="String" />
                        <asp:Parameter Name="ContactEmail" Type="String" />
                        <asp:Parameter Name="ContactPhone" Type="String" />
                        <asp:Parameter Name="ContactXt" Type="String" />
                        <asp:Parameter Name="ContactName2" Type="String" />
                        <asp:Parameter Name="ContactPhone2" Type="String" />
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_CustomerName" Type="String" />
                        <asp:Parameter Name="original_Address1" Type="String" />
                        <asp:Parameter Name="original_Address2" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                        <asp:Parameter Name="original_CurrentBal" Type="Decimal" />
                        <asp:Parameter Name="original_Students" Type="Int32" />
                        <asp:Parameter Type="DateTime" Name="original_StartDate" />
                        <asp:Parameter Name="original_ContactName" Type="String" />
                        <asp:Parameter Name="original_ContactEmail" Type="String" />
                        <asp:Parameter Name="original_ContactPhone" Type="String" />
                        <asp:Parameter Name="original_ContactXt" Type="String" />
                        <asp:Parameter Name="original_ContactName2" Type="String" />
                        <asp:Parameter Name="original_ContactPhone2" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="Address1" Type="String" />
                        <asp:Parameter Name="Address2" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                        <asp:Parameter Name="CurrentBal" Type="Decimal" />
                        <asp:Parameter Name="Students" Type="Int32" />
                        <asp:Parameter Type="DateTime" Name="StartDate" />
                        <asp:Parameter Name="ContactName" Type="String" />
                        <asp:Parameter Name="ContactEmail" Type="String" />
                        <asp:Parameter Name="ContactPhone" Type="String" />
                        <asp:Parameter Name="ContactXt" Type="String" />
                        <asp:Parameter Name="ContactName2" Type="String" />
                        <asp:Parameter Name="ContactPhone2" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp;
            </td>
        </tr>
    </table>
    
</asp:Content>

