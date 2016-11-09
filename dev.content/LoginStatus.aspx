<%@ Page Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="LoginStatus.aspx.vb" Inherits="LoginStatus" title="Login Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class = "middle-wrapper-didl">
			<div class = "middle-didl">
				<div class = "middle-didl-picture">
                    <img src="images/didl.jpg" alt="" />
				</div>
			</div>
		</div>
    <div class="site-wrapper">
        <div class="body-wrapper">
            <div class="body_didl2">
    <div>
        <span style=" font-size:18pt;">Login Status:</span><br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" Width="167px" LogoutPageUrl="Index.aspx" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CreateUser.aspx" Width="143px">Register</asp:HyperLink><br />
        <br />
        Login Name:<br />
        <asp:LoginName ID="LoginName1" runat="server" Width="141px" />
        <br />
        <br />
        <br />
        Login View:<br />
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>
                This view is for people who have logged in successfully.
            </LoggedInTemplate>
            <AnonymousTemplate>
                This view is for people who have not yet logged in.
            </AnonymousTemplate>
        </asp:LoginView>
    
    </div>
   </div>
   </div>
   </div>
</asp:Content>

