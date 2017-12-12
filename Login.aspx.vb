
Imports System.Web.UI.WebControls

Partial Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then

            FormsAuthentication.SignOut()
        End If


    End Sub

    Protected Sub LoginButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub ValidateUser(sender As Object, e As EventArgs)
        Dim userid As Integer = 0
        'Dim userId As Integer = 0
        'Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        'Using con As New SqlConnection(constr)
        '    Using cmd As New SqlCommand("Validate_User")
        '        cmd.CommandType = CommandType.StoredProcedure
        '        'cmd.Parameters.AddWithValue("@Username", Login1 UserName)
        '        'cmd.Parameters.AddWithValue("@Password", Login1.Password)
        '        cmd.Connection = con
        '        con.Open()
        '        userId = Convert.ToInt32(cmd.ExecuteScalar())
        '        con.Close()
        '    End Using
        '    Select Case userId
        '        Case -1
        '            'Login1.FailureText = "Username and/or password is incorrect."
        '            Exit Select
        '        Case -2
        '            'Login1.FailureText = "Account has not been activated."
        '            Exit Select
        '        Case Else
        '            'FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet)
        '            Exit Select
        '    End Select
        'End Using
    End Sub


    'Protected Sub Login1_Authenticate(sender As Object, e As AuthenticateEventArgs)
    '    Login1.UserName = ""

    'End Sub
    'Protected Sub Login1_Authenticate1(sender As Object, e As AuthenticateEventArgs) Handles Login1.Authenticate
    '    Dim userId As Integer = 0
    '    Dim constr As String = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ConnectionString
    '    Using con As New SqlConnection(constr)
    '        Using cmd As New SqlCommand("Validate_User")
    '            cmd.CommandType = CommandType.StoredProcedure
    '            cmd.Parameters.AddWithValue("@Username", Login1.UserName)
    '            cmd.Parameters.AddWithValue("@Password", Login1.Password)
    '            cmd.Connection = con
    '            con.Open()
    '            userId = Convert.ToInt32(cmd.ExecuteScalar())
    '            con.Close()
    '        End Using
    '        Select Case userId
    '            Case -1
    '                Login1.FailureText = "Username and/or password is incorrect."
    '                Exit Select
    '            Case -2
    '                Login1.FailureText = "Account has not been activated."
    '                Exit Select
    '            Case Else
    '                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet)
    '                Exit Select
    '        End Select
    '    End Using


    'End Sub


    Protected Sub LoggedIn(sender As Object, e As EventArgs)

        'FormsAuthentication.RedirectFromLoginPage(userName.Text, True / False);

        FormsAuthentication.SetAuthCookie(Login1.UserName, True)

        Response.Redirect("pledge.aspx")

    End Sub

End Class
