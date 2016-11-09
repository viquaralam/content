<%@ Page Language="VB" MasterPageFile="AdminMasterPage.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="ChangePassword" title="Change Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class = "middle-wrapper-didl">
			<div class = "middle-contact">
				<div class = "middle-didl-picture">
                    </div>
			</div>
		</div>
		<div class="site-wrapper">
            <div class="body-wrapper"><asp:ChangePassword ID="ChangePassword1" runat="server" 
                    BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
                    Font-Names="Verdana" Font-Size="10pt" Height="239px" Width="542px" 
                    BorderPadding="4" CancelDestinationPageUrl="~/Index.aspx" 
                    ContinueDestinationPageUrl="~/Index.aspx" DisplayUserName="True" 
                    SuccessPageUrl="~/Index.aspx">
                <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#284775" />
        <TitleTextStyle BackColor="#00AEEF" Font-Bold="True" ForeColor="White" 
                    Font-Size="10pt" />
                <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
                <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#284775" />
                <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#284775" />
                <MailDefinition BodyFileName="~/admin/emailBody.htm" 
                    CC="nancy.hadley@empconcepts.com" From="no.reply@empconcepts.com" 
                    IsBodyHtml="True" Subject="Password change">
                </MailDefinition>
                <TextBoxStyle Font-Size="0.8em" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    </asp:ChangePassword>
   </div>
   </div> 
</asp:Content>

