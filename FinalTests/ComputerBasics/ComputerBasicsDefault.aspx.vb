
Partial Class TestingCenter_ComputerBasics_FinalDefault
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

        'If Page.IsPostBack = False Then
        '    If Profile.IsAnonymous = False Then
        '        Session.Add("UserName", User.Identity.Name)
        '    Else
        '        Response.Redirect("~/Login.aspx")
        '    End If
        'End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub TestingCenter_ComputerBasics_FinalDefault_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        Session.Add("UserName", User.Identity.Name.ToString)
    End Sub
End Class
