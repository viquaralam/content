<%@ Page Language="C#" MasterPageFile="AdminMasterPage.master" %>
<%@ Register tagPrefix="dc" tagName="alphalinks" src="~/alphalinks.ascx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<script runat="server">
   
	private void Page_PreRender()
	{
		if (alphalinks.Letter == "All")
		{
			Users.DataSource = Membership.GetAllUsers();
		}
		else
		{
			Users.DataSource = Membership.FindUsersByName(alphalinks.Letter + "%");
		}
		Users.DataBind();
	}
</script>




<br /><br />
<table class="webparts">
<tr>
	<th>Users by Name</th>
</tr>
<tr>
<td class="details" valign="top">
User Name filter:&nbsp;&nbsp;&nbsp;
<dc:alphalinks runat="server" id="Alphalinks" />
<asp:GridView runat="server" id="Users" AutoGenerateColumns="False"
	CssClass="list" AlternatingRowStyle-CssClass="odd" GridLines="None" 
        AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
<Columns>
	<asp:TemplateField>
		<HeaderTemplate>User Name</HeaderTemplate>
		<ItemTemplate>
		<a href="edit_user.aspx?username=<%# Eval("UserName") %>"><%# Eval("UserName") %></a>
		</ItemTemplate>
	</asp:TemplateField>
	<asp:BoundField DataField="email" HeaderText="Email" />
	<asp:BoundField DataField="comment" HeaderText="Comments" />
	<asp:BoundField DataField="creationdate" HeaderText="Creation Date" />
	<asp:BoundField DataField="lastlogindate" HeaderText="Last Login Date" />
	<asp:BoundField DataField="lastactivitydate" HeaderText="Last Activity Date" />
	<asp:BoundField DataField="isapproved" HeaderText="Is Active" />
	<asp:BoundField DataField="isonline" HeaderText="Is Online" />
	<asp:BoundField DataField="islockedout" HeaderText="Is Locked Out" />
</Columns>

<AlternatingRowStyle CssClass="odd"></AlternatingRowStyle>
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QuizEngine.mdfConnectionString %>" 
        SelectCommand="SELECT [Email], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [UserName], [LastActivityDate] FROM [vw_aspnet_MembershipUsers] ORDER BY [UserName]">
    </asp:SqlDataSource>

</td>

</tr></table>


</asp:Content>
