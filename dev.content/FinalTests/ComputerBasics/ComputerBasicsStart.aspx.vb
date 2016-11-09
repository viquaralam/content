
Partial Class TestingCenter_ComputerBasics_FinalStart
    Inherits System.Web.UI.Page
    Protected Sub startButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles startButton.Click
        Response.Redirect("ComputerBasicsTest.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' This is really the only reason I've added a 
        ' start.aspx page ... so I could initialize the
        ' values in the Session.  I probably could have
        ' done this in the questions.aspx page, but its already
        ' a complicated page, and you will probably want
        ' to put some introductory comments here anyway.

        Dim al As ArrayList = New ArrayList()
        Session.Add("AnswerList", al)

        If Not Request.QueryString("testid") Is Nothing Then
            Dim testID As Integer = Integer.Parse(Request.QueryString("testid"))
            Session.Add("QuizID", testID)
        Else
            Response.Redirect("ComputerBasicsDefault.aspx")
        End If

    End Sub

    Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreInit

        If Profile.IsAnonymous = True Then

            Response.Redirect("~/Login.aspx")
        End If
    End Sub
End Class
