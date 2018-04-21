Imports System.Net.Mail
Imports System.IO
Imports System.Collections.Generic
Imports System.Net
Imports System.Web.UI.WebControls
Imports System.Collections
Imports System.Diagnostics.Debug
Imports System.Windows.Forms
Imports System.Data.SqlClient
Imports System.Data


Partial Class TestingCenter_FinalTests_FMTasks
    Inherits System.Web.UI.Page
    Dim StartTime As DateTime = DateTime.Now.ToString
    Dim EndTime As DateTime
    Dim Start As String
    'Shared Freeze As Integer
    Dim fileName As String
    'Shared Ptr As Integer = 0
    Dim MailMessage As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage()
    Shared TempFile1 As String
    Shared TempFile2 As String
    Shared TempFile3 As String
    Shared TempFile4 As String
    Shared TempX As Integer = 0
    Shared X As String = 0
    Shared TaskVersion As Integer
    Shared IdentityCol As Int16

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If IsPostBack = False Then


            Freeze.Value = 0
            Ptr.Value = 0
            fileName = ""
            Start = ""

        End If
    End Sub

    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim startdate As DateTime
        DateTime.TryParse(Label1.Text, startdate)

        If ((DateTime.Now - startdate).TotalMinutes >= 30) Then
            Freeze.Value = 0
            Ptr.Value = 0
            fileName = ""
            Start = ""
            Response.Redirect("~/Login.aspx")

        End If
        If Not IsPostBack Then

        End If
    End Sub



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        If Ptr.Value = 0 Then
            If Page.IsPostBack = False Then
                TaskVersion = New Random().Next(1, 20)

                If TaskVersion < 10 Then
                    X = "0" + TaskVersion.ToString
                Else
                    X = TaskVersion.ToString
                End If

                Session.Add("QuizId", 25)
                Session.Add("Type", "FF Task")
                If Profile.IsAnonymous = False Then
                    Session.Add("UserName", User.Identity.Name)
                Else
                    Freeze.Value = 0
                    Ptr.Value = 0
                    fileName = ""
                    Start = ""
                    '    Response.Redirect("~/Login.aspx")
                End If

                If Freeze.Value = 0 Then
                    EndTime = DateTime.Now.AddMinutes(30).ToString
                    Start = DateTime.Now.ToString
                    Freeze.Value = 1
                    'Label2.Text = EndTime.ToString
                    'Label1.Text = Start.ToString
                End If

                TaskLink1.NavigateUrl = "~/FinalTests/Tasks/FM/didlFMTask" + TaskVersion.ToString + ".pdf"
                TxtBody.Text = "Tasks/FM/didlFMTask" + X + ".pdf  -----  Start: " + Start
                TxtName.Text = User.Identity.Name.Trim()
                Ptr.Value = 1

                Dim rowsAffected As String
                Dim userQuizDataSource As SqlDataSource = New SqlDataSource()
                'Dim rowsAffected

                userQuizDataSource.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                userQuizDataSource.InsertCommand = "INSERT INTO InvoiceItem (Item, Description, Quantity, Price, Amount, Taxable, TranDate, UserName) VALUES (@Item, @Description, @Quantity, @Price, @Amount, @Taxable, @TranDate, @UserName)"
                userQuizDataSource.InsertParameters.Add("Item", "FF Task")
                userQuizDataSource.InsertParameters.Add("Description", "FF/didlFFTask" + X)
                userQuizDataSource.InsertParameters.Add("Quantity", 1)
                userQuizDataSource.InsertParameters.Add("Price", 5)
                userQuizDataSource.InsertParameters.Add("Amount", 5)
                userQuizDataSource.InsertParameters.Add("Taxable", "Yes")
                userQuizDataSource.InsertParameters.Add("TranDate", DateTime.Now.ToString)
                userQuizDataSource.InsertParameters.Add("UserName", User.Identity.Name.ToString)

                rowsAffected = userQuizDataSource.Insert()





                Dim userQuizDataSource1 As SqlCommand = New SqlCommand()
                Dim userEnrollDataSource3 As SqlDataSource = New SqlDataSource()

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

                    If String.IsNullOrEmpty(ClassNumber) OrElse (String.IsNullOrEmpty(GrdrUsername)) Then
                        Session("ShowPopupOnCertification") = True

                        Response.Redirect("~\Certification.aspx")
                        Return
                    End If

                Catch ex As Exception



                End Try

                userQuizDataSource1.Connection = New SqlConnection(ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString())
                userQuizDataSource1.CommandText = "INSERT INTO UserQuiz (QuizId, Score, UserName, Questions, CorrectAns, CustomerId, School, Campus, Class, Grader, GraderUserName, GradeDesc, Type, Grade, DateTaken) OUTPUT INSERTED.UserQuizId  VALUES (@QuizId, @Score, @UserName, @Questions, @CorrectAns, @CustomerId, @School, @Campus, @Class, @Grader, @GraderUserName, @GradeDesc, @Type, @Grade, @DateTaken)"
                userQuizDataSource1.Connection.Open()

                userQuizDataSource1.Parameters.AddWithValue("GradeDesc", "ff/didlFFTask" + X)
                userQuizDataSource1.Parameters.AddWithValue("Questions", 0)
                userQuizDataSource1.Parameters.AddWithValue("School", UserSchool)
                userQuizDataSource1.Parameters.AddWithValue("Campus", UserCampus)
                userQuizDataSource1.Parameters.AddWithValue("Class", UserClass)
                userQuizDataSource1.Parameters.AddWithValue("CustomerId", CustomerId)
                userQuizDataSource1.Parameters.AddWithValue("DateTaken", DateTime.Now.ToString)
                'userQuizDataSource1.Parameters.AddWithValue("DateTimeComplete", "")
                userQuizDataSource1.Parameters.AddWithValue("UserName", User.Identity.Name.ToString)
                userQuizDataSource1.Parameters.AddWithValue("QuizID", 25)
                userQuizDataSource1.Parameters.AddWithValue("Grader", ClassNumber)
                userQuizDataSource1.Parameters.AddWithValue("GraderUserName", GrdrUsername)
                userQuizDataSource1.Parameters.AddWithValue("Type", "FF Task")
                userQuizDataSource1.Parameters.AddWithValue("Score", DBNull.Value)
                userQuizDataSource1.Parameters.AddWithValue("Grade", "Ungraded")
                userQuizDataSource1.Parameters.AddWithValue("CorrectAns", "")
                'userQuizDataSource1.Parameters.AddWithValue("CheckHash", "FF Task" + User.Identity.Name.ToString + "ff/didlFFTask" + X)
                IdentityCol = userQuizDataSource1.ExecuteScalar()

                Dim conn As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString())
                conn.Open()


                Dim Command As SqlCommand = New SqlCommand("UPDATE Users SET TimesFM = ISNULL(TimesFM, 0) + 1 WHERE UserName = @UserName")
                Command.Parameters.Add("UserName", SqlDbType.VarChar).Value = User.Identity.Name
                Command.Connection = conn
                Command.ExecuteNonQuery()

                conn.Close()


                Dim rowsAffected2 As String
                Dim userQuizDataSource2 As SqlDataSource = New SqlDataSource()

                userQuizDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                userQuizDataSource2.InsertCommand = "INSERT INTO CheckList (UserQuizId, TaskType, TaskDate, TaskVer, UserName, TaskGrade, Task0, Task1, Task2, Task3, Task4, Task5, Task6, Task7, Task8, Task9, Task10, Task11, Task12, Task13, Task14, Tasky0, Tasky1, Tasky2, Tasky3, Tasky4, Tasky5, Tasky6, Tasky7, Tasky8, Tasky9, Tasky10, Tasky11, Tasky12, Tasky13, Tasky14) VALUES (@UserQuizId, @TaskType, @TaskDate, @TaskVer, @UserName, @TaskGrade, @Task0, @Task1, @Task2, @Task3, @Task4, @Task5, @Task6, @Task7, @Task8, @Task9, @Task10, @Task11, @Task12, @Task13, @Task14, @Tasky0, @Tasky1, @Tasky2, @Tasky3, @Tasky4, @Tasky5, @Tasky6, @Tasky7, @Tasky8, @Tasky9, @Tasky10, @Tasky11, @Tasky12, @Tasky13, @Tasky14)"

                userQuizDataSource2.InsertParameters.Add("UserQuizId", IdentityCol)
                userQuizDataSource2.InsertParameters.Add("TaskType", "FF Task")
                userQuizDataSource2.InsertParameters.Add("TaskVer", "ff/didlFFTask" + X)
                userQuizDataSource2.InsertParameters.Add("TaskDate", DateTime.Now.ToString)
                userQuizDataSource2.InsertParameters.Add("UserName", User.Identity.Name.ToString)
                userQuizDataSource2.InsertParameters.Add("TaskGrade", "Ungraded")
                userQuizDataSource2.InsertParameters.Add("Task0", "Congratulations! You have successfully passed the task.")
                userQuizDataSource2.InsertParameters.Add("Task1", "No files were uploaded for this task.")
                userQuizDataSource2.InsertParameters.Add("Task2", "01. Required information is not entered correctly at the top of the page.")
                userQuizDataSource2.InsertParameters.Add("Task3", "02. Picture of screen is not sized within margins.")
                userQuizDataSource2.InsertParameters.Add("Task4", "03. Folder is not created in the appropriate location.")
                userQuizDataSource2.InsertParameters.Add("Task5", "04. File has not been copied to the appropriate location.")
                userQuizDataSource2.InsertParameters.Add("Task6", "05. The file extension is not showing.")
                userQuizDataSource2.InsertParameters.Add("Task7", "06. The active window was not copied as directed.")
                userQuizDataSource2.InsertParameters.Add("Task8", "07. The entire screen was not copied as directed.")
                userQuizDataSource2.InsertParameters.Add("Task9", "08. The file was not renamed.")
                userQuizDataSource2.InsertParameters.Add("Task10", "09. The folder was not deleted.")
                userQuizDataSource2.InsertParameters.Add("Task11", "10. The window does not show the amount of free space. ")
                userQuizDataSource2.InsertParameters.Add("Task12", "11. The amount of free space was not correctly typed below the window.")
                userQuizDataSource2.InsertParameters.Add("Task13", "12. The correct path name with file name was not identified.")
                userQuizDataSource2.InsertParameters.Add("Task14", "13. The correct Windows Help screen was not displayed.")
                userQuizDataSource2.InsertParameters.Add("Task15", "")
                'userQuizDataSource2.InsertParameters.Add("CheckHash", "FF Task" + User.Identity.Name.ToString + "ff/didlFFTask" + X)
                userQuizDataSource2.InsertParameters.Add("Tasky0", "")
                userQuizDataSource2.InsertParameters.Add("Tasky1", "")
                userQuizDataSource2.InsertParameters.Add("Tasky2", "")
                userQuizDataSource2.InsertParameters.Add("Tasky3", "")
                userQuizDataSource2.InsertParameters.Add("Tasky4", "")
                userQuizDataSource2.InsertParameters.Add("Tasky5", "")
                userQuizDataSource2.InsertParameters.Add("Tasky6", "")
                userQuizDataSource2.InsertParameters.Add("Tasky7", "")
                userQuizDataSource2.InsertParameters.Add("Tasky8", "")
                userQuizDataSource2.InsertParameters.Add("Tasky9", "")
                userQuizDataSource2.InsertParameters.Add("Tasky10", "")
                userQuizDataSource2.InsertParameters.Add("Tasky11", "")
                userQuizDataSource2.InsertParameters.Add("Tasky12", "")
                userQuizDataSource2.InsertParameters.Add("Tasky13", "")
                userQuizDataSource2.InsertParameters.Add("Tasky14", "")
                userQuizDataSource2.InsertParameters.Add("Tasky15", "")

                rowsAffected2 = userQuizDataSource2.Insert()

            End If
        End If

    End Sub


    Protected Sub btnFileUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFileUpload.Click

        Dim strSaveFileAs As String
        Dim strStatusMessage As String = ""
        Dim allFiles(4) As String
        Dim msg As String = ""
        Dim NumberOfFiles As Int16 = 0
        allFiles = GetallFiles(IdentityCol, NumberOfFiles)

        ' Validate if the number of uploaded files are exceeded
        If ((TaskVersion = 4 Or TaskVersion = 6 Or TaskVersion = 10 Or TaskVersion = 14 Or TaskVersion = 16 Or TaskVersion = 10)) Then
            If NumberOfFiles >= 4 Then
                msg = "<script language='javascript'>alert('" & NumberOfFiles & " files are already uploaded for this task, Please contact your grader');</script>"
                ClientScript.RegisterClientScriptBlock(Page.GetType, "Script", msg)
                'MessageBox.Show(NumberOfFiles & " files are already uploaded for this task, Please contact your grader")
                Return
            End If
        Else
            If NumberOfFiles >= 3 Then
                msg = "<script language='javascript'>alert('" & NumberOfFiles & " files are already uploaded for this task, Please contact your grader');</script>"
                ClientScript.RegisterClientScriptBlock(Page.GetType, "Script", msg)
                'MessageBox.Show(NumberOfFiles & " files are already uploaded for this task, Please contact your grader")
                Return
            End If
        End If

        If (Not CheckFileName(myFileUpload.FileName, NumberOfFiles + 1)) Then
            ClientScript.RegisterClientScriptBlock(Page.GetType, "Script", "<script language='javascript'>alert('File name is incorrect. Please correct and upload again');</script>")
            'MessageBox.Show("File name is incorrect. Please correct and upload again")
            Return
        End If



        strSaveFileAs = Server.MapPath("~/uploads/ff/") & User.Identity.Name & myFileUpload.FileName




        lblFileName.Text = myFileUpload.PostedFile.FileName
        lblFileType.Text = myFileUpload.PostedFile.ContentType
        lblFileSize.Text = myFileUpload.PostedFile.ContentLength

        Try
            If myFileUpload.HasFile Then
                myFileUpload.SaveAs(strSaveFileAs)

                'Update filename in corresponding field of UserQuiz.
                Dim Command As SqlCommand = New SqlCommand("UPDATE UserQuiz SET FileName" & NumberOfFiles + 1 & " = @FullFileName WHERE UserQuizId = @UserQuizId")
                Command.Parameters.Add("FullFileName", SqlDbType.VarChar).Value = User.Identity.Name & myFileUpload.FileName
                Command.Parameters.Add("UserQuizId", SqlDbType.Decimal).Value = IdentityCol
                Command.Connection = New SqlConnection(ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString())
                Command.Connection.Open()
                Command.ExecuteNonQuery()

                strStatusMessage = myFileUpload.FileName
                TxtBody.Text = TxtBody.Text + "  File Name:  " + lblFileName.Text + "  File Type:" + lblFileType.Text + "  File Size:" + lblFileSize.Text + "    Transferred:" + DateTime.Now.ToString
            Else
                strStatusMessage = "No file was uploaded."
                TxtBody.Text = TxtBody.Text + strStatusMessage
            End If
        Catch Ex As Exception
            strStatusMessage = "Unable to save the uploaded file.  " & "The error was: " & Ex.Message
        Finally
            strStatusMessage = strStatusMessage + " - Upload Successful"
            lblSaveResults.Text = strStatusMessage
        End Try

    End Sub

    Private Function CheckFileName(fileName As String, NumberOfFiles As Integer) As Boolean
        If ((fileName = "fm" & X & "_file" & NumberOfFiles.ToString() & ".docx") Or (fileName = "fm" & X & "_file" & NumberOfFiles.ToString() & ".doc")) Then
            Return True
        Else
            Return False
        End If
    End Function

    Private Function GetallFiles(UserQuizId As Decimal, ByRef NumberOfFiles As Int16) As String()
        Dim fileList(4) As String
        Dim i As Int16 = 0
        Dim sdr As SqlDataReader
        Dim conn As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString())
        Dim Command As SqlCommand = New SqlCommand("SELECT FileName1 FROM UserQuiz UQ WHERE UserQuizId = @UserQuizId UNION All" & vbCrLf & _
                                                   "SELECT FileName2 FROM UserQuiz UQ WHERE UserQuizId = @UserQuizId UNION All" & vbCrLf & _
                                                   "SELECT FileName3 FROM UserQuiz UQ WHERE UserQuizId = @UserQuizId UNION All" & vbCrLf & _
                                                   "SELECT FileName4 FROM UserQuiz UQ WHERE UserQuizId = @UserQuizId ")
        Command.Parameters.AddWithValue("UserQuizId", IdentityCol)
        Command.Connection = conn
        conn.Open()
        sdr = Command.ExecuteReader()
        While sdr.Read()
            If sdr(0) IsNot Nothing AndAlso sdr(0).ToString() IsNot String.Empty Then
                fileList(i) = sdr(0).ToString()
                i += 1
            End If
        End While

        NumberOfFiles = i
        Return fileList
    End Function



    Protected Sub ExitBtn1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ExitBtn1.Click
        Freeze.Value = 0
        Ptr.Value = 0
        fileName = ""
        Start = ""
        Response.Redirect("~/dashboard.aspx")
    End Sub


End Class
