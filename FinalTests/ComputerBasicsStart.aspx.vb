
Imports System.Collections
Imports System.Windows.Forms

Partial Class TestingCenter_ComputerBasics_FinalStart
    Inherits System.Web.UI.Page
    Protected Sub startButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles startButton.Click
        Response.Redirect("ComputerBasicsTest.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' This is really the only reason I've added a 
        ' start.aspx page ... so I could initialize the
        ' values in the Session.  I probably could have
        ' done this in the questions.aspx page, but its already
        ' a complicated page, and you will probably want
        ' to put some introductory comments here anyway.

        Dim userQuizDataSource As SqlDataSource = New SqlDataSource()
        Dim rowsAffected


        Dim usersInfoConnection As SqlConnection
        Dim SqlCommand As SqlCommand
        Dim sdr As SqlDataReader
        Dim CustomerId, UserSchool, UserCampus, UserClass As String
        Dim GraderId, GrdrUsername As String

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
            SqlCommand.CommandText = "SELECT GrdrId, GrdrUserName FROM GraderAssign Where GrdrCustomerId = @GrdrCustomerId AND GrdrSchoolId = @GrdrSchoolId AND GrdrCampusId = @GrdrCampusId AND GrdrClassId = @GrdrClassId"
            sdr = SqlCommand.ExecuteReader()
            While sdr.Read()
                GraderId = sdr(0).ToString()
                GrdrUsername = sdr(1).ToString()
            End While

            If String.IsNullOrEmpty(GraderId) OrElse (String.IsNullOrEmpty(GrdrUsername)) Then
                Session("ShowPopupOnCertification") = True
                Response.Redirect("~\Certification.aspx")
                Return
            End If
        Catch
        End Try

        Dim al As ArrayList = New ArrayList()
        Session.Add("AnswerList", al)

        If Not Request.QueryString("testid") Is Nothing Then
            Dim testID As Integer = Integer.Parse(Request.QueryString("testid"))
            Session.Add("QuizID", testID)
        Else
            Response.Redirect("ComputerBasicsDefault.aspx")
        End If

    End Sub


End Class
