<%@ Page Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="LoginCourse.aspx.vb" Inherits="LoginCourse" title="Course Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class = "middle-wrapper-didl">
			<div class = "middle-didl">
				<div class = "middle-didl-picture">
					<img src = "../images/didl.jpg" alt="" />
				</div>
			</div>
		</div>
    <div class="site-wrapper">
        <div class="body-wrapper">
            <div class="body_didl2">
                &nbsp;
            <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                BorderStyle="Solid" BorderWidth="1px" 
                CreateUserText="Create new user" 
                CreateUserUrl="~/CreateUser.aspx" 
                Font-Names="Verdana" 
                Font-Size="0.8em" 
                Height="175px" 
                PasswordRecoveryText="Forgot your password?" 
                PasswordRecoveryUrl="~/PasswordRecovery.aspx" 
                RememberMeSet="True" 
                Width="420px" 
                DestinationPageUrl="~/didl/CourseIndex.aspx" 
                BorderPadding="4" 
                ForeColor="#333333">
            
        <TitleTextStyle BackColor="#00AEEF" Font-Bold="True" ForeColor="White" Font-Size="0.9em" />
                <TextBoxStyle Font-Size="0.8em" />
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    </asp:Login>
                &nbsp;
    
   </div>
   </div>
   </div>
    
</asp:Content>

