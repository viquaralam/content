
Partial Class certification
    Inherits System.Web.UI.Page

    Private Sub certification_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("ShowPopupOnCertification") = True Then
            ClientScript.RegisterClientScriptBlock(Page.GetType, "Script", "<script language='javascript'>alert('No grader has been assigned to your class. Please contact your administrator.');</script>")
            Session("ShowPopupOnCertification") = False
        End If
    End Sub
End Class
