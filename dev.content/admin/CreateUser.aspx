<%@ Page Language="VB" MasterPageFile="AdminMasterPage.master" AutoEventWireup="false" CodeFile="CreateUser.aspx.vb" Inherits="CreateUser" title="Create New User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="middle-wrapper-didl">
        <div class="middle-didl">
            <div class="middle-didl-picture">
            </div>
        </div>
        </div>
    <div class="site-wrapper">
            <div class="body-wrapper">
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#F7F6F3" 
                    BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
                    Font-Names="Verdana" Font-Size="10pt" Height="231px" Width="585px" 
                    FinishDestinationPageUrl="~/Login.aspx" CancelDestinationPageUrl="~/Index.aspx" 
                    ContinueDestinationPageUrl="~/Index.aspx" LoginCreatedUser="False" 
                    DisplayCancelButton="True" CreateUserButtonText="Continue">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table border="0" style="font-size: 100%; width: 585px; font-family: Verdana; height: 231px">
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #5d7b9d">
                                Sign Up for Your New Account</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                             </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                    ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required."
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                    ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                    ErrorMessage="Security question is required." ToolTip="Security question is required."
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                    ErrorMessage="Security answer is required." ToolTip="Security answer is required."
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                    ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: red">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:WizardStep runat="server" StepType="Step" Title="User Profile">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White"
                    BorderColor="#E7E7FF" BorderStyle="Solid" BorderWidth="1px" Caption="User Profile"
                    CaptionAlign="Left" CellPadding="3" DataKeyNames="UserId" DataSourceID="SqlDataSource1"
                    DefaultMode="Insert" EnablePagingCallbacks="True" GridLines="Horizontal" Height="116px"
                    Width="652px">
                    <AlternatingRowStyle BackColor="#00AEEF" />
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <Fields>
                        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True"
                            SortExpression="UserId" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                        <asp:BoundField DataField="Address1" HeaderText="Address" 
                            SortExpression="Address1" />
                        <asp:BoundField DataField="Address2" HeaderText="Address2" 
                            SortExpression="Address2" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" 
                            SortExpression="ZipCode" />
                        <asp:BoundField DataField="CustomerId" HeaderText="Customer Id" 
                            SortExpression="CustomerId" />
                        <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                        <asp:BoundField DataField="UserName" HeaderText="User Name" 
                            SortExpression="UserName" />
                        <asp:BoundField DataField="UserSchool" HeaderText="User School" 
                            SortExpression="UserSchool" />
                        <asp:BoundField DataField="UserCampus" HeaderText="User Campus" 
                            SortExpression="UserCampus" />
                        <asp:BoundField DataField="UserClass" HeaderText="User Class" 
                            SortExpression="UserClass" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerSettings Visible="False" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserSchool] = @original_UserSchool) OR ([UserSchool] IS NULL AND @original_UserSchool IS NULL)) AND (([UserCampus] = @original_UserCampus) OR ([UserCampus] IS NULL AND @original_UserCampus IS NULL)) AND (([UserClass] = @original_UserClass) OR ([UserClass] IS NULL AND @original_UserClass IS NULL))"
                    InsertCommand="INSERT INTO [Users] ([LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [SSN], [UserName], [UserSchool], [UserCampus], [UserClass]) VALUES (@LastName, @FirstName, @Address1, @Address2, @City, @State, @ZipCode, @CustomerId, @SSN, @UserName, @UserSchool, @UserCampus, @UserClass)"
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [UserId], [LastName], [FirstName], [Address1], [Address2], [City], [State], [ZipCode], [CustomerId], [SSN], [UserName], [UserSchool], [UserCampus], [UserClass] FROM [Users]"
                    
                    UpdateCommand="UPDATE [Users] SET [LastName] = @LastName, [FirstName] = @FirstName, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [CustomerId] = @CustomerId, [SSN] = @SSN, [UserName] = @UserName, [UserSchool] = @UserSchool, [UserCampus] = @UserCampus, [UserClass] = @UserClass WHERE [UserId] = @original_UserId AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([ZipCode] = @original_ZipCode) OR ([ZipCode] IS NULL AND @original_ZipCode IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserSchool] = @original_UserSchool) OR ([UserSchool] IS NULL AND @original_UserSchool IS NULL)) AND (([UserCampus] = @original_UserCampus) OR ([UserCampus] IS NULL AND @original_UserCampus IS NULL)) AND (([UserClass] = @original_UserClass) OR ([UserClass] IS NULL AND @original_UserClass IS NULL))">
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
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserSchool" Type="Int32" />
                        <asp:Parameter Name="original_UserCampus" Type="Int32" />
                        <asp:Parameter Name="original_UserClass" Type="Int32" />
                    </DeleteParameters>
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
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="UserSchool" Type="Int32" />
                        <asp:Parameter Name="UserCampus" Type="Int32" />
                        <asp:Parameter Name="UserClass" Type="Int32" />
                    </InsertParameters>
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
                        <asp:Parameter Name="original_SSN" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserSchool" Type="Int32" />
                        <asp:Parameter Name="original_UserCampus" Type="Int32" />
                        <asp:Parameter Name="original_UserClass" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:WizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table border="0" style="font-size: 100%; width: 585px; font-family: Verdana; height: 231px">
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #5d7b9d">
                                Complete</td>
                        </tr>
                        <tr>
                            <td>
                                Your account has been successfully created.</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="ContinueButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC"
                                    BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Continue"
                                    Font-Names="Verdana" ForeColor="#284775" Text="Continue" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
        <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em"
            ForeColor="White" HorizontalAlign="Center" />
        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" ForeColor="#284775" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <StepStyle BorderWidth="0px" />
                <MailDefinition Subject="Registration Confirmation" From="no.reply@empconcepts.com" BodyFileName="~/admin/emailBody.htm" IsBodyHtml="True">
                </MailDefinition>
                <FinishNavigationTemplate>
                    <asp:Button ID="FinishPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC"
                        BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious"
                        Font-Names="Verdana" ForeColor="#284775" Text="Previous" />
                    <asp:Button ID="FinishButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC"
                        BorderStyle="Solid" BorderWidth="1px" CommandName="MoveComplete" Font-Names="Verdana"
                        ForeColor="#284775" Text="Finish" />
                </FinishNavigationTemplate>
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC"
                        BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious"
                        Font-Names="Verdana" ForeColor="#284775" Text="Previous" />
                    <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC"
                        BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana"
                        ForeColor="#284775" Text="Next" />
                </StepNavigationTemplate>
    </asp:CreateUserWizard>
   </div>
   </div> 
</asp:Content>

