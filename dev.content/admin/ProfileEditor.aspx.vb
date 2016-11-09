
Partial Class admin_ProfileEditor
    Inherits System.Web.UI.Page
    Protected Sub Page_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad
        If (User.Identity.IsAuthenticated = False) Then
            Server.Transfer("Login.aspx")
        End If
    End Sub
End Class
