
Partial Class Pledge
    Inherits System.Web.UI.Page

    Private Sub Pledge_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session.Add("ShowPopupOnCertification", False)
    End Sub
End Class