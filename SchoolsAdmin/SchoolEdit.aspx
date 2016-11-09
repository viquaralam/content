<%@ Page Title="" Language="VB" MasterPageFile="~/SchoolsAdmin/School.master" AutoEventWireup="false" CodeFile="SchoolEdit.aspx.vb" Inherits="SchoolsAdmin_SchoolEdit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style1" style="width: 80px">
                &nbsp;</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12pt; font-weight: bold">
                School Editor</td>
        </tr>
        <tr>
            <td class="style6" style="height: 54px; width: 80px;">
            </td>
            <td align="left" class="style4" valign="top" headers="New School" 
                style="height: 54px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Schools] WHERE [SchoolId] = @original_SchoolId AND (([SchoolName] = @original_SchoolName) OR ([SchoolName] IS NULL AND @original_SchoolName IS NULL)) AND (([SchoolAddr1] = @original_SchoolAddr1) OR ([SchoolAddr1] IS NULL AND @original_SchoolAddr1 IS NULL)) AND (([SchoolAddr2] = @original_SchoolAddr2) OR ([SchoolAddr2] IS NULL AND @original_SchoolAddr2 IS NULL)) AND (([SchoolCity] = @original_SchoolCity) OR ([SchoolCity] IS NULL AND @original_SchoolCity IS NULL)) AND (([SchoolState] = @original_SchoolState) OR ([SchoolState] IS NULL AND @original_SchoolState IS NULL)) AND (([SchoolZip] = @original_SchoolZip) OR ([SchoolZip] IS NULL AND @original_SchoolZip IS NULL)) AND (([SchoolPhone] = @original_SchoolPhone) OR ([SchoolPhone] IS NULL AND @original_SchoolPhone IS NULL)) AND (([SchoolContactLast] = @original_SchoolContactLast) OR ([SchoolContactLast] IS NULL AND @original_SchoolContactLast IS NULL)) AND (([SchoolContactFirst] = @original_SchoolContactFirst) OR ([SchoolContactFirst] IS NULL AND @original_SchoolContactFirst IS NULL)) AND (([SchoolAdministrator] = @original_SchoolAdministrator) OR ([SchoolAdministrator] IS NULL AND @original_SchoolAdministrator IS NULL)) AND (([SchoolPhone1] = @original_SchoolPhone1) OR ([SchoolPhone1] IS NULL AND @original_SchoolPhone1 IS NULL)) AND (([SchoolEmail] = @original_SchoolEmail) OR ([SchoolEmail] IS NULL AND @original_SchoolEmail IS NULL)) AND (([SchoolEmail2] = @original_SchoolEmail2) OR ([SchoolEmail2] IS NULL AND @original_SchoolEmail2 IS NULL))" 
                    InsertCommand="INSERT INTO [Schools] ([SchoolName], [SchoolAddr1], [SchoolAddr2], [SchoolCity], [SchoolState], [SchoolZip], [SchoolPhone], [SchoolContactLast], [SchoolContactFirst], [SchoolAdministrator], [SchoolPhone1], [SchoolEmail], [SchoolEmail2]) VALUES (@SchoolName, @SchoolAddr1, @SchoolAddr2, @SchoolCity, @SchoolState, @SchoolZip, @SchoolPhone, @SchoolContactLast, @SchoolContactFirst, @SchoolAdministrator, @SchoolPhone1, @SchoolEmail, @SchoolEmail2)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Schools]" 
                    
                    
                    
                    UpdateCommand="UPDATE [Schools] SET [SchoolName] = @SchoolName, [SchoolAddr1] = @SchoolAddr1, [SchoolAddr2] = @SchoolAddr2, [SchoolCity] = @SchoolCity, [SchoolState] = @SchoolState, [SchoolZip] = @SchoolZip, [SchoolPhone] = @SchoolPhone, [SchoolContactLast] = @SchoolContactLast, [SchoolContactFirst] = @SchoolContactFirst, [SchoolAdministrator] = @SchoolAdministrator, [SchoolPhone1] = @SchoolPhone1, [SchoolEmail] = @SchoolEmail, [SchoolEmail2] = @SchoolEmail2 WHERE [SchoolId] = @original_SchoolId AND (([SchoolName] = @original_SchoolName) OR ([SchoolName] IS NULL AND @original_SchoolName IS NULL)) AND (([SchoolAddr1] = @original_SchoolAddr1) OR ([SchoolAddr1] IS NULL AND @original_SchoolAddr1 IS NULL)) AND (([SchoolAddr2] = @original_SchoolAddr2) OR ([SchoolAddr2] IS NULL AND @original_SchoolAddr2 IS NULL)) AND (([SchoolCity] = @original_SchoolCity) OR ([SchoolCity] IS NULL AND @original_SchoolCity IS NULL)) AND (([SchoolState] = @original_SchoolState) OR ([SchoolState] IS NULL AND @original_SchoolState IS NULL)) AND (([SchoolZip] = @original_SchoolZip) OR ([SchoolZip] IS NULL AND @original_SchoolZip IS NULL)) AND (([SchoolPhone] = @original_SchoolPhone) OR ([SchoolPhone] IS NULL AND @original_SchoolPhone IS NULL)) AND (([SchoolContactLast] = @original_SchoolContactLast) OR ([SchoolContactLast] IS NULL AND @original_SchoolContactLast IS NULL)) AND (([SchoolContactFirst] = @original_SchoolContactFirst) OR ([SchoolContactFirst] IS NULL AND @original_SchoolContactFirst IS NULL)) AND (([SchoolAdministrator] = @original_SchoolAdministrator) OR ([SchoolAdministrator] IS NULL AND @original_SchoolAdministrator IS NULL)) AND (([SchoolPhone1] = @original_SchoolPhone1) OR ([SchoolPhone1] IS NULL AND @original_SchoolPhone1 IS NULL)) AND (([SchoolEmail] = @original_SchoolEmail) OR ([SchoolEmail] IS NULL AND @original_SchoolEmail IS NULL)) AND (([SchoolEmail2] = @original_SchoolEmail2) OR ([SchoolEmail2] IS NULL AND @original_SchoolEmail2 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_SchoolId" Type="Int32" />
                        <asp:Parameter Name="original_SchoolName" Type="String" />
                        <asp:Parameter Name="original_SchoolAddr1" Type="String" />
                        <asp:Parameter Name="original_SchoolAddr2" Type="String" />
                        <asp:Parameter Name="original_SchoolCity" Type="String" />
                        <asp:Parameter Name="original_SchoolState" Type="String" />
                        <asp:Parameter Name="original_SchoolZip" Type="String" />
                        <asp:Parameter Name="original_SchoolPhone" Type="String" />
                        <asp:Parameter Name="original_SchoolContactLast" Type="String" />
                        <asp:Parameter Name="original_SchoolContactFirst" Type="String" />
                        <asp:Parameter Name="original_SchoolAdministrator" Type="String" />
                        <asp:Parameter Name="original_SchoolPhone1" Type="String" />
                        <asp:Parameter Name="original_SchoolEmail" Type="String" />
                        <asp:Parameter Name="original_SchoolEmail2" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SchoolName" Type="String" />
                        <asp:Parameter Name="SchoolAddr1" Type="String" />
                        <asp:Parameter Name="SchoolAddr2" Type="String" />
                        <asp:Parameter Name="SchoolCity" Type="String" />
                        <asp:Parameter Name="SchoolState" Type="String" />
                        <asp:Parameter Name="SchoolZip" Type="String" />
                        <asp:Parameter Name="SchoolPhone" Type="String" />
                        <asp:Parameter Name="SchoolContactLast" Type="String" />
                        <asp:Parameter Name="SchoolContactFirst" Type="String" />
                        <asp:Parameter Name="SchoolAdministrator" Type="String" />
                        <asp:Parameter Name="SchoolPhone1" Type="String" />
                        <asp:Parameter Name="SchoolEmail" Type="String" />
                        <asp:Parameter Name="SchoolEmail2" Type="String" />
                        <asp:Parameter Name="original_SchoolId" Type="Int32" />
                        <asp:Parameter Name="original_SchoolName" Type="String" />
                        <asp:Parameter Name="original_SchoolAddr1" Type="String" />
                        <asp:Parameter Name="original_SchoolAddr2" Type="String" />
                        <asp:Parameter Name="original_SchoolCity" Type="String" />
                        <asp:Parameter Name="original_SchoolState" Type="String" />
                        <asp:Parameter Name="original_SchoolZip" Type="String" />
                        <asp:Parameter Name="original_SchoolPhone" Type="String" />
                        <asp:Parameter Name="original_SchoolContactLast" Type="String" />
                        <asp:Parameter Name="original_SchoolContactFirst" Type="String" />
                        <asp:Parameter Name="original_SchoolAdministrator" Type="String" />
                        <asp:Parameter Name="original_SchoolPhone1" Type="String" />
                        <asp:Parameter Name="original_SchoolEmail" Type="String" />
                        <asp:Parameter Name="original_SchoolEmail2" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SchoolName" Type="String" />
                        <asp:Parameter Name="SchoolAddr1" Type="String" />
                        <asp:Parameter Name="SchoolAddr2" Type="String" />
                        <asp:Parameter Name="SchoolCity" Type="String" />
                        <asp:Parameter Name="SchoolState" Type="String" />
                        <asp:Parameter Name="SchoolZip" Type="String" />
                        <asp:Parameter Name="SchoolPhone" Type="String" />
                        <asp:Parameter Name="SchoolContactLast" Type="String" />
                        <asp:Parameter Name="SchoolContactFirst" Type="String" />
                        <asp:Parameter Name="SchoolAdministrator" Type="String" />
                        <asp:Parameter Name="SchoolPhone1" Type="String" />
                        <asp:Parameter Name="SchoolEmail" Type="String" />
                        <asp:Parameter Name="SchoolEmail2" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    DataKeyNames="SchoolId" DataSourceID="SqlDataSource1" GridLines="Vertical" 
                    UseAccessibleHeader="False">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:BoundField DataField="SchoolId" HeaderText="SchoolId" ReadOnly="True" 
                            SortExpression="SchoolId" />
                        <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" 
                            SortExpression="SchoolName" />
                        <asp:BoundField DataField="SchoolAddr1" HeaderText="SchoolAddr1" 
                            SortExpression="SchoolAddr1" />
                        <asp:BoundField DataField="SchoolAddr2" HeaderText="SchoolAddr2" 
                            SortExpression="SchoolAddr2" />
                        <asp:BoundField DataField="SchoolCity" HeaderText="SchoolCity" 
                            SortExpression="SchoolCity" />
                        <asp:BoundField DataField="SchoolState" HeaderText="SchoolState" 
                            SortExpression="SchoolState" />
                        <asp:BoundField DataField="SchoolZip" HeaderText="SchoolZip" 
                            SortExpression="SchoolZip" />
                        <asp:BoundField DataField="SchoolPhone" HeaderText="SchoolPhone" 
                            SortExpression="SchoolPhone" />
                        <asp:BoundField DataField="SchoolContactLast" HeaderText="SchoolContactLast" 
                            SortExpression="SchoolContactLast" />
                        <asp:BoundField DataField="SchoolContactFirst" HeaderText="SchoolContactFirst" 
                            SortExpression="SchoolContactFirst" />
                        <asp:BoundField DataField="SchoolAdministrator" 
                            HeaderText="SchoolAdministrator" SortExpression="SchoolAdministrator" />
                        <asp:BoundField DataField="SchoolPhone1" HeaderText="SchoolPhone1" 
                            SortExpression="SchoolPhone1" />
                        <asp:BoundField DataField="SchoolEmail" HeaderText="SchoolEmail" 
                            SortExpression="SchoolEmail" />
                        <asp:BoundField DataField="SchoolEmail2" HeaderText="SchoolEmail2" 
                            SortExpression="SchoolEmail2" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style1" style="width: 80px">
                &nbsp;</td>
            <td>
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" 
                    DataKeyNames="SchoolId" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    Width="821px" DefaultMode="Insert" GridLines="Horizontal" Height="438px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditItemTemplate>
                        SchoolId:
                        <asp:Label ID="SchoolIdLabel1" runat="server" Text='<%# Eval("SchoolId") %>' />
                        <br />  SchoolName:
                        <asp:TextBox ID="SchoolNameTextBox" runat="server" 
                            Text='<%# Bind("SchoolName") %>' />
                        <br />SchoolAddr1:
                        <asp:TextBox ID="SchoolAddr1TextBox" runat="server" 
                            Text='<%# Bind("SchoolAddr1") %>' />
                        <br />SchoolAddr2:
                        <asp:TextBox ID="SchoolAddr2TextBox" runat="server" 
                            Text='<%# Bind("SchoolAddr2") %>' />
                        <br />
                        SchoolCity:
                        <asp:TextBox ID="SchoolCityTextBox" runat="server" 
                            Text='<%# Bind("SchoolCity") %>' />
                        <br />SchoolState:
                        <asp:TextBox ID="SchoolStateTextBox" runat="server" 
                            Text='<%# Bind("SchoolState") %>' />
                        <br />
                        SchoolZip:
                        <asp:TextBox ID="SchoolZipTextBox" runat="server" 
                            Text='<%# Bind("SchoolZip") %>' />
                        <br />SchoolPhone:
                        <asp:TextBox ID="SchoolPhoneTextBox" runat="server" 
                            Text='<%# Bind("SchoolPhone") %>' />
                        <br />SchoolContactLast:
                        <asp:TextBox ID="SchoolContactLastTextBox" runat="server" 
                            Text='<%# Bind("SchoolContactLast") %>' />
                        <br />
                        SchoolContactFirst:
                        <asp:TextBox ID="SchoolContactFirstTextBox" runat="server" 
                            Text='<%# Bind("SchoolContactFirst") %>' />
                        <br />SchoolAdministrator:
                        <asp:TextBox ID="SchoolAdministratorTextBox" runat="server" 
                            Text='<%# Bind("SchoolAdministrator") %>' />
                        <br />
                        SchoolPhone1:
                        <asp:TextBox ID="SchoolPhone1TextBox" runat="server" 
                            Text='<%# Bind("SchoolPhone1") %>' />
                        <br />SchoolEmail:
                        <asp:TextBox ID="SchoolEmailTextBox" runat="server" 
                            Text='<%# Bind("SchoolEmail") %>' />
                        <br />
                        SchoolEmail2:
                        <asp:TextBox ID="SchoolEmail2TextBox" runat="server" 
                            Text='<%# Bind("SchoolEmail2") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        SchoolId:
                        <asp:TextBox ID="SchoolIdTextBox" runat="server" 
                            Text='<%# Bind("SchoolId") %>' />
                        <br />
                        SchoolName:
                        <asp:TextBox ID="SchoolNameTextBox" runat="server" 
                            Text='<%# Bind("SchoolName") %>' />
                        <br />
                        SchoolAddr1:
                        <asp:TextBox ID="SchoolAddr1TextBox" runat="server" 
                            Text='<%# Bind("SchoolAddr1") %>' />
                        <br />SchoolAddr2:
                        <asp:TextBox ID="SchoolAddr2TextBox" runat="server" 
                            Text='<%# Bind("SchoolAddr2") %>' />
                        <br />
                        SchoolCity:
                        <asp:TextBox ID="SchoolCityTextBox" runat="server" 
                            Text='<%# Bind("SchoolCity") %>' />
                        <br />SchoolState:
                        <asp:TextBox ID="SchoolStateTextBox" runat="server" 
                            Text='<%# Bind("SchoolState") %>' />
                        <br />
                        SchoolZip:
                        <asp:TextBox ID="SchoolZipTextBox" runat="server" 
                            Text='<%# Bind("SchoolZip") %>' />
                        <br />SchoolPhone:
                        <asp:TextBox ID="SchoolPhoneTextBox" runat="server" 
                            Text='<%# Bind("SchoolPhone") %>' />
                        <br />
                        SchoolContactLast:
                        <asp:TextBox ID="SchoolContactLastTextBox" runat="server" 
                            Text='<%# Bind("SchoolContactLast") %>' />
                        <br />SchoolContactFirst:
                        <asp:TextBox ID="SchoolContactFirstTextBox" runat="server" 
                            Text='<%# Bind("SchoolContactFirst") %>' />
                        <br />
                        SchoolAdministrator:
                        <asp:TextBox ID="SchoolAdministratorTextBox" runat="server"
                            Text='<%# Bind("SchoolAdministrator") %>' />
                        <br />SchoolPhone1:
                        <asp:TextBox ID="SchoolPhone1TextBox" runat="server" 
                            Text='<%# Bind("SchoolPhone1") %>' />
                        <br />
                        SchoolEmail:
                        <asp:TextBox ID="SchoolEmailTextBox" runat="server" 
                            Text='<%# Bind("SchoolEmail") %>' />
                        <br />SchoolEmail2:
                        <asp:TextBox ID="SchoolEmail2TextBox" runat="server" 
                            Text='<%# Bind("SchoolEmail2") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        SchoolId:
                        <asp:Label ID="SchoolIdLabel" runat="server" Text='<%# Eval("SchoolId") %>' />
                        <br />
                        SchoolName:
                        <asp:Label ID="SchoolNameLabel" runat="server" 
                            Text='<%# Bind("SchoolName") %>' />
                        <br />
                        SchoolAddr1:
                        <asp:Label ID="SchoolAddr1Label" runat="server" 
                            Text='<%# Bind("SchoolAddr1") %>' />
                        <br />
                        SchoolAddr2:
                        <asp:Label ID="SchoolAddr2Label" runat="server" 
                            Text='<%# Bind("SchoolAddr2") %>' />
                        <br />
                        SchoolCity:
                        <asp:Label ID="SchoolCityLabel" runat="server" 
                            Text='<%# Bind("SchoolCity") %>' />
                        <br />
                        SchoolState:
                        <asp:Label ID="SchoolStateLabel" runat="server" 
                            Text='<%# Bind("SchoolState") %>' />
                        <br />
                        SchoolZip:
                        <asp:Label ID="SchoolZipLabel" runat="server" Text='<%# Bind("SchoolZip") %>' />
                        <br />
                        SchoolPhone:
                        <asp:Label ID="SchoolPhoneLabel" runat="server" 
                            Text='<%# Bind("SchoolPhone") %>' />
                        <br />
                        SchoolContactLast:
                        <asp:Label ID="SchoolContactLastLabel" runat="server" 
                            Text='<%# Bind("SchoolContactLast") %>' />
                        <br />
                        SchoolContactFirst:
                        <asp:Label ID="SchoolContactFirstLabel" runat="server" 
                            Text='<%# Bind("SchoolContactFirst") %>' />
                        <br />
                        SchoolAdministrator:
                        <asp:Label ID="SchoolAdministratorLabel" runat="server" 
                            Text='<%# Bind("SchoolAdministrator") %>' />
                        <br />
                        SchoolPhone1:
                        <asp:Label ID="SchoolPhone1Label" runat="server" 
                            Text='<%# Bind("SchoolPhone1") %>' />
                        <br />
                        SchoolEmail:
                        <asp:Label ID="SchoolEmailLabel" runat="server" 
                            Text='<%# Bind("SchoolEmail") %>' />
                        <br />
                        SchoolEmail2:
                        <asp:Label ID="SchoolEmail2Label" runat="server" 
                            Text='<%# Bind("SchoolEmail2") %>' />
                        <br />
                        
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                </asp:FormView>
            </td>
        </tr>
    </table>
</asp:Content>

