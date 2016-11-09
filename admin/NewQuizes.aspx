<%@ Page Language="VB" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="NewQuizes.aspx.vb" Inherits="TestingCenter_NewQuizes" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class = "middle-wrapper-didl">
			<div class = "middle-didl">
				<div class = "middle-didl-picture">
					<img src = "../images/didl.jpg" alt="" />
				</div>
			</div>
		</div>
    <div class="site-wrapper">
        <div class="body-wrapper">
            <div class="body_didl2" style="width: 923px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 427px">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                DataKeyNames="QuizId" DataSourceID="SqlDataSource1" UseAccessibleHeader="False" 
                                Width="508px">
                                <RowStyle BackColor="White" ForeColor="#003399" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="QuizId" HeaderText="QuizId" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="QuizId" />
                                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" 
                                        SortExpression="Description" />
                                </Columns>
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            </asp:GridView>
                        </td>
                        <td>
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
        CellPadding="3" DataKeyNames="QuizId" DataSourceID="SqlDataSource1" Height="188px"
        Width="401px" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="QuizId" HeaderText="QuizId" InsertVisible="False" ReadOnly="True"
                SortExpression="QuizId" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" 
                ItemStyle-Width="300" >
<ItemStyle Width="400px" Wrap="True"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CommandField NewText="Insert New Test" ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:DetailsView>
                        </td>
                    </tr>
                </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" DeleteCommand="DELETE FROM [Quiz] WHERE [QuizId] = @original_QuizId AND [Title] = @original_Title AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))"
        InsertCommand="INSERT INTO [Quiz] ([Title], [Description]) VALUES (@Title, @Description)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Quiz]"
        UpdateCommand="UPDATE [Quiz] SET [Title] = @Title, [Description] = @Description WHERE [QuizId] = @original_QuizId AND [Title] = @original_Title AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_QuizId" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_QuizId" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</div>
</div>
</div>
</asp:Content>

