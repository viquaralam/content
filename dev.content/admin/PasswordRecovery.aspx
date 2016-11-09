<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PasswordRecovery.aspx.vb" Inherits="PasswordRecovery" title="Password Recovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
        BackColor="#F7F6F3" 
        BorderColor="#E6E2D8" 
        BorderPadding="4" 
        BorderStyle="Solid" 
        BorderWidth="1px" 
        Font-Names="Verdana" 
        Font-Size="10pt" 
        Height="197px" 
        Width="460px" 
        AnswerLabelText="Type the answer to your security question:">
        <MailDefinition CC="nancy.hadley@empconcepts.com" 
            From="no.reply@empconcepts.com" Subject="Password Recovery">
        </MailDefinition>
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        <SubmitButtonStyle 
            BackColor="#FFFBFF" 
            BorderColor="#CCCCCC" 
            BorderStyle="Solid"
            BorderWidth="1px" 
            Font-Names="Verdana" 
            Font-Size="0.8em" 
            ForeColor="#284775" />
    </asp:PasswordRecovery>
</asp:Content>

