<%@ Page Language="VB" MasterPageFile="School.master" AutoEventWireup="false" CodeFile="UserProfile.aspx.vb"
    Inherits="UserProfile" Title="User Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="middle-wrapper-didl">
        <div class="middle-didl">
            <div class="middle-didl-picture">
                <img src="../images/didl.jpg" alt="" />
            </div>
        </div>
    </div>
    <div class="site-wrapper">
        <div class="body-wrapper">
            <table cellpadding="10">
                <tr>
                    <td>
                        <asp:FormView ID="FormView1" runat="server" BackColor="#00aeef" Caption="Create User Profile"
                            CaptionAlign="Top" CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1"
                            DefaultMode="Insert" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal"
                            Height="368px" Width="592px">
                            <FooterStyle BackColor="#00AEEF" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <EditItemTemplate>
                                UserId:
                                <asp:Label ID="UserIdLabel1" runat="server" Text='<%# Eval("UserId") %>'></asp:Label><br />
                                LastName:
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>'>
                                </asp:TextBox><br />
                                FirstName:
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>'>
                                </asp:TextBox><br />
                                Address1:
                                <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>'>
                                </asp:TextBox><br />
                                Address2:
                                <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>'>
                                </asp:TextBox><br />
                                City:
                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
                                </asp:TextBox><br />
                                State:
                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>'>
                                </asp:TextBox><br />
                                ZipCode:
                                <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>'>
                                </asp:TextBox><br />
                                CustomerId:
                                <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>'>
                                </asp:TextBox><br />
                                SSN:
                                <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>'>
                                </asp:TextBox><br />
                                DIDLLevel:
                                <asp:TextBox ID="DIDLLevelTextBox" runat="server" Text='<%# Bind("DIDLLevel") %>'>
                                </asp:TextBox><br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                    Text="Update">
                                </asp:LinkButton>
                                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Text="Cancel">
                                </asp:LinkButton>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Last Name:
                                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' Width="400px"></asp:TextBox><br />
                                First Name:
                                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>'
                                    Width="399px"></asp:TextBox><br />
                                Address1:
                                <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' Width="409px"></asp:TextBox><br />
                                Address2:
                                <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' Width="409px"></asp:TextBox><br />
                                City:
                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' Width="447px"></asp:TextBox><br />
                                State:
                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' Width="438px"></asp:TextBox><br />
                                Zip Code:
                                <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>' Width="414px"></asp:TextBox><br />
                                Customer Id:
                                <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>' Width="391px"></asp:TextBox><br />
                                SSN:
                                <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>' Width="442px"></asp:TextBox><br />
                                DIDL Level:
                                <asp:TextBox ID="DIDLLevelTextBox" runat="server" Text='<%# Bind("DIDLLevel") %>'
                                    Width="402px"></asp:TextBox><br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                    Text="Save Profile" Style="font-size: 12pt; vertical-align: middle; text-align: center"
                                    Font-Bold="True" Height="20px" Width="487px"></asp:LinkButton>&nbsp;
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
                                SSN:
                                <asp:Label ID="SSNLabel" runat="server" Text='<%# Bind("SSN") %>'></asp:Label><br />
                                DIDLLevel:
                                <asp:Label ID="DIDLLevelLabel" runat="server" Text='<%# Bind("DIDLLevel") %>'></asp:Label><br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                                    Text="Edit"></asp:LinkButton>
                                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                                    Text="Delete"></asp:LinkButton>
                                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                    Text="New"></asp:LinkButton>
                            </ItemTemplate>
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <InsertRowStyle BackColor="#006666" ForeColor="White" />
                            <EditRowStyle BackColor="#999999" />
                        </asp:FormView>
                        <asp:Button ID="Button1" runat="server" Height="33px" Text="When the fields clear click here"
                            OnClick="Button1_Click" Width="592px" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:QuizEngine.mdfConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([DIDLLevel] = @original_DIDLLevel) OR ([DIDLLevel] IS NULL AND @original_DIDLLevel IS NULL))"
                            InsertCommand="INSERT INTO [Users] ([LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [SSN], [DIDLLevel]) VALUES (@LastName, @FirstName, @Address1, @Address2, @City, @State, @ZipCode, @CustomerId, @SSN, @DIDLLevel)"
                            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserId], [LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [SSN], [DIDLLevel] FROM [Users]"
                            UpdateCommand="UPDATE [Users] SET [LastName] = @LastName, [FirstName] = @FirstName, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [CustomerId] = @CustomerId, [SSN] = @SSN, [DIDLLevel] = @DIDLLevel WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([DIDLLevel] = @original_DIDLLevel) OR ([DIDLLevel] IS NULL AND @original_DIDLLevel IS NULL))">
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
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <p style="font-weight: bold; font-size: 14pt; color: red">
                            Create User Profile</p>
                        <p>
                            Please fill in the blanks in the form on the left. When you have completed your
                            profile click the "Save Profile" button. Then close the program by clicking the
                            button at the bottom of the form.</p>
                        <p>
                            The Customer Id must obtained from your supervisor or the course administrator.&nbsp;
                        </p>
                        <p>
                            The DIDL Level is required to contain one of 3 words.&nbsp; They are Basic, Professional
                            or Master.</p>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
