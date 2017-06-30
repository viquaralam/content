
Imports System.Windows.Forms

Partial Class TestingCenter_ComputerBasics_FinalResult
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
                Response.Redirect("ComputerBasicsDefault.aspx")
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
                'Dim dr As System.Data.DataRowView

                'FormView1.DataBind()
                'dr = CType(FormView1.DataItem, System.Data.DataRowView)
                Dim userQuizDataSource As SqlDataSource = New SqlDataSource()
                Dim rowsAffected


                Dim usersInfoConnection As SqlConnection
                Dim SqlCommand As SqlCommand
                Dim sdr As SqlDataReader
                Dim CustomerId, UserSchool, UserCampus, UserClass As String
                Dim ClassNumber, GrdrUsername As String

                Try
                    usersInfoConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString())
                    usersInfoConnection.Open()
                    SqlCommand = New SqlCommand()
                    SqlCommand.CommandType = CommandType.Text
                    SqlCommand.Parameters.Add("UserName", SqlDbType.VarChar).Value = User.Identity.Name.ToString
                    SqlCommand.Connection = usersInfoConnection
                    SqlCommand.CommandText = "SELECT EnrollCustomerId, EnrollSchoolId, EnrollCampus, EnrollClass FROM Enrollment Where EnrollUser = @UserName"
                    sdr = SqlCommand.ExecuteReader()
                    While sdr.Read()
                        CustomerId = sdr(0).ToString()
                        UserSchool = sdr(1).ToString()
                        UserCampus = sdr(2).ToString()
                        UserClass = sdr(3).ToString()
                    End While

                    If sdr.IsClosed = False Then
                        sdr.Close()
                    End If


                    If CustomerId Is Nothing Then
                        CustomerId = -1
                    End If
                    If UserSchool Is Nothing Then
                        UserSchool = -1
                    End If
                    If UserCampus Is Nothing Then
                        UserCampus = -1
                    End If
                    If UserClass Is Nothing Then
                        UserClass = -1
                    End If

                    SqlCommand = New SqlCommand()
                    SqlCommand.CommandType = CommandType.Text
                    SqlCommand.Parameters.Add("GrdrCustomerId", SqlDbType.Int).Value = CustomerId
                    SqlCommand.Parameters.Add("GrdrSchoolId", SqlDbType.Int).Value = UserSchool
                    SqlCommand.Parameters.Add("GrdrCampusId", SqlDbType.Int).Value = UserCampus
                    SqlCommand.Parameters.Add("GrdrClassId", SqlDbType.Int).Value = UserClass
                    SqlCommand.Connection = usersInfoConnection
                    SqlCommand.CommandText = "SELECT ClassNum, GrdrUserName FROM GraderAssign Where GrdrCustomerId = @GrdrCustomerId AND GrdrSchoolId = @GrdrSchoolId AND GrdrCampusId = @GrdrCampusId AND GrdrClassId = @GrdrClassId"
                    sdr = SqlCommand.ExecuteReader()
                    While sdr.Read()
                        ClassNumber = sdr(0).ToString()
                        GrdrUsername = sdr(1).ToString()
                    End While

                    If sdr.IsClosed = False Then
                        sdr.Close()
                    End If

                    If String.IsNullOrEmpty(ClassNumber) OrElse (String.IsNullOrEmpty(GrdrUsername)) Then
                        Session("ShowPopupOnCertification") = True
                        Response.Redirect("~\Certification.aspx")
                        Return
                    End If


                Catch
                End Try
                userQuizDataSource.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                userQuizDataSource.InsertCommand = "INSERT INTO [UserQuiz] ([QuizID], Grader,GraderUserName, [DateTimeComplete],[School], [Campus], [Class], [CustomerId],  [Score], [UserName], [Questions], [Correctans], [DateTaken], [Type], [Grade]) VALUES (@QuizID, @ClassNumber, @GrdrUsername, @DateTimeComplete, @School, @Campus, @Class, @CustomerId, @Score, @UserName, @Questions, @Correctans, @DateTaken, @Type, @Grade)"

                userQuizDataSource.InsertParameters.Add("QuizID", Session("QuizID").ToString())
                If score >= 90 Then
                    userQuizDataSource.InsertParameters.Add("DateTimeComplete", DateTime.Now.ToString())
                    userQuizDataSource.InsertParameters.Add("Grade", "Pass")
                Else
                    userQuizDataSource.InsertParameters.Add("DateTimeComplete", "")
                    userQuizDataSource.InsertParameters.Add("Grade", "Fail")
                End If
                userQuizDataSource.InsertParameters.Add("ClassNumber", ClassNumber)
                userQuizDataSource.InsertParameters.Add("GrdrUsername", GrdrUsername)
                userQuizDataSource.InsertParameters.Add("CustomerId", CustomerId)
                userQuizDataSource.InsertParameters.Add("School", UserSchool)
                userQuizDataSource.InsertParameters.Add("Campus", UserCampus)
                userQuizDataSource.InsertParameters.Add("Class", UserClass)
                userQuizDataSource.InsertParameters.Add("DateTaken", DateTime.Now.ToString())
                userQuizDataSource.InsertParameters.Add("Type", "CB Test")
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
                'Update users table for always incrementing TimesEssential field and updating TestEssential
                'to current datetime only when score is more than 90
                SqlCommand = New SqlCommand()
                SqlCommand.CommandType = CommandType.Text
                SqlCommand.Parameters.Add("UserName", SqlDbType.VarChar).Value = User.Identity.Name
                SqlCommand.Parameters.Add("Score", SqlDbType.Int).Value = score
                SqlCommand.Connection = usersInfoConnection
                SqlCommand.CommandText = "UPDATE Users SET TimesCB = ISNULL(TimesCB,0) + 1, TestCB = (CASE WHEN @Score > 90  THEN GETDATE() ELSE TestCB END) WHERE UserName =  @UserName"
                SqlCommand.ExecuteNonQuery()

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
        'If Profile.IsAnonymous = True Then

        '    Response.Redirect("~/Login.aspx")
        'End If
    End Sub
    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        Ptr = 0
    End Sub
End Class
