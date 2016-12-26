<%@ Page Language="VB" MasterPageFile="AdminMasterPage.master" AutoEventWireup="false" CodeFile="UserProfile.aspx.vb" Inherits="UserProfile" title="User Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="middle-wrapper-didl">
        <div class="middle-didl">
            <div class="middle-didl-picture">
            <img src="../images/didl.jpg" alt="" />
            </div>
        </div>
        </div>
    <div class="site-wrapper">
            <div class="body-wrapper">
            <table cellpadding="10"><tr><td>
            <asp:FormView ID="FormView1" runat="server" BackColor="#00AEEF" Caption="Create User Profile"
        CaptionAlign="Top" CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1"
        DefaultMode="Insert" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal"
        Height="366px" Width="558px">
        <FooterStyle BackColor="#00AEEF" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <EditItemTemplate>
            UserId:
            <asp:Label ID="UserIdLabel1" runat="server" Text='<%# Eval("UserId") %>'></asp:Label><br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox><br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox><br />
            Address1:
            <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>'></asp:TextBox><br />
            Address2:
            <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>'></asp:TextBox><br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'></asp:TextBox><br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>'></asp:TextBox><br />
            ZipCode:
            <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox><br />
            CustomerId:
            <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>'></asp:TextBox><br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" 
                Text='<%# Bind("UserName") %>' />
            <br />
            UserSchool:
            <asp:TextBox ID="UserSchoolTextBox" runat="server" 
                Text='<%# Bind("UserSchool") %>' />
            <br />
            UserCampus:
            <asp:TextBox ID="UserCampusTextBox" runat="server" 
                Text='<%# Bind("UserCampus") %>' />
            <br />
            UserClass:
            <asp:TextBox ID="UserClassTextBox" runat="server" 
                Text='<%# Bind("UserClass") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update"></asp:LinkButton>
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel"></asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            Last Name:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox><br />
            First Name:
            <asp:TextBox ID="FirstNameTextBox" runat="server" 
                Text='<%# Bind("FirstName") %>' Width="396px" Height="22px"></asp:TextBox><br />
            Address :
            <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' 
                Width="400px" Height="22px"></asp:TextBox><br />
            Address :
            <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' 
                Width="409px" Height="22px"></asp:TextBox><br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'></asp:TextBox><br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>'></asp:TextBox><br />
            ZipCode:
            <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox><br />
            CustomerId:
            <asp:TextBox ID="CustomerIdTextBox" runat="server" 
                Text='<%# Bind("CustomerId") %>'></asp:TextBox><br />
            User Name:
            <asp:TextBox ID="UserNameTextBox" runat="server" Height="22px" 
                Text='<%# Bind("UserName") %>' Width="293px" />
            <br />
            User School:
            <asp:TextBox ID="UserSchoolTextBox" runat="server" 
                Text='<%# Bind("UserSchool") %>' />
            <br />
            User Campus:
            <asp:TextBox ID="UserCampusTextBox" runat="server" 
                Text='<%# Bind("UserCampus") %>' />
            <br />
            User Class:
            <asp:TextBox ID="UserClassTextBox" runat="server" 
                Text='<%# Bind("UserClass") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"

                Text="Insert"></asp:LinkButton>&nbsp;<asp:LinkButton 
                ID="InsertCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            UserId:
            <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>'></asp:Label><br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>'></asp:Label><br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label><br />
            Address1:
            <asp:Label ID="Address1Label" runat="server" Text='<%# Bind("Address1") %>'></asp:Label><br />
            Address2:
            <asp:Label ID="Address2Label" runat="server" Text='<%# Bind("Address2") %>'></asp:Label><br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>'></asp:Label><br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>'></asp:Label><br />
            ZipCode:
            <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label><br />
            CustomerId:
            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Bind("CustomerId") %>'></asp:Label><br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            UserSchool:
            <asp:Label ID="UserSchoolLabel" runat="server" 
                Text='<%# Bind("UserSchool") %>' />
            <br />
            UserCampus:
            <asp:Label ID="UserCampusLabel" runat="server" 
                Text='<%# Bind("UserCampus") %>' />
            <br />
            UserClass:
            <asp:Label ID="UserClassLabel" runat="server" Text='<%# Bind("UserClass") %>' />
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
                <asp:Button ID="Button1" runat="server" Height="39px" 
                    Text="Click here to continue" OnClick="Button1_Click"
                    Width="561px" BorderStyle="Ridge" BorderWidth="2px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
        DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserSchool] = @original_UserSchool) OR ([UserSchool] IS NULL AND @original_UserSchool IS NULL)) AND (([UserCampus] = @original_UserCampus) OR ([UserCampus] IS NULL AND @original_UserCampus IS NULL)) AND (([UserClass] = @original_UserClass) OR ([UserClass] IS NULL AND @original_UserClass IS NULL))"
        InsertCommand="INSERT INTO [Users] ([LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [UserName], [UserSchool], [UserCampus], [UserClass]) VALUES (@LastName, @FirstName, @Address1, @Address2, @City, @State, @ZipCode, @CustomerId, @UserName, @UserSchool, @UserCampus, @UserClass)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserId], [LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [UserName], [UserSchool], [UserCampus], [UserClass] FROM [Users] ORDER BY [UserId]"
        
                    UpdateCommand="UPDATE [Users] SET [LastName] = @LastName, [FirstName] = @FirstName, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [CustomerId] = @CustomerId, [UserName] = @UserName, [UserSchool] = @UserSchool, [UserCampus] = @UserCampus, [UserClass] = @UserClass WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserSchool] = @original_UserSchool) OR ([UserSchool] IS NULL AND @original_UserSchool IS NULL)) AND (([UserCampus] = @original_UserCampus) OR ([UserCampus] IS NULL AND @original_UserCampus IS NULL)) AND (([UserClass] = @original_UserClass) OR ([UserClass] IS NULL AND @original_UserClass IS NULL))">
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
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserSchool" Type="Int32" />
            <asp:Parameter Name="UserCampus" Type="Int32" />
            <asp:Parameter Name="UserClass" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
   </td><td><p>
       &nbsp;</p>
       <p style="font-weight: bold; font-size: 14pt; color: red">
           Create User Profile</p>
       <p>
           Please fill in the blanks in the form on the left.  When you have completed your profile click the "Save Profile" button.  Then close the program by clicking the button at the bottom of the form.</p>
       <p>
           The Customer Id, School, Campus, Class numbers must obtained from your supervisor or the course administrator.&nbsp;
       </p>
   </td></tr></table>
</div>
   </div> 
 </asp:Content>

