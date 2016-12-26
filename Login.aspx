<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" MasterPageFile="~/LoginMasterPage.master" Inherits="Login" Title="Login didljumpstart" %>
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <body>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="loginbox" class="btn nine columns center">
    <div class="row">
    <asp:LoginView ID="LoginView1" runat="server">
            </asp:LoginView>
            <asp:LoginName ID="LoginName1" runat="server"></asp:LoginName>
            <asp:LoginStatus ID="LoginStatus1" runat="server"></asp:LoginStatus>
            </div>
            </div>
    <div id="loginBox" class="eight columns center">
        <div class="row">
            <div class="eight columns centered">
                <h4 class="boxTitle">
                    Login to Jumpstart</h4>
          </div>
        </div>
        <div class="eight columns centered">
            <asp:Login ID="Login1" runat="server" Width="397px" Height="268px" TitleText="" PasswordRecoveryText="Forgot password?"
                PasswordRecoveryUrl="PasswordRecovery.aspx" BorderStyle="None"  OnLoggedIn="LoggedIn"
                BorderPadding="0" DestinationPageUrl="~/pledge.aspx">
                <CheckBoxStyle CssClass="smallLabel" />
                <TextBoxStyle CssClass="input-text" />
                <LoginButtonStyle CssClass="nice small radius blue button right" />
            </asp:Login>
            
          
            
        </div>
         
    </div>
    
</asp:Content>
    <%--</body>
    </html>--%>