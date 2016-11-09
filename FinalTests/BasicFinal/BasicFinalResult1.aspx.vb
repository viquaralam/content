
Partial Class TestingCenter_FinalTests_FinalResult
    Inherits System.Web.UI.Page
    Shared Ptr As Int16 = 0
    Protected Sub resultGrid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles resultGrid.SelectedIndexChanged

        SqlDataSource1.FilterExpression = "QuestionId=" & resultGrid.SelectedValue.ToString()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Ptr = 0 Then
            Ptr = 1
            'Try
            Dim al As ArrayList = CType(Session("AnswerList"), ArrayList)

            If al Is Nothing Then
                Response.Redirect("BasicFinalDefault.aspx")
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
                Dim dr As System.Data.DataRowView

                FormView1.DataBind()
                dr = CType(FormView1.DataItem, System.Data.DataRowView)
                Dim score As Double = (correct / questions) * 100

                Dim userQuizDataSource As SqlDataSource = New SqlDataSource()
                Dim rowsAffected
                userQuizDataSource.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                userQuizDataSource.InsertCommand = "INSERT INTO [UserQuiz] ([QuizID], [DateTimeComplete],[School], [Campus], [Class], [CustomerId],  [Score], [UserName], [Questions], [Correctans], [DateTaken], [Type], [Grade]) VALUES (@QuizID, @DateTimeComplete, @School, @Class, @Campus, @CustomerId, @Score, @UserName, @Questions, @Correctans, @DateTaken, @Type, @Grade)"

                userQuizDataSource.InsertParameters.Add("QuizID", Session("QuizID").ToString())
                If score >= 90 Then
                    userQuizDataSource.InsertParameters.Add("DateTimeComplete", DateTime.Now.ToString())
                    userQuizDataSource.InsertParameters.Add("Grade", "Pass")
                Else
                    userQuizDataSource.InsertParameters.Add("DateTimeComplete", "")
                    userQuizDataSource.InsertParameters.Add("Grade", "Fail")
                End If
                userQuizDataSource.InsertParameters.Add("CustomerId", dr("EnrollCustomerId").ToString())
                userQuizDataSource.InsertParameters.Add("School", dr("EnrollSchoolId").ToString())
                userQuizDataSource.InsertParameters.Add("Campus", dr("EnrollCampus").ToString())
                userQuizDataSource.InsertParameters.Add("Class", dr("EnrollClass").ToString())
                userQuizDataSource.InsertParameters.Add("DateTaken", DateTime.Now.ToString())
                userQuizDataSource.InsertParameters.Add("Type", "Final Test")
                userQuizDataSource.InsertParameters.Add("Score", CInt(score))
                userQuizDataSource.InsertParameters.Add("UserName", User.Identity.Name)
                userQuizDataSource.InsertParameters.Add("Questions", questions.ToString)
                userQuizDataSource.InsertParameters.Add("Correctans", correct.ToString)

                rowsAffected = userQuizDataSource.Insert()
                If rowsAffected = 0 Then
                    ' Let's just notify that the insertion didn't 
                    ' work, but let's continue on ...
                    errorLabel.Text = "There was a problem saving your quiz results " & _
                    "into our database.  Therefore the results from this quiz " & _
                    "will not be displayed on the list on the main menu."
                End If

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
        End If
    End Sub

    Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreInit
        Ptr = 0
        If Profile.IsAnonymous = True Then
            Response.Redirect("~/Login.aspx")
        End If
    End Sub

    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        Ptr = 0
    End Sub
End Class
