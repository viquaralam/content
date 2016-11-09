<%@ Page Language="VB" MasterPageFile="AdminMasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" title="Login" %>

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
            <div class="body_didl2">
                <table cellpadding="10">
                    <tr>
                        <td style="width: 103px">
                            <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid"
                                BorderWidth="1px" CreateUserText="Create new user" CreateUserUrl="~/CreateUser.aspx"
                                Font-Names="Verdana" Font-Size="10pt" Height="255px" PasswordRecoveryText="Forgot your password?"
                                PasswordRecoveryUrl="~/PasswordRecovery.aspx" RememberMeSet="True" Width="529px"
                                DestinationPageUrl="~/Index.aspx">
                                <TitleTextStyle BackColor="#00AEEF" Font-Bold="True" ForeColor="White" />
                            </asp:Login>
                        </td>
                        
                        <td style="vertical-align: middle; width: 100px; height: 231px; text-align: left">
                            <div style="float: right; clear: right; font-size: 12pt; vertical-align: middle;
                                width: 380px; height: 102px; text-align: justify;">
                                After you login/register, you are returned to the home page where you can choose
                                Study Materials or Testing Center under the DIDL Menu to either study or take a
                                test. <strong>Logout</strong> in the upper right corner of any page.
                            </div>
                        </td>
                    </tr>
                </table>
                &nbsp;
            </div>
        </div>
    </div>
</asp:Content>

