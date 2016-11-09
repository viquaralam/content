
Partial Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If User.Identity.IsAuthenticated = False Then
            Response.Redirect("~/Login.aspx")
        End If
        If Roles.IsUserInRole("admin") = False Then
            Server.Transfer("Unauthorized.aspx")
        End If
    End Sub
End Class
