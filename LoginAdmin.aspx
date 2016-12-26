<%@ Page Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="LoginAdmin.aspx.vb" Inherits="LoginAdmin" title="Administration Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="middle-wrapper-didl">
        <div class="middle-contact">
            <div class="middle-didl-picture"> 
            <img src="images/didl.jpg" alt="" />
            </div>
        </div>
        </div>
    <div class="site-wrapper">
            <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid"
                BorderWidth="1px" CreateUserText="Create new user" CreateUserUrl="~/CreateUser.aspx"
                Font-Names="Arial" Font-Size="10pt" Height="256px" PasswordRecoveryText="Forgot your password?"
                PasswordRecoveryUrl="~/PasswordRecovery.aspx" RememberMeSet="True" Width="493px"
                DestinationPageUrl="~/admin/IndexAdmin.aspx" BorderPadding="4" ForeColor="#333333">
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Font-Size="0.9em" />
                <TextBoxStyle Font-Size="0.8em" />
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            </asp:Login>
        </div>
    
    <div class="site-wrapper" style="width: 964px">
        <div class="body-wrapper" style="width: 938px">
            &nbsp; &nbsp;&nbsp;
        </div>
    </div><
</asp:Content>

