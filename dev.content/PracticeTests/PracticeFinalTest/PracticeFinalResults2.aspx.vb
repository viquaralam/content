
Partial Class Practice_FinalTests_FinalResults2
    Inherits System.Web.UI.Page
    Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreInit

        If Profile.IsAnonymous = True Then
            Response.Redirect("~/Login.aspx")
        End If
    End Sub
End Class
