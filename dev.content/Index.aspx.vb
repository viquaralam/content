
Partial Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        If Page.IsPostBack = False Then
            If Profile.IsAnonymous = False Then
                Session.Add("UserName", User.Identity.Name)
            Else
                Response.Redirect("~/Login.aspx")
            End If
        End If
    End Sub
End Class
