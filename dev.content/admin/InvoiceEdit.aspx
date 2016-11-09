<%@ Page Title="" Language="VB" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="InvoiceEdit.aspx.vb" Inherits="admin_InvoiceEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="InvoiceItemId" DataSourceID="SqlDataSource1" 
    AllowPaging="True" AllowSorting="True" Height="378px" Width="1332px" 
    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
    CellPadding="3" GridLines="Vertical" UseAccessibleHeader="False">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="InvoiceItemId" HeaderText="Invoice Item Id" 
            InsertVisible="False" ReadOnly="True" SortExpression="InvoiceItemId" />
        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
            SortExpression="Quantity" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Amount" HeaderText="Amount" 
            SortExpression="Amount" />
        <asp:BoundField DataField="Taxable" HeaderText="Taxable" 
            SortExpression="Taxable" />
        <asp:BoundField DataField="TranDate" HeaderText="Transaction Date" 
            SortExpression="TranDate" />
        <asp:BoundField DataField="UserName" HeaderText="User Name" 
            SortExpression="UserName" />
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
    DeleteCommand="DELETE FROM [InvoiceItem] WHERE [InvoiceItemId] = @original_InvoiceItemId AND [Item] = @original_Item AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([Taxable] = @original_Taxable) OR ([Taxable] IS NULL AND @original_Taxable IS NULL)) AND (([TranDate] = @original_TranDate) OR ([TranDate] IS NULL AND @original_TranDate IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))" 
    InsertCommand="INSERT INTO [InvoiceItem] ([Item], [Description], [Quantity], [Price], [Amount], [Taxable], [TranDate], [UserName]) VALUES (@Item, @Description, @Quantity, @Price, @Amount, @Taxable, @TranDate, @UserName)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT [InvoiceItemId], [Item], [Description], [Quantity], [Price], [Amount], [Taxable], [TranDate], [UserName] FROM [InvoiceItem]" 
    UpdateCommand="UPDATE [InvoiceItem] SET [Item] = @Item, [Description] = @Description, [Quantity] = @Quantity, [Price] = @Price, [Amount] = @Amount, [Taxable] = @Taxable, [TranDate] = @TranDate, [UserName] = @UserName WHERE [InvoiceItemId] = @original_InvoiceItemId AND [Item] = @original_Item AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([Taxable] = @original_Taxable) OR ([Taxable] IS NULL AND @original_Taxable IS NULL)) AND (([TranDate] = @original_TranDate) OR ([TranDate] IS NULL AND @original_TranDate IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_InvoiceItemId" Type="Int32" />
        <asp:Parameter Name="original_Item" Type="String" />
        <asp:Parameter Name="original_Description" Type="String" />
        <asp:Parameter Name="original_Quantity" Type="Decimal" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
        <asp:Parameter Name="original_Amount" Type="Decimal" />
        <asp:Parameter Name="original_Taxable" Type="String" />
        <asp:Parameter Name="original_TranDate" Type="DateTime" />
        <asp:Parameter Name="original_UserName" Type="String" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="Item" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Quantity" Type="Decimal" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Amount" Type="Decimal" />
        <asp:Parameter Name="Taxable" Type="String" />
        <asp:Parameter Name="TranDate" Type="DateTime" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="original_InvoiceItemId" Type="Int32" />
        <asp:Parameter Name="original_Item" Type="String" />
        <asp:Parameter Name="original_Description" Type="String" />
        <asp:Parameter Name="original_Quantity" Type="Decimal" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
        <asp:Parameter Name="original_Amount" Type="Decimal" />
        <asp:Parameter Name="original_Taxable" Type="String" />
        <asp:Parameter Name="original_TranDate" Type="DateTime" />
        <asp:Parameter Name="original_UserName" Type="String" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="Item" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Quantity" Type="Decimal" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Amount" Type="Decimal" />
        <asp:Parameter Name="Taxable" Type="String" />
        <asp:Parameter Name="TranDate" Type="DateTime" />
        <asp:Parameter Name="UserName" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
</asp:Content>

