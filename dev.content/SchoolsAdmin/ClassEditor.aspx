<%@ Page Title="" Language="VB" MasterPageFile="~/SchoolsAdmin/School.master" AutoEventWireup="false" CodeFile="ClassEditor.aspx.vb" Inherits="SchoolsAdmin_ClassEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="CampusName" 
                    DataValueField="CampusId" Height="22px" Width="500px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Campus] WHERE [CampusId] = @original_CampusId AND (([CampusName] = @original_CampusName) OR ([CampusName] IS NULL AND @original_CampusName IS NULL))" 
                    InsertCommand="INSERT INTO [Campus] ([CampusName]) VALUES (@CampusName)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [CampusId], [CampusName] FROM [Campus] ORDER BY [CampusId]" 
                    UpdateCommand="UPDATE [Campus] SET [CampusName] = @CampusName WHERE [CampusId] = @original_CampusId AND (([CampusName] = @original_CampusName) OR ([CampusName] IS NULL AND @original_CampusName IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CampusId" Type="Int32" />
                        <asp:Parameter Name="original_CampusName" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CampusName" Type="String" />
                        <asp:Parameter Name="original_CampusId" Type="Int32" />
                        <asp:Parameter Name="original_CampusName" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CampusName" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="height: 398px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Class] WHERE [ClassId] = @original_ClassId AND [ClassSchool] = @original_ClassSchool AND [ClassCampusId] = @original_ClassCampusId AND (([ClassBldg] = @original_ClassBldg) OR ([ClassBldg] IS NULL AND @original_ClassBldg IS NULL)) AND (([ClassRoom] = @original_ClassRoom) OR ([ClassRoom] IS NULL AND @original_ClassRoom IS NULL)) AND (([ClassTeacher] = @original_ClassTeacher) OR ([ClassTeacher] IS NULL AND @original_ClassTeacher IS NULL)) AND (([ClassStartDate] = @original_ClassStartDate) OR ([ClassStartDate] IS NULL AND @original_ClassStartDate IS NULL)) AND (([ClassEndDate] = @original_ClassEndDate) OR ([ClassEndDate] IS NULL AND @original_ClassEndDate IS NULL)) AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL)) AND (([ClassPhone] = @original_ClassPhone) OR ([ClassPhone] IS NULL AND @original_ClassPhone IS NULL)) AND (([ClassPhone1] = @original_ClassPhone1) OR ([ClassPhone1] IS NULL AND @original_ClassPhone1 IS NULL)) AND (([ClassEmail] = @original_ClassEmail) OR ([ClassEmail] IS NULL AND @original_ClassEmail IS NULL)) AND (([ClassEmail1] = @original_ClassEmail1) OR ([ClassEmail1] IS NULL AND @original_ClassEmail1 IS NULL))" 
                    InsertCommand="INSERT INTO [Class] ([ClassSchool], [ClassCampusId], [ClassBldg], [ClassRoom], [ClassTeacher], [ClassStartDate], [ClassEndDate], [ClassName], [ClassPhone], [ClassPhone1], [ClassEmail], [ClassEmail1]) VALUES (@ClassSchool, @ClassCampusId, @ClassBldg, @ClassRoom, @ClassTeacher, @ClassStartDate, @ClassEndDate, @ClassName, @ClassPhone, @ClassPhone1, @ClassEmail, @ClassEmail1)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Class] WHERE ([ClassCampusId] = @ClassCampusId)" 
                    
                    UpdateCommand="UPDATE [Class] SET [ClassSchool] = @ClassSchool, [ClassCampusId] = @ClassCampusId, [ClassBldg] = @ClassBldg, [ClassRoom] = @ClassRoom, [ClassTeacher] = @ClassTeacher, [ClassStartDate] = @ClassStartDate, [ClassEndDate] = @ClassEndDate, [ClassName] = @ClassName, [ClassPhone] = @ClassPhone, [ClassPhone1] = @ClassPhone1, [ClassEmail] = @ClassEmail, [ClassEmail1] = @ClassEmail1 WHERE [ClassId] = @original_ClassId AND [ClassSchool] = @original_ClassSchool AND [ClassCampusId] = @original_ClassCampusId AND (([ClassBldg] = @original_ClassBldg) OR ([ClassBldg] IS NULL AND @original_ClassBldg IS NULL)) AND (([ClassRoom] = @original_ClassRoom) OR ([ClassRoom] IS NULL AND @original_ClassRoom IS NULL)) AND (([ClassTeacher] = @original_ClassTeacher) OR ([ClassTeacher] IS NULL AND @original_ClassTeacher IS NULL)) AND (([ClassStartDate] = @original_ClassStartDate) OR ([ClassStartDate] IS NULL AND @original_ClassStartDate IS NULL)) AND (([ClassEndDate] = @original_ClassEndDate) OR ([ClassEndDate] IS NULL AND @original_ClassEndDate IS NULL)) AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL)) AND (([ClassPhone] = @original_ClassPhone) OR ([ClassPhone] IS NULL AND @original_ClassPhone IS NULL)) AND (([ClassPhone1] = @original_ClassPhone1) OR ([ClassPhone1] IS NULL AND @original_ClassPhone1 IS NULL)) AND (([ClassEmail] = @original_ClassEmail) OR ([ClassEmail] IS NULL AND @original_ClassEmail IS NULL)) AND (([ClassEmail1] = @original_ClassEmail1) OR ([ClassEmail1] IS NULL AND @original_ClassEmail1 IS NULL))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="ClassCampusId" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_ClassId" Type="Int32" />
                        <asp:Parameter Name="original_ClassSchool" Type="Int32" />
                        <asp:Parameter Name="original_ClassCampusId" Type="Int32" />
                        <asp:Parameter Name="original_ClassBldg" Type="String" />
                        <asp:Parameter Name="original_ClassRoom" Type="String" />
                        <asp:Parameter Name="original_ClassTeacher" Type="String" />
                        <asp:Parameter Name="original_ClassStartDate" Type="DateTime" />
                        <asp:Parameter Name="original_ClassEndDate" Type="DateTime" />
                        <asp:Parameter Name="original_ClassName" Type="String" />
                        <asp:Parameter Name="original_ClassPhone" Type="String" />
                        <asp:Parameter Name="original_ClassPhone1" Type="String" />
                        <asp:Parameter Name="original_ClassEmail" Type="String" />
                        <asp:Parameter Name="original_ClassEmail1" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ClassSchool" Type="Int32" />
                        <asp:Parameter Name="ClassCampusId" Type="Int32" />
                        <asp:Parameter Name="ClassBldg" Type="String" />
                        <asp:Parameter Name="ClassRoom" Type="String" />
                        <asp:Parameter Name="ClassTeacher" Type="String" />
                        <asp:Parameter Name="ClassStartDate" Type="DateTime" />
                        <asp:Parameter Name="ClassEndDate" Type="DateTime" />
                        <asp:Parameter Name="ClassName" Type="String" />
                        <asp:Parameter Name="ClassPhone" Type="String" />
                        <asp:Parameter Name="ClassPhone1" Type="String" />
                        <asp:Parameter Name="ClassEmail" Type="String" />
                        <asp:Parameter Name="ClassEmail1" Type="String" />
                        <asp:Parameter Name="original_ClassId" Type="Int32" />
                        <asp:Parameter Name="original_ClassSchool" Type="Int32" />
                        <asp:Parameter Name="original_ClassCampusId" Type="Int32" />
                        <asp:Parameter Name="original_ClassBldg" Type="String" />
                        <asp:Parameter Name="original_ClassRoom" Type="String" />
                        <asp:Parameter Name="original_ClassTeacher" Type="String" />
                        <asp:Parameter Name="original_ClassStartDate" Type="DateTime" />
                        <asp:Parameter Name="original_ClassEndDate" Type="DateTime" />
                        <asp:Parameter Name="original_ClassName" Type="String" />
                        <asp:Parameter Name="original_ClassPhone" Type="String" />
                        <asp:Parameter Name="original_ClassPhone1" Type="String" />
                        <asp:Parameter Name="original_ClassEmail" Type="String" />
                        <asp:Parameter Name="original_ClassEmail1" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ClassSchool" Type="Int32" />
                        <asp:Parameter Name="ClassCampusId" Type="Int32" />
                        <asp:Parameter Name="ClassBldg" Type="String" />
                        <asp:Parameter Name="ClassRoom" Type="String" />
                        <asp:Parameter Name="ClassTeacher" Type="String" />
                        <asp:Parameter Name="ClassStartDate" Type="DateTime" />
                        <asp:Parameter Name="ClassEndDate" Type="DateTime" />
                        <asp:Parameter Name="ClassName" Type="String" />
                        <asp:Parameter Name="ClassPhone" Type="String" />
                        <asp:Parameter Name="ClassPhone1" Type="String" />
                        <asp:Parameter Name="ClassEmail" Type="String" />
                        <asp:Parameter Name="ClassEmail1" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="ClassId" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" UseAccessibleHeader="False">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ClassId" HeaderText="ClassId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ClassId" />
                        <asp:BoundField DataField="ClassSchool" HeaderText="ClassSchool" 
                            SortExpression="ClassSchool" />
                        <asp:BoundField DataField="ClassCampusId" HeaderText="ClassCampusId" 
                            SortExpression="ClassCampusId" />
                        <asp:BoundField DataField="ClassBldg" HeaderText="ClassBldg" 
                            SortExpression="ClassBldg" />
                        <asp:BoundField DataField="ClassRoom" HeaderText="ClassRoom" 
                            SortExpression="ClassRoom" />
                        <asp:BoundField DataField="ClassTeacher" HeaderText="ClassTeacher" 
                            SortExpression="ClassTeacher" />
                        <asp:BoundField DataField="ClassStartDate" HeaderText="ClassStartDate" 
                            SortExpression="ClassStartDate" />
                        <asp:BoundField DataField="ClassEndDate" HeaderText="ClassEndDate" 
                            SortExpression="ClassEndDate" />
                        <asp:BoundField DataField="ClassName" HeaderText="ClassName" 
                            SortExpression="ClassName" />
                        <asp:BoundField DataField="ClassPhone" HeaderText="ClassPhone" 
                            SortExpression="ClassPhone" />
                        <asp:BoundField DataField="ClassPhone1" HeaderText="ClassPhone1" 
                            SortExpression="ClassPhone1" />
                        <asp:BoundField DataField="ClassEmail" HeaderText="ClassEmail" 
                            SortExpression="ClassEmail" />
                        <asp:BoundField DataField="ClassEmail1" HeaderText="ClassEmail1" 
                            SortExpression="ClassEmail1" />
                    </Columns>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ClassId" 
                    DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="464px" 
                    Width="580px" BackColor="White" BorderColor="#999999" BorderStyle="None" 
                    BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <EditItemTemplate>
                        ClassId:
                        <asp:Label ID="ClassIdLabel1" runat="server" Text='<%# Eval("ClassId") %>' />
                        <br />
                        ClassSchool:
                        <asp:TextBox ID="ClassSchoolTextBox" runat="server" 
                            Text='<%# Bind("ClassSchool") %>' />
                        <br />
                        ClassCampusId:
                        <asp:TextBox ID="ClassCampusIdTextBox" runat="server" 
                            Text='<%# Bind("ClassCampusId") %>' />
                        <br />
                        ClassBldg:
                        <asp:TextBox ID="ClassBldgTextBox" runat="server" 
                            Text='<%# Bind("ClassBldg") %>' />
                        <br />
                        ClassRoom:
                        <asp:TextBox ID="ClassRoomTextBox" runat="server" 
                            Text='<%# Bind("ClassRoom") %>' />
                        <br />
                        ClassTeacher:
                        <asp:TextBox ID="ClassTeacherTextBox" runat="server" 
                            Text='<%# Bind("ClassTeacher") %>' />
                        <br />
                        ClassStartDate:
                        <asp:TextBox ID="ClassStartDateTextBox" runat="server" 
                            Text='<%# Bind("ClassStartDate") %>' />
                        <br />
                        ClassEndDate:
                        <asp:TextBox ID="ClassEndDateTextBox" runat="server" 
                            Text='<%# Bind("ClassEndDate") %>' />
                        <br />
                        ClassName:
                        <asp:TextBox ID="ClassNameTextBox" runat="server" 
                            Text='<%# Bind("ClassName") %>' />
                        <br />
                        ClassPhone:
                        <asp:TextBox ID="ClassPhoneTextBox" runat="server" 
                            Text='<%# Bind("ClassPhone") %>' />
                        <br />
                        ClassPhone1:
                        <asp:TextBox ID="ClassPhone1TextBox" runat="server" 
                            Text='<%# Bind("ClassPhone1") %>' />
                        <br />
                        ClassEmail:
                        <asp:TextBox ID="ClassEmailTextBox" runat="server" 
                            Text='<%# Bind("ClassEmail") %>' />
                        <br />
                        ClassEmail1:
                        <asp:TextBox ID="ClassEmail1TextBox" runat="server" 
                            Text='<%# Bind("ClassEmail1") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        ClassSchool:
                        <asp:TextBox ID="ClassSchoolTextBox" runat="server" 
                            Text='<%# Bind("ClassSchool") %>' Height="22px" Width="428px" />
                        <br />
                        ClassCampusId:
                        <asp:TextBox ID="ClassCampusIdTextBox" runat="server" 
                            Text='<%# Bind("ClassCampusId") %>' />
                        <br />
                        ClassBldg:
                        <asp:TextBox ID="ClassBldgTextBox" runat="server" 
                            Text='<%# Bind("ClassBldg") %>' />
                        <br />
                        ClassRoom:
                        <asp:TextBox ID="ClassRoomTextBox" runat="server" 
                            Text='<%# Bind("ClassRoom") %>' />
                        <br />
                        ClassTeacher:
                        <asp:TextBox ID="ClassTeacherTextBox" runat="server" 
                            Text='<%# Bind("ClassTeacher") %>' Height="21px" Width="339px" />
                        <br />
                        ClassStartDate:
                        <asp:TextBox ID="ClassStartDateTextBox" runat="server" 
                            Text='<%# Bind("ClassStartDate") %>' Height="22px" Width="297px" />
                        <br />
                        ClassEndDate:
                        <asp:TextBox ID="ClassEndDateTextBox" runat="server" 
                            Text='<%# Bind("ClassEndDate") %>' Height="22px" Width="305px" />
                        <br />
                        ClassName:
                        <asp:TextBox ID="ClassNameTextBox" runat="server" 
                            Text='<%# Bind("ClassName") %>' Height="23px" Width="348px" />
                        <br />
                        ClassPhone:
                        <asp:TextBox ID="ClassPhoneTextBox" runat="server" 
                            Text='<%# Bind("ClassPhone") %>' />
                        <br />
                        ClassPhone1:
                        <asp:TextBox ID="ClassPhone1TextBox" runat="server" 
                            Text='<%# Bind("ClassPhone1") %>' />
                        <br />
                        ClassEmail:
                        <asp:TextBox ID="ClassEmailTextBox" runat="server" 
                            Text='<%# Bind("ClassEmail") %>' Width="382px" />
                        <br />
                        ClassEmail1:
                        <asp:TextBox ID="ClassEmail1TextBox" runat="server" 
                            Text='<%# Bind("ClassEmail1") %>' Height="22px" Width="373px" />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        ClassId:
                        <asp:Label ID="ClassIdLabel" runat="server" Text='<%# Eval("ClassId") %>' />
                        <br />
                        ClassSchool:
                        <asp:Label ID="ClassSchoolLabel" runat="server" 
                            Text='<%# Bind("ClassSchool") %>' />
                        <br />
                        ClassCampusId:
                        <asp:Label ID="ClassCampusIdLabel" runat="server" 
                            Text='<%# Bind("ClassCampusId") %>' />
                        <br />
                        ClassBldg:
                        <asp:Label ID="ClassBldgLabel" runat="server" Text='<%# Bind("ClassBldg") %>' />
                        <br />
                        ClassRoom:
                        <asp:Label ID="ClassRoomLabel" runat="server" Text='<%# Bind("ClassRoom") %>' />
                        <br />
                        ClassTeacher:
                        <asp:Label ID="ClassTeacherLabel" runat="server" 
                            Text='<%# Bind("ClassTeacher") %>' />
                        <br />
                        ClassStartDate:
                        <asp:Label ID="ClassStartDateLabel" runat="server" 
                            Text='<%# Bind("ClassStartDate") %>' />
                        <br />
                        ClassEndDate:
                        <asp:Label ID="ClassEndDateLabel" runat="server" 
                            Text='<%# Bind("ClassEndDate") %>' />
                        <br />
                        ClassName:
                        <asp:Label ID="ClassNameLabel" runat="server" Text='<%# Bind("ClassName") %>' />
                        <br />
                        ClassPhone:
                        <asp:Label ID="ClassPhoneLabel" runat="server" 
                            Text='<%# Bind("ClassPhone") %>' />
                        <br />
                        ClassPhone1:
                        <asp:Label ID="ClassPhone1Label" runat="server" 
                            Text='<%# Bind("ClassPhone1") %>' />
                        <br />
                        ClassEmail:
                        <asp:Label ID="ClassEmailLabel" runat="server" 
                            Text='<%# Bind("ClassEmail") %>' />
                        <br />
                        ClassEmail1:
                        <asp:Label ID="ClassEmail1Label" runat="server" 
                            Text='<%# Bind("ClassEmail1") %>' />
                        <br />
                        
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Class] WHERE [ClassId] = @original_ClassId AND [ClassSchool] = @original_ClassSchool AND [ClassCampusId] = @original_ClassCampusId AND (([ClassBldg] = @original_ClassBldg) OR ([ClassBldg] IS NULL AND @original_ClassBldg IS NULL)) AND (([ClassRoom] = @original_ClassRoom) OR ([ClassRoom] IS NULL AND @original_ClassRoom IS NULL)) AND (([ClassTeacher] = @original_ClassTeacher) OR ([ClassTeacher] IS NULL AND @original_ClassTeacher IS NULL)) AND (([ClassStartDate] = @original_ClassStartDate) OR ([ClassStartDate] IS NULL AND @original_ClassStartDate IS NULL)) AND (([ClassEndDate] = @original_ClassEndDate) OR ([ClassEndDate] IS NULL AND @original_ClassEndDate IS NULL)) AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL)) AND (([ClassPhone] = @original_ClassPhone) OR ([ClassPhone] IS NULL AND @original_ClassPhone IS NULL)) AND (([ClassPhone1] = @original_ClassPhone1) OR ([ClassPhone1] IS NULL AND @original_ClassPhone1 IS NULL)) AND (([ClassEmail] = @original_ClassEmail) OR ([ClassEmail] IS NULL AND @original_ClassEmail IS NULL)) AND (([ClassEmail1] = @original_ClassEmail1) OR ([ClassEmail1] IS NULL AND @original_ClassEmail1 IS NULL))" 
                    InsertCommand="INSERT INTO [Class] ([ClassSchool], [ClassCampusId], [ClassBldg], [ClassRoom], [ClassTeacher], [ClassStartDate], [ClassEndDate], [ClassName], [ClassPhone], [ClassPhone1], [ClassEmail], [ClassEmail1]) VALUES (@ClassSchool, @ClassCampusId, @ClassBldg, @ClassRoom, @ClassTeacher, @ClassStartDate, @ClassEndDate, @ClassName, @ClassPhone, @ClassPhone1, @ClassEmail, @ClassEmail1)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Class] ORDER BY [ClassName]" 
                    UpdateCommand="UPDATE [Class] SET [ClassSchool] = @ClassSchool, [ClassCampusId] = @ClassCampusId, [ClassBldg] = @ClassBldg, [ClassRoom] = @ClassRoom, [ClassTeacher] = @ClassTeacher, [ClassStartDate] = @ClassStartDate, [ClassEndDate] = @ClassEndDate, [ClassName] = @ClassName, [ClassPhone] = @ClassPhone, [ClassPhone1] = @ClassPhone1, [ClassEmail] = @ClassEmail, [ClassEmail1] = @ClassEmail1 WHERE [ClassId] = @original_ClassId AND [ClassSchool] = @original_ClassSchool AND [ClassCampusId] = @original_ClassCampusId AND (([ClassBldg] = @original_ClassBldg) OR ([ClassBldg] IS NULL AND @original_ClassBldg IS NULL)) AND (([ClassRoom] = @original_ClassRoom) OR ([ClassRoom] IS NULL AND @original_ClassRoom IS NULL)) AND (([ClassTeacher] = @original_ClassTeacher) OR ([ClassTeacher] IS NULL AND @original_ClassTeacher IS NULL)) AND (([ClassStartDate] = @original_ClassStartDate) OR ([ClassStartDate] IS NULL AND @original_ClassStartDate IS NULL)) AND (([ClassEndDate] = @original_ClassEndDate) OR ([ClassEndDate] IS NULL AND @original_ClassEndDate IS NULL)) AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL)) AND (([ClassPhone] = @original_ClassPhone) OR ([ClassPhone] IS NULL AND @original_ClassPhone IS NULL)) AND (([ClassPhone1] = @original_ClassPhone1) OR ([ClassPhone1] IS NULL AND @original_ClassPhone1 IS NULL)) AND (([ClassEmail] = @original_ClassEmail) OR ([ClassEmail] IS NULL AND @original_ClassEmail IS NULL)) AND (([ClassEmail1] = @original_ClassEmail1) OR ([ClassEmail1] IS NULL AND @original_ClassEmail1 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ClassId" Type="Int32" />
                        <asp:Parameter Name="original_ClassSchool" Type="Int32" />
                        <asp:Parameter Name="original_ClassCampusId" Type="Int32" />
                        <asp:Parameter Name="original_ClassBldg" Type="String" />
                        <asp:Parameter Name="original_ClassRoom" Type="String" />
                        <asp:Parameter Name="original_ClassTeacher" Type="String" />
                        <asp:Parameter Name="original_ClassStartDate" Type="DateTime" />
                        <asp:Parameter Name="original_ClassEndDate" Type="DateTime" />
                        <asp:Parameter Name="original_ClassName" Type="String" />
                        <asp:Parameter Name="original_ClassPhone" Type="String" />
                        <asp:Parameter Name="original_ClassPhone1" Type="String" />
                        <asp:Parameter Name="original_ClassEmail" Type="String" />
                        <asp:Parameter Name="original_ClassEmail1" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ClassSchool" Type="Int32" />
                        <asp:Parameter Name="ClassCampusId" Type="Int32" />
                        <asp:Parameter Name="ClassBldg" Type="String" />
                        <asp:Parameter Name="ClassRoom" Type="String" />
                        <asp:Parameter Name="ClassTeacher" Type="String" />
                        <asp:Parameter Name="ClassStartDate" Type="DateTime" />
                        <asp:Parameter Name="ClassEndDate" Type="DateTime" />
                        <asp:Parameter Name="ClassName" Type="String" />
                        <asp:Parameter Name="ClassPhone" Type="String" />
                        <asp:Parameter Name="ClassPhone1" Type="String" />
                        <asp:Parameter Name="ClassEmail" Type="String" />
                        <asp:Parameter Name="ClassEmail1" Type="String" />
                        <asp:Parameter Name="original_ClassId" Type="Int32" />
                        <asp:Parameter Name="original_ClassSchool" Type="Int32" />
                        <asp:Parameter Name="original_ClassCampusId" Type="Int32" />
                        <asp:Parameter Name="original_ClassBldg" Type="String" />
                        <asp:Parameter Name="original_ClassRoom" Type="String" />
                        <asp:Parameter Name="original_ClassTeacher" Type="String" />
                        <asp:Parameter Name="original_ClassStartDate" Type="DateTime" />
                        <asp:Parameter Name="original_ClassEndDate" Type="DateTime" />
                        <asp:Parameter Name="original_ClassName" Type="String" />
                        <asp:Parameter Name="original_ClassPhone" Type="String" />
                        <asp:Parameter Name="original_ClassPhone1" Type="String" />
                        <asp:Parameter Name="original_ClassEmail" Type="String" />
                        <asp:Parameter Name="original_ClassEmail1" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ClassSchool" Type="Int32" />
                        <asp:Parameter Name="ClassCampusId" Type="Int32" />
                        <asp:Parameter Name="ClassBldg" Type="String" />
                        <asp:Parameter Name="ClassRoom" Type="String" />
                        <asp:Parameter Name="ClassTeacher" Type="String" />
                        <asp:Parameter Name="ClassStartDate" Type="DateTime" />
                        <asp:Parameter Name="ClassEndDate" Type="DateTime" />
                        <asp:Parameter Name="ClassName" Type="String" />
                        <asp:Parameter Name="ClassPhone" Type="String" />
                        <asp:Parameter Name="ClassPhone1" Type="String" />
                        <asp:Parameter Name="ClassEmail" Type="String" />
                        <asp:Parameter Name="ClassEmail1" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>

