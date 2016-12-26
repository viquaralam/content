
Partial Class LoginAdmin
    Inherits System.Web.UI.Page


    Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreInit

        If Profile.IsAnonymous = False Then
            Response.Redirect("~/admin/IndexAdmin.aspx")

        End If

    End Sub

End Class
