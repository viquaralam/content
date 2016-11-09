Imports System.Data.SqlClient
Imports System.Data
Partial Class SchoolsAdmin_GradeBook
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            If Profile.IsAnonymous = False Then
                Dim UserName As String = User.Identity.Name
            End If
        End If
    End Sub
End Class
