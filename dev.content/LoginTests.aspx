<%@ Page Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="LoginTests.aspx.vb" Inherits="LoginTests" title="Testing Center Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="middle-wrapper-didl">
        <div class="middle-contact">
            <div class="middle-didl-picture">
            </div>
        </div>
        </div>
    <div class="site-wrapper">
        <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4"
            BorderStyle="Solid" BorderWidth="1px" CreateUserText="Create new account" CreateUserUrl="~/CreateUser.aspx"
            DestinationPageUrl="~/TestingCenter/TestIndex.aspx" Font-Names="Verdana" Font-Size="10pt"
            ForeColor="#333333" Height="235px" PasswordRecoveryText="Forgot your password"
            PasswordRecoveryUrl="~/PasswordRecovery.aspx" RememberMeSet="True" Width="477px">
            <TextBoxStyle Font-Size="10pt" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                Font-Names="Verdana" Font-Size="10pt" ForeColor="#284775" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TitleTextStyle BackColor="#00AEEF" Font-Bold="True" Font-Size="10pt" ForeColor="White" />
        </asp:Login>
        <div class="body-wrapper">
            &nbsp; &nbsp;&nbsp;
        </div>
    </div>
    
</asp:Content>

