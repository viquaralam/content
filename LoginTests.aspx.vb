
Partial Class LoginTests
    Inherits System.Web.UI.Page

 
    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit

        If Profile.IsAnonymous = False Then
            Response.Redirect("~/TestingCenter/testIndex.aspx")

        End If

    End Sub

End Class
