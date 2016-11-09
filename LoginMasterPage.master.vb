
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Menu1_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Menu1.Init
        If Profile.IsAnonymous = True Then
            Response.Redirect("~/Login.aspx")
        End If
    End Sub
End Class

