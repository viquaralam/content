
Partial Class Practice_FilesFolders_TestResult
    Inherits System.Web.UI.Page
    Protected Sub resultGrid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles resultGrid.SelectedIndexChanged

        SqlDataSource1.FilterExpression = "QuestionId=" & resultGrid.SelectedValue.ToString()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Try
        Dim al As ArrayList = CType(Session("AnswerList"), ArrayList)

        If al Is Nothing Then
            Response.Redirect("PracticeFilesFoldersDefault.aspx")
        End If

        resultGrid.DataSource = al
        resultGrid.DataBind()

        ' Save the results into the database.
        If IsPostBack = False Then

            ' calculate score
            Dim questions As Double = al.Count
            Dim correct As Double = 0

            Dim i As Integer = 0
            For i = 0 To al.Count - 1
                Dim a As Answer = CType(al(i), Answer)
                If a.Result = Answer.ResultValue.Correct Then
                    correct += 1
                End If
            Next

            Dim score As Double = (correct / questions) * 100

            Dim userQuizDataSource As SqlDataSource = New SqlDataSource()
            Dim rowsAffected
            userQuizDataSource.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
            userQuizDataSource.InsertCommand = "INSERT INTO [UserQuiz] ([QuizID], [DateTimeComplete], [Score], [UserName], [Questions], [Correctans]) VALUES (@QuizID, @DateTimeComplete, @Score, @UserName, @Questions, @Correctans)"

            userQuizDataSource.InsertParameters.Add("QuizID", Session("QuizID").ToString())
            userQuizDataSource.InsertParameters.Add("DateTimeComplete", DateTime.Now.ToString())
            userQuizDataSource.InsertParameters.Add("Score", CInt(score))
            userQuizDataSource.InsertParameters.Add("UserName", User.Identity.Name)
            userQuizDataSource.InsertParameters.Add("Questions", questions.ToString)
            userQuizDataSource.InsertParameters.Add("Correctans", correct.ToString)

            rowsAffected = userQuizDataSource.Insert()
            'If rowsAffected = 0 Then
            'Let's just notify that the insertion didn't 
            'work, but let's continue on ...
            'errorLabel.Text = "There was a problem saving your quiz results " & _
            '"into our database.  Therefore the results from this quiz " & _
            '"will not be displayed on the list on the main menu."
            'End If

        End If

        'Catch ex As Exception

        ' Typically I like to minimize the amount of
        ' code I wrap in a try/catch statement.  However
        ' honestly, I'm feeling that there are a couple
        ' of potential problems that could arise in my
        ' implementation of the code and I want there to
        ' be *some* thought about what should happen here
        ' if the worst-case-scenario actually happens.

        ' Actually, what I'm about to say mimics many of
        ' the comments I made in the questions.aspx.cs 
        ' file.

        ' I have two potential problems ... 1st, if the
        ' web server is reset while my user is on the last
        ' quiz question ready to click the "Finish" button
        ' then all his answers will be lost.  2nd, if the
        ' database connection is lost (or other database
        ' malladies occur) then all the user's answers will
        ' be lost. Yes, yes, yes ... I could construct
        ' some elaborate schemes to ensure this doesn't
        ' happen, but that would require I back-up several
        ' steps and re-do some things about the application.
        ' Since this is simply a tutorial application 
        ' I'll just bring these potential issues to your
        ' attention and move on.

        ' This does remind me of a great programmer quote:
        ' "Nine tenths of programming is handling the exception,
        ' not the rule."  I fear too often in my own work
        ' I spend 9/10ths on the rule and not the exception.

        ' To make a long story short, I'm going to take
        ' the easy way out and just redirect the user to
        ' the default.aspx page if there is any trouble.
        ' Yes, makes me feel a little dirty, but due to 
        ' time constraints I must move on...

        'Response.Redirect("FMDefault.aspx")

        'End Try

    End Sub

    Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreInit

        If Profile.IsAnonymous = True Then

            Response.Redirect("~/Login.aspx")
        End If
    End Sub
End Class
