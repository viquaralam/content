
Partial Class GradeBook
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Page.IsPostBack = False Then
        '    If Profile.IsAnonymous = False Then
        '        Session.Add("UserName", User.Identity.Name)
        '    Else
        '        Response.Redirect("~/Login.aspx")
        '    End If
        'End If

        If Not IsPostBack Then

            TaskFeedback()

            MultipleChoiceTestHistory()

            DIDLCertificationExamSummary()


        End If

    End Sub

    Private Sub DIDLCertificationExamSummary()

        Dim queryString As String = "SELECT A.Exam, CASE WHEN MAX(GradeNumber) = 0 THEN 'Ungraded' WHEN MAX(GradeNumber) = 1 THEN 'Retake' " & vbCrLf & _
                        "WHEN MAX(GradeNumber) = 2 THEN 'Fail' " & vbCrLf & _
                        "WHEN MAX(GradeNumber) = 3 THEN 'Pass'END AS 'Pass/Fail', " & vbCrLf & _
                        "SUM(A.Attempts) As Attempts, CASE WHEN MAX(GradeNumber) = 3 THEN MAX(A.DateCompleted) ELSE NULL END AS 'Date Completed',  " & vbCrLf & _
                        "MAX(Grade) As Grade  " & vbCrLf & _
                        "FROM  " & vbCrLf & _
                        "( " & vbCrLf & _
                        "Select   " & vbCrLf & _
                        "Quiz.Title As Exam, Quiz.QuizId,  " & vbCrLf & _
                        "CASE When UserQuiz.Grade = 'Ungraded' THEN 0 " & vbCrLf & _
                        "When UserQuiz.Grade = 'Retake' THEN 1 " & vbCrLf & _
                        "WHEN UserQuiz.Grade = 'Fail' THEN 2 " & vbCrLf & _
                        "WHEN UserQuiz.Grade = 'Pass' THEN 3 " & vbCrLf & _
                        "End As GradeNumber, " & vbCrLf & _
                        "--Max(UserQuiz.Grade) As 'Pass/Fail',  " & vbCrLf & _
                        "MAX(UserQuiz.Score) As Grade,  " & vbCrLf & _
                        "COUNT(UserQuiz.UserQuizId) AS Attempts,  " & vbCrLf & _
                        "MAX(UserQuiz.DateTimeComplete) As 'DateCompleted'  " & vbCrLf & _
                        "From UserQuiz INNER Join Quiz On UserQuiz.QuizId = Quiz.QuizId " & vbCrLf & _
                        "WHERE ( UserQuiz.QuizId=27  Or  UserQuiz.QuizId=33 OR  UserQuiz.QuizId=11 Or  UserQuiz.QuizId=34 OR UserQuiz.QuizId=32 Or UserQuiz.QuizId=25)  " & vbCrLf & _
                        "And (UserQuiz.UserName = @UserName) " & vbCrLf & _
                        "GROUP BY UserQuiz.UserName,  Quiz.QuizId, " & vbCrLf & _
                        "CASE WHEN UserQuiz.Grade = 'Ungraded' THEN 0 " & vbCrLf & _
                        "WHEN UserQuiz.Grade = 'Retake' THEN 1 " & vbCrLf & _
                        "WHEN UserQuiz.Grade = 'Fail' THEN 2 " & vbCrLf & _
                        "WHEN UserQuiz.Grade = 'Pass' THEN 3 " & vbCrLf & _
                        "End , " & vbCrLf & _
                        "  Quiz.Title  " & vbCrLf & _
                        " " & vbCrLf & _
                        ") A " & vbCrLf & _
                        "GROUP BY A.Exam, A.QuizId " & vbCrLf & _
                        "ORDER BY A.QuizId ASC "

        Dim UserName As SqlParameter = New SqlParameter()
        UserName.ParameterName = "UserName"
        UserName.SqlDbType = SqlDbType.VarChar
        UserName.Value = User.Identity.Name
        UserName.Size = 100

        'Adapter.Parameters.Add("@CompanyName", SqlDbType.NChar, 15, "CompanyName")
        'Dim parameter As SqlParameter = Adapter.UpdateCommand.Parameters.Add("@CustomerID", SqlDbType.NChar, 5, "CustomerID")

        ' Run the query and bind the resulting DataSet
        ' to the GridView control.
        Dim ds As DataSet = GetData(queryString, UserName)
        If (ds.Tables.Count > 0) Then

            GridView3.DataSource = ds
            GridView3.DataBind()
        End If
    End Sub

    Private Sub MultipleChoiceTestHistory()

        Dim queryString As String = "SELECT Quiz.Title, UserQuiz.DateTaken, UserQuiz.Score, UserQuiz.Type, UserQuiz.UserName " & vbCrLf & _
                                                           " From UserQuiz INNER Join Quiz On UserQuiz.QuizId = Quiz.QuizId  " & vbCrLf & _
                                                            "WHERE (UserQuiz.UserName=@UserName) AND (UserQuiz.QuizId=34)  " & vbCrLf & _
                                                             "  OR (UserQuiz.Username=@UserName) AND (UserQuiz.QuizId=27) " & vbCrLf & _
                                                              " OR (UserQuiz.Username=@UserName) AND (UserQuiz.QuizId=11)  " & vbCrLf & _
                                                        " ORDER BY UserQuiz.DateTaken DESC"

        Dim UserName As SqlParameter = New SqlParameter()
        UserName.ParameterName = "UserName"
        UserName.SqlDbType = SqlDbType.VarChar
        UserName.Value = User.Identity.Name
        UserName.Size = 100

        'Adapter.Parameters.Add("@CompanyName", SqlDbType.NChar, 15, "CompanyName")
        'Dim parameter As SqlParameter = Adapter.UpdateCommand.Parameters.Add("@CustomerID", SqlDbType.NChar, 5, "CustomerID")

        ' Run the query and bind the resulting DataSet
        ' to the GridView control.
        Dim ds As DataSet = GetData(queryString, UserName)
        If (ds.Tables.Count > 0) Then

            GridView1.DataSource = ds
            GridView1.DataBind()
        End If


    End Sub

    Private Sub TaskFeedback()
        ' Declare the query string.
        Dim queryString As String = "SELECT UserQuiz.UserQuizId, Quiz.Title, UserQuiz.DateTaken, UserQuiz.Score, UserQuiz.Type, UserQuiz.GradeDesc, UserQuiz.UserName, UserQuiz.Grade, UserQuiz.Grader" & vbCrLf & _
                                        "FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizId = Quiz.QuizId " & vbCrLf & _
                                        "WHERE(UserQuiz.UserName = @UserName) And (UserQuiz.QuizId = 25) " & vbCrLf & _
                                           " OR (UserQuiz.UserName = @UserName) AND (UserQuiz.QuizId=32)" & vbCrLf & _
                                           " OR (UserQuiz.UserName = @UserName) AND (UserQuiz.QuizId=33) " & vbCrLf & _
                                        " ORDER BY UserQuiz.DateTaken DESC"

        Dim UserName As SqlParameter = New SqlParameter()
        UserName.ParameterName = "UserName"
        UserName.SqlDbType = SqlDbType.VarChar
        UserName.Value = User.Identity.Name
        UserName.Size = 100

        'Adapter.Parameters.Add("@CompanyName", SqlDbType.NChar, 15, "CompanyName")
        'Dim parameter As SqlParameter = Adapter.UpdateCommand.Parameters.Add("@CustomerID", SqlDbType.NChar, 5, "CustomerID")

        ' Run the query and bind the resulting DataSet
        ' to the GridView control.
        Dim ds As DataSet = GetData(queryString, UserName)
        If (ds.Tables.Count > 0) Then

            GridView2.DataSource = ds
            GridView2.DataBind()


        End If
    End Sub

    Function GetData(ByVal queryString As String, ByVal UserName As SqlParameter) As DataSet

        ' Retrieve the connection string stored in the Web.config file.
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ConnectionString

        Dim ds As New DataSet()

        'Try

        ' Connect to the database and run the query.
        Dim connection As New SqlConnection(connectionString)
        Dim adapter As New SqlDataAdapter(queryString, connection)
        adapter.SelectCommand.Parameters.Add(UserName)
        ' Fill the DataSet.
        adapter.Fill(ds)


        'Catch ex As Exception

        ' The connection failed. Display an error message.
        'Message.Text = "Unable to connect to the database."

        'End Try

        Return ds

    End Function

    Protected Sub GridView2_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView2.PageIndexChanging
        GridView2.PageIndex = e.NewPageIndex
        TaskFeedback()
    End Sub
    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        MultipleChoiceTestHistory()
    End Sub
   
End Class
