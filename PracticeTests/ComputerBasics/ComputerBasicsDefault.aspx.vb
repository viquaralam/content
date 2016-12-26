
Partial Class Practice_FinalTests_FinalDefault
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' In order for the SqlDataSource1 to bind
        ' correctly it needed an input parameter
        ' and unfortunately I couldn't specify 
        ' Profile.UserName since it wasn't in the
        ' property bag of Profile, but was a real
        ' property.  So, this is a bit of a kluge
        ' and I feel bad about it, but since we're
        ' using session, why not pile one more 
        ' data element on top ...  :)


    End Sub

    Private Sub Practice_FinalTests_FinalDefault_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        If Session("UserName") Is Nothing Then
            Session.Add("UserName", User.Identity.Name)
        End If
    End Sub
End Class
