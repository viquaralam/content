
Partial Class Practice_SpreadSheet_TestDefault
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

        If Page.IsPostBack = False Then
            'If Profile.IsAnonymous = False Then
            '    Session.Add("UserName", User.Identity.Name)
            'Else
            '    Response.Redirect("~/Login.aspx")
            'End If
        End If
    End Sub

    Private Sub Practice_SpreadSheet_TestDefault_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        Session.Add("UserName", User.Identity.Name)
    End Sub
End Class
