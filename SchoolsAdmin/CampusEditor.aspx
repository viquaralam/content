<%@ Page Title="" Language="VB" MasterPageFile="~/SchoolsAdmin/School.master" AutoEventWireup="false" CodeFile="CampusEditor.aspx.vb" Inherits="CampusEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="height: 295px">
            </td>
            <td style="height: 295px; font-size:12pt" valign="top" >
            Select School:&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="SchoolName"  
                    DataValueField="SchoolId" Height="22px" Width="685px">
                    
                </asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    
                    SelectCommand="SELECT [SchoolId], [SchoolName] FROM [School] WHERE ([SchoolId] = @SchoolId)">
                    <SelectParameters>
                       <asp:QueryStringParameter Name="SchoolId" QueryStringField="SchoolId" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                <br />
                
                <br />
                
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" 
                    DataKeyNames="CampusId" DataSourceID="SqlDataSource3" 
                    GridLines="Vertical" UseAccessibleHeader="False" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:HyperLinkField DataNavigateUrlFields="CampusId" 
                            DataNavigateUrlFormatString="ClassEditor.aspx?CampusId={0}" 
                            HeaderText="Classes" NavigateUrl="~/SchoolsAdmin/ClassEditor.aspx" 
                            Text="Classes" />
                        <asp:BoundField DataField="CampusId" HeaderText="Campus Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="CampusId" />
                        <asp:BoundField DataField="CampusName" HeaderText="Campus Name" 
                            SortExpression="CampusName" />
                        <asp:BoundField DataField="CampusAddr1" HeaderText="Campus Addr1" 
                            SortExpression="CampusAddr1" />
                        <asp:BoundField DataField="CampusAddr2" HeaderText="Campus Addr2" 
                            SortExpression="CampusAddr2" />
                        <asp:BoundField DataField="CampusCity" HeaderText="Campus City" 
                            SortExpression="CampusCity" />
                        <asp:BoundField DataField="CampusSt" HeaderText="Campus State" 
                            SortExpression="CampusSt" />
                        <asp:BoundField DataField="CampusZip" HeaderText="Campus Zip" 
                            SortExpression="CampusZip" />
                        <asp:BoundField DataField="CampusContactLast" HeaderText="Campus Contact Last Name" 
                            SortExpression="CampusContactLast" />
                        <asp:BoundField DataField="CampusContactFirst" HeaderText="Campus Contact First Name" 
                            SortExpression="CampusContactFirst" />
                        <asp:BoundField DataField="CampusSchoolId" HeaderText="Campus School Id" 
                            SortExpression="CampusSchoolId" />
                        <asp:BoundField DataField="CampusEmail" HeaderText="Campus Email" 
                            SortExpression="CampusEmail" />
                        <asp:BoundField DataField="CampusEmail1" HeaderText="Campus Email1" 
                            SortExpression="CampusEmail1" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Campus] WHERE [CampusId] = @original_CampusId AND (([CampusName] = @original_CampusName) OR ([CampusName] IS NULL AND @original_CampusName IS NULL)) AND (([CampusAddr1] = @original_CampusAddr1) OR ([CampusAddr1] IS NULL AND @original_CampusAddr1 IS NULL)) AND (([CampusAddr2] = @original_CampusAddr2) OR ([CampusAddr2] IS NULL AND @original_CampusAddr2 IS NULL)) AND (([CampusCity] = @original_CampusCity) OR ([CampusCity] IS NULL AND @original_CampusCity IS NULL)) AND (([CampusSt] = @original_CampusSt) OR ([CampusSt] IS NULL AND @original_CampusSt IS NULL)) AND (([CampusZip] = @original_CampusZip) OR ([CampusZip] IS NULL AND @original_CampusZip IS NULL)) AND (([CampusContactLast] = @original_CampusContactLast) OR ([CampusContactLast] IS NULL AND @original_CampusContactLast IS NULL)) AND (([CampusContactFirst] = @original_CampusContactFirst) OR ([CampusContactFirst] IS NULL AND @original_CampusContactFirst IS NULL)) AND (([CampusSchoolId] = @original_CampusSchoolId) OR ([CampusSchoolId] IS NULL AND @original_CampusSchoolId IS NULL)) AND (([CampusEmail] = @original_CampusEmail) OR ([CampusEmail] IS NULL AND @original_CampusEmail IS NULL)) AND (([CampusEmail1] = @original_CampusEmail1) OR ([CampusEmail1] IS NULL AND @original_CampusEmail1 IS NULL))" 
                    InsertCommand="INSERT INTO [Campus] ([CampusName], [CampusAddr1], [CampusAddr2], [CampusCity], [CampusSt], [CampusZip], [CampusContactLast], [CampusContactFirst], [CampusSchoolId], [CampusEmail], [CampusEmail1]) VALUES (@CampusName, @CampusAddr1, @CampusAddr2, @CampusCity, @CampusSt, @CampusZip, @CampusContactLast, @CampusContactFirst, @CampusSchoolId, @CampusEmail, @CampusEmail1)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Campus] WHERE ([CampusSchoolId] = @CampusSchoolId)" 
                    UpdateCommand="UPDATE [Campus] SET [CampusName] = @CampusName, [CampusAddr1] = @CampusAddr1, [CampusAddr2] = @CampusAddr2, [CampusCity] = @CampusCity, [CampusSt] = @CampusSt, [CampusZip] = @CampusZip, [CampusContactLast] = @CampusContactLast, [CampusContactFirst] = @CampusContactFirst, [CampusSchoolId] = @CampusSchoolId, [CampusEmail] = @CampusEmail, [CampusEmail1] = @CampusEmail1 WHERE [CampusId] = @original_CampusId AND (([CampusName] = @original_CampusName) OR ([CampusName] IS NULL AND @original_CampusName IS NULL)) AND (([CampusAddr1] = @original_CampusAddr1) OR ([CampusAddr1] IS NULL AND @original_CampusAddr1 IS NULL)) AND (([CampusAddr2] = @original_CampusAddr2) OR ([CampusAddr2] IS NULL AND @original_CampusAddr2 IS NULL)) AND (([CampusCity] = @original_CampusCity) OR ([CampusCity] IS NULL AND @original_CampusCity IS NULL)) AND (([CampusSt] = @original_CampusSt) OR ([CampusSt] IS NULL AND @original_CampusSt IS NULL)) AND (([CampusZip] = @original_CampusZip) OR ([CampusZip] IS NULL AND @original_CampusZip IS NULL)) AND (([CampusContactLast] = @original_CampusContactLast) OR ([CampusContactLast] IS NULL AND @original_CampusContactLast IS NULL)) AND (([CampusContactFirst] = @original_CampusContactFirst) OR ([CampusContactFirst] IS NULL AND @original_CampusContactFirst IS NULL)) AND (([CampusSchoolId] = @original_CampusSchoolId) OR ([CampusSchoolId] IS NULL AND @original_CampusSchoolId IS NULL)) AND (([CampusEmail] = @original_CampusEmail) OR ([CampusEmail] IS NULL AND @original_CampusEmail IS NULL)) AND (([CampusEmail1] = @original_CampusEmail1) OR ([CampusEmail1] IS NULL AND @original_CampusEmail1 IS NULL))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CampusSchoolId" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_CampusId" Type="Int32" />
                        <asp:Parameter Name="original_CampusName" Type="String" />
                        <asp:Parameter Name="original_CampusAddr1" Type="String" />
                        <asp:Parameter Name="original_CampusAddr2" Type="String" />
                        <asp:Parameter Name="original_CampusCity" Type="String" />
                        <asp:Parameter Name="original_CampusSt" Type="String" />
                        <asp:Parameter Name="original_CampusZip" Type="String" />
                        <asp:Parameter Name="original_CampusContactLast" Type="String" />
                        <asp:Parameter Name="original_CampusContactFirst" Type="String" />
                        <asp:Parameter Name="original_CampusSchoolId" Type="Int32" />
                        <asp:Parameter Name="original_CampusEmail" Type="String" />
                        <asp:Parameter Name="original_CampusEmail1" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CampusName" Type="String" />
                        <asp:Parameter Name="CampusAddr1" Type="String" />
                        <asp:Parameter Name="CampusAddr2" Type="String" />
                        <asp:Parameter Name="CampusCity" Type="String" />
                        <asp:Parameter Name="CampusSt" Type="String" />
                        <asp:Parameter Name="CampusZip" Type="String" />
                        <asp:Parameter Name="CampusContactLast" Type="String" />
                        <asp:Parameter Name="CampusContactFirst" Type="String" />
                        <asp:Parameter Name="CampusSchoolId" Type="Int32" />
                        <asp:Parameter Name="CampusEmail" Type="String" />
                        <asp:Parameter Name="CampusEmail1" Type="String" />
                        <asp:Parameter Name="original_CampusId" Type="Int32" />
                        <asp:Parameter Name="original_CampusName" Type="String" />
                        <asp:Parameter Name="original_CampusAddr1" Type="String" />
                        <asp:Parameter Name="original_CampusAddr2" Type="String" />
                        <asp:Parameter Name="original_CampusCity" Type="String" />
                        <asp:Parameter Name="original_CampusSt" Type="String" />
                        <asp:Parameter Name="original_CampusZip" Type="String" />
                        <asp:Parameter Name="original_CampusContactLast" Type="String" />
                        <asp:Parameter Name="original_CampusContactFirst" Type="String" />
                        <asp:Parameter Name="original_CampusSchoolId" Type="Int32" />
                        <asp:Parameter Name="original_CampusEmail" Type="String" />
                        <asp:Parameter Name="original_CampusEmail1" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CampusName" Type="String" />
                        <asp:Parameter Name="CampusAddr1" Type="String" />
                        <asp:Parameter Name="CampusAddr2" Type="String" />
                        <asp:Parameter Name="CampusCity" Type="String" />
                        <asp:Parameter Name="CampusSt" Type="String" />
                        <asp:Parameter Name="CampusZip" Type="String" />
                        <asp:Parameter Name="CampusContactLast" Type="String" />
                        <asp:Parameter Name="CampusContactFirst" Type="String" />
                        <asp:Parameter Name="CampusSchoolId" Type="Int32" />
                        <asp:Parameter Name="CampusEmail" Type="String" />
                        <asp:Parameter Name="CampusEmail1" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="height: 372px">
                </td>
            <td style="height: 372px">
                <asp:FormView ID="FormView1" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataKeyNames="CampusId" DataSourceID="SqlDataSource2" DefaultMode="Insert" 
                    GridLines="Both" Height="352px" Width="638px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    
                    <InsertItemTemplate>
                        Campus Name:
                        <asp:TextBox ID="CampusNameTextBox" runat="server" 
                            Text='<%# Bind("CampusName") %>' Height="20px" Width="378px" />
                        <br />
                        <br />
                        Campus Addr1:
                        <asp:TextBox ID="CampusAddr1TextBox" runat="server" 
                            Text='<%# Bind("CampusAddr1") %>' Height="19px" Width="375px" />
                        <br />
                        <br />
                        Campus Addr2:
                        <asp:TextBox ID="CampusAddr2TextBox" runat="server" 
                            Text='<%# Bind("CampusAddr2") %>' Height="22px" Width="367px" />
                        <br />
                        <br />
                        Campus City:
                        <asp:TextBox ID="CampusCityTextBox" runat="server" 
                            Text='<%# Bind("CampusCity") %>' Height="22px" Width="296px" />
                        <br />
                        <br />
                        Campus State:
                        <asp:TextBox ID="CampusStTextBox" runat="server" 
                            Text='<%# Bind("CampusSt") %>' Height="22px" Width="308px" />
                        <br />
                        <br />
                        Campus Zip:
                        <asp:TextBox ID="CampusZipTextBox" runat="server" 
                            Text='<%# Bind("CampusZip") %>' />
                        <br />
                        <br />
                        Campus Contact Last:
                        <asp:TextBox ID="CampusContactLastTextBox" runat="server" 
                            Text='<%# Bind("CampusContactLast") %>' Height="22px" Width="254px" />
                        <br />
                        <br />
                        Campus Contact First:
                        <asp:TextBox ID="CampusContactFirstTextBox" runat="server" 
                            Text='<%# Bind("CampusContactFirst") %>' Height="22px" Width="345px" />
                        <br />
                        <br />
                        Campus School Id:
                        <asp:TextBox ID="CampusSchoolIdTextBox" runat="server"  
                            Text='<%# Bind("CampusSchoolId") %>' />
                        <br />
                        <br />
                        Campus Email:
                        <asp:TextBox ID="CampusEmailTextBox" runat="server" 
                            Text='<%# Bind("CampusEmail") %>' Height="22px" Width="276px" />
                        <br />
                        <br />
                        Campus Email1:
                        <asp:TextBox ID="CampusEmail1TextBox" runat="server" 
                            Text='<%# Bind("CampusEmail1") %>' Height="22px" Width="272px" />
                        <br />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Campus Id:
                        <asp:Label ID="CampusIdLabel" runat="server" Text='<%# Eval("CampusId") %>' />
                        <br />
                        Campus Name:
                        <asp:Label ID="CampusNameLabel" runat="server" 
                            Text='<%# Bind("CampusName") %>' />
                        <br />
                        Campus Addr1:
                        <asp:Label ID="CampusAddr1Label" runat="server" 
                            Text='<%# Bind("CampusAddr1") %>' />
                        <br />
                        Campus Addr2:
                        <asp:Label ID="CampusAddr2Label" runat="server" 
                            Text='<%# Bind("CampusAddr2") %>' />
                        <br />
                        Campus City:
                        <asp:Label ID="CampusCityLabel" runat="server" 
                            Text='<%# Bind("CampusCity") %>' />
                        <br />
                        Campus St:
                        <asp:Label ID="CampusStLabel" runat="server" Text='<%# Bind("CampusSt") %>' />
                        <br />
                        Campus Zip:
                        <asp:Label ID="CampusZipLabel" runat="server" Text='<%# Bind("CampusZip") %>' />
                        <br />
                        Campus Contact Last:
                        <asp:Label ID="CampusContactLastLabel" runat="server" 
                            Text='<%# Bind("CampusContactLast") %>' />
                        <br />
                        Campus Contact First:
                        <asp:Label ID="CampusContactFirstLabel" runat="server" 
                            Text='<%# Bind("CampusContactFirst") %>' />
                        <br />
                        Campus School Id:
                        <asp:Label ID="CampusSchoolIdLabel" runat="server" 
                            Text='<%# Bind("CampusSchoolId") %>' />
                        <br />
                        Campus Email:
                        <asp:Label ID="CampusEmailLabel" runat="server" 
                            Text='<%# Bind("CampusEmail") %>' />
                        <br />
                        Campus Email1:
                        <asp:Label ID="CampusEmail1Label" runat="server" 
                            Text='<%# Bind("CampusEmail1") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Campus] WHERE [CampusId] = @original_CampusId AND (([CampusName] = @original_CampusName) OR ([CampusName] IS NULL AND @original_CampusName IS NULL)) AND (([CampusAddr1] = @original_CampusAddr1) OR ([CampusAddr1] IS NULL AND @original_CampusAddr1 IS NULL)) AND (([CampusAddr2] = @original_CampusAddr2) OR ([CampusAddr2] IS NULL AND @original_CampusAddr2 IS NULL)) AND (([CampusCity] = @original_CampusCity) OR ([CampusCity] IS NULL AND @original_CampusCity IS NULL)) AND (([CampusSt] = @original_CampusSt) OR ([CampusSt] IS NULL AND @original_CampusSt IS NULL)) AND (([CampusZip] = @original_CampusZip) OR ([CampusZip] IS NULL AND @original_CampusZip IS NULL)) AND (([CampusContactLast] = @original_CampusContactLast) OR ([CampusContactLast] IS NULL AND @original_CampusContactLast IS NULL)) AND (([CampusContactFirst] = @original_CampusContactFirst) OR ([CampusContactFirst] IS NULL AND @original_CampusContactFirst IS NULL)) AND (([CampusSchoolId] = @original_CampusSchoolId) OR ([CampusSchoolId] IS NULL AND @original_CampusSchoolId IS NULL)) AND (([CampusEmail] = @original_CampusEmail) OR ([CampusEmail] IS NULL AND @original_CampusEmail IS NULL)) AND (([CampusEmail1] = @original_CampusEmail1) OR ([CampusEmail1] IS NULL AND @original_CampusEmail1 IS NULL))" 
                    InsertCommand="INSERT INTO [Campus] ([CampusName], [CampusAddr1], [CampusAddr2], [CampusCity], [CampusSt], [CampusZip], [CampusContactLast], [CampusContactFirst], [CampusSchoolId], [CampusEmail], [CampusEmail1]) VALUES (@CampusName, @CampusAddr1, @CampusAddr2, @CampusCity, @CampusSt, @CampusZip, @CampusContactLast, @CampusContactFirst, @CampusSchoolId, @CampusEmail, @CampusEmail1)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Campus]" 
                    UpdateCommand="UPDATE [Campus] SET [CampusName] = @CampusName, [CampusAddr1] = @CampusAddr1, [CampusAddr2] = @CampusAddr2, [CampusCity] = @CampusCity, [CampusSt] = @CampusSt, [CampusZip] = @CampusZip, [CampusContactLast] = @CampusContactLast, [CampusContactFirst] = @CampusContactFirst, [CampusSchoolId] = @CampusSchoolId, [CampusEmail] = @CampusEmail, [CampusEmail1] = @CampusEmail1 WHERE [CampusId] = @original_CampusId AND (([CampusName] = @original_CampusName) OR ([CampusName] IS NULL AND @original_CampusName IS NULL)) AND (([CampusAddr1] = @original_CampusAddr1) OR ([CampusAddr1] IS NULL AND @original_CampusAddr1 IS NULL)) AND (([CampusAddr2] = @original_CampusAddr2) OR ([CampusAddr2] IS NULL AND @original_CampusAddr2 IS NULL)) AND (([CampusCity] = @original_CampusCity) OR ([CampusCity] IS NULL AND @original_CampusCity IS NULL)) AND (([CampusSt] = @original_CampusSt) OR ([CampusSt] IS NULL AND @original_CampusSt IS NULL)) AND (([CampusZip] = @original_CampusZip) OR ([CampusZip] IS NULL AND @original_CampusZip IS NULL)) AND (([CampusContactLast] = @original_CampusContactLast) OR ([CampusContactLast] IS NULL AND @original_CampusContactLast IS NULL)) AND (([CampusContactFirst] = @original_CampusContactFirst) OR ([CampusContactFirst] IS NULL AND @original_CampusContactFirst IS NULL)) AND (([CampusSchoolId] = @original_CampusSchoolId) OR ([CampusSchoolId] IS NULL AND @original_CampusSchoolId IS NULL)) AND (([CampusEmail] = @original_CampusEmail) OR ([CampusEmail] IS NULL AND @original_CampusEmail IS NULL)) AND (([CampusEmail1] = @original_CampusEmail1) OR ([CampusEmail1] IS NULL AND @original_CampusEmail1 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CampusId" Type="Int32" />
                        <asp:Parameter Name="original_CampusName" Type="String" />
                        <asp:Parameter Name="original_CampusAddr1" Type="String" />
                        <asp:Parameter Name="original_CampusAddr2" Type="String" />
                        <asp:Parameter Name="original_CampusCity" Type="String" />
                        <asp:Parameter Name="original_CampusSt" Type="String" />
                        <asp:Parameter Name="original_CampusZip" Type="String" />
                        <asp:Parameter Name="original_CampusContactLast" Type="String" />
                        <asp:Parameter Name="original_CampusContactFirst" Type="String" />
                        <asp:Parameter Name="original_CampusSchoolId" Type="Int32" />
                        <asp:Parameter Name="original_CampusEmail" Type="String" />
                        <asp:Parameter Name="original_CampusEmail1" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CampusName" Type="String" />
                        <asp:Parameter Name="CampusAddr1" Type="String" />
                        <asp:Parameter Name="CampusAddr2" Type="String" />
                        <asp:Parameter Name="CampusCity" Type="String" />
                        <asp:Parameter Name="CampusSt" Type="String" />
                        <asp:Parameter Name="CampusZip" Type="String" />
                        <asp:Parameter Name="CampusContactLast" Type="String" />
                        <asp:Parameter Name="CampusContactFirst" Type="String" />
                        <asp:Parameter Name="CampusSchoolId" Type="Int32" />
                        <asp:Parameter Name="CampusEmail" Type="String" />
                        <asp:Parameter Name="CampusEmail1" Type="String" />
                        <asp:Parameter Name="original_CampusId" Type="Int32" />
                        <asp:Parameter Name="original_CampusName" Type="String" />
                        <asp:Parameter Name="original_CampusAddr1" Type="String" />
                        <asp:Parameter Name="original_CampusAddr2" Type="String" />
                        <asp:Parameter Name="original_CampusCity" Type="String" />
                        <asp:Parameter Name="original_CampusSt" Type="String" />
                        <asp:Parameter Name="original_CampusZip" Type="String" />
                        <asp:Parameter Name="original_CampusContactLast" Type="String" />
                        <asp:Parameter Name="original_CampusContactFirst" Type="String" />
                        <asp:Parameter Name="original_CampusSchoolId" Type="Int32" />
                        <asp:Parameter Name="original_CampusEmail" Type="String" />
                        <asp:Parameter Name="original_CampusEmail1" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CampusName" Type="String" />
                        <asp:Parameter Name="CampusAddr1" Type="String" />
                        <asp:Parameter Name="CampusAddr2" Type="String" />
                        <asp:Parameter Name="CampusCity" Type="String" />
                        <asp:Parameter Name="CampusSt" Type="String" />
                        <asp:Parameter Name="CampusZip" Type="String" />
                        <asp:Parameter Name="CampusContactLast" Type="String" />
                        <asp:Parameter Name="CampusContactFirst" Type="String" />
                        <asp:Parameter Name="CampusSchoolId" Type="Int32" />
                        <asp:Parameter Name="CampusEmail" Type="String" />
                        <asp:Parameter Name="CampusEmail1" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
            </td>
        </tr>
        </table>

</asp:Content>

