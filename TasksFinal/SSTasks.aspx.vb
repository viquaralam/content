Imports System.Net.Mail
Imports System.IO
Imports System.Collections.Generic
Imports System.Net
Imports System.Web.UI.WebControls
Imports System.Windows.Forms

Partial Class TestingCenter_FinalTests_SSTasks
    Inherits System.Web.UI.Page
    Dim StartTime As DateTime = DateTime.Now.ToString
    Dim EndTime As DateTime
    Dim Start As String
    'Shared Freeze As Integer
    Dim fileName As String
    'Shared Ptr As Integer = 0
    Dim MailMessage As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage()
    Shared TaskVersion As Integer
    Shared IdentityCol As Int16
    Shared X As String
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If IsPostBack = False Then

            Freeze.Value = 0
            Ptr.Value = 0
            fileName = ""
            Start = ""

        End If
    End Sub

    'Protected Sub BtnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnSend.Click

    '    If TxtFrom.Text = "" Or TxtName.Text = "" Then

    '        Required1.Visible = "True"
    '        Required2.Visible = "True"
    '    Else
    '        MailMessage.From = New System.Net.Mail.MailAddress(TxtFrom.Text.Trim())
    '        MailMessage.To.Add(New System.Net.Mail.MailAddress(TxtTo.Text.Trim()))
    '        MailMessage.Subject = TxtSubject.Text.Trim()
    '        MailMessage.Body = TxtBody.Text + "          End:  " + DateTime.Now.ToString + "  Name : " + TxtName.Text.Trim()

    '        Dim smtpClient As System.Net.Mail.SmtpClient = New System.Net.Mail.SmtpClient()

    '        smtpClient.Send(MailMessage)

    '        TxtFrom.Text = ""
    '        TxtSubject.Text = ""
    '        TxtBody.Text = ""
    '        TxtBody.Text = ""
    '        TxtName.Text = ""
    '        Console.WriteLine("Email sent")
    '        Required1.Visible = "False"
    '        Required2.Visible = "False"
    '        BtnSend.Visible = "False"

    '        Response.Redirect("~/Login.aspx")
    '    End If
    'End Sub
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
                Dim n As Integer = New Random().Next(1, 20)

                If n < 10 Then
                    X = "0" + n.ToString
                Else
                    X = n.ToString
                End If
                Session.Add("QuizId", 33)
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


                TaskLink1.NavigateUrl = "~/FinalTests/Tasks/SS/didlSSTask" + n.ToString + ".pdf"
                'TxtBody.Text = "Tasks/SS/didlSSTask" + X + ".pdf  -----  Start: " + Start
                'TxtName.Text = User.Identity.Name.Trim()
                'Try

                ' Save the results into the database.

                Ptr.Value = 1
                If IsPostBack = False Then
                    Dim rowsAffected
                    Dim userQuizDataSource As SqlDataSource = New SqlDataSource()
                    'Dim rowsAffected

                    userQuizDataSource.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                    userQuizDataSource.InsertCommand = "INSERT INTO InvoiceItem (Item, Description, Quantity, Price, Amount, Taxable, TranDate, UserName) VALUES (@Item, @Description, @Quantity, @Price, @Amount, @Taxable, @TranDate, @UserName)"
                    userQuizDataSource.InsertParameters.Add("Item", "Task")
                    userQuizDataSource.InsertParameters.Add("Description", "ss/didlSSTask" + X)
                    userQuizDataSource.InsertParameters.Add("Quantity", 1)
                    userQuizDataSource.InsertParameters.Add("Price", 5)
                    userQuizDataSource.InsertParameters.Add("Amount", 5)
                    userQuizDataSource.InsertParameters.Add("Taxable", "Yes")
                    userQuizDataSource.InsertParameters.Add("TranDate", DateTime.Now.ToString)
                    userQuizDataSource.InsertParameters.Add("UserName", User.Identity.Name.ToString)

                    'rowsAffected = userQuizDataSource.ToString
                    rowsAffected = userQuizDataSource.Insert()



                    Dim rowsAffected1 As String

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
                    userQuizDataSource1.CommandText = "INSERT INTO UserQuiz (QuizId, Score, UserName, Questions, CorrectAns, CustomerId, School, Campus, Class, Grader, GraderUserName, GradeDesc, Type, Grade, DateTaken) OUTPUT INSERTED.UserQuizId  VALUES (@QuizId, @Score, @UserName, @Questions, @CorrectAns, @CustomerId, @School, @Campus, @Class, @Grader, @GraderUserName, @GradeDesc, 'SS Task', @Grade, @DateTaken)"
                    userQuizDataSource1.Connection.Open()
                    userQuizDataSource1.Parameters.AddWithValue("GradeDesc", "ss/didlSSTask" + X)
                    userQuizDataSource1.Parameters.AddWithValue("Questions", 0)
                    userQuizDataSource1.Parameters.AddWithValue("School", UserSchool)
                    userQuizDataSource1.Parameters.AddWithValue("Campus", UserCampus)
                    userQuizDataSource1.Parameters.AddWithValue("Class", UserClass)
                    userQuizDataSource1.Parameters.AddWithValue("CustomerId", CustomerId)
                    userQuizDataSource1.Parameters.AddWithValue("DateTaken", DateTime.Now.ToString)
                    'userQuizDataSource1.Parameters.AddWithValue("DateTimeComplete", "")
                    userQuizDataSource1.Parameters.AddWithValue("UserName", User.Identity.Name.ToString)
                    userQuizDataSource1.Parameters.AddWithValue("QuizId", 33)
                    userQuizDataSource1.Parameters.AddWithValue("Grader", ClassNumber)
                    userQuizDataSource1.Parameters.AddWithValue("GraderUserName", GrdrUsername)
                    userQuizDataSource1.Parameters.AddWithValue("Type", "SS Task")
                    userQuizDataSource1.Parameters.AddWithValue("Score", DBNull.Value)
                    userQuizDataSource1.Parameters.AddWithValue("Grade", "Ungraded")
                    userQuizDataSource1.Parameters.AddWithValue("CorrectAns", "")
                    'userQuizDataSource1.InsertParameters.Add("CheckHash", "SS Task" + User.Identity.Name.ToString + "ss/didlSSTask" + X)

                    IdentityCol = userQuizDataSource1.ExecuteScalar()

                    Dim conn As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString())
                    Dim Command As SqlCommand ' = New SqlCommand("SELECT IDENT_CURRENT ('UserQuiz') AS Current_Identity")
                    'Command.Connection = conn
                    'Dim Identity As Decimal = DirectCast(Command.ExecuteScalar(), Decimal)

                    Command = New SqlCommand("UPDATE Users SET TimesSS = ISNULL(TimesSS, 0) + 1 WHERE UserName = @UserName")
                    Command.Parameters.Add("UserName", SqlDbType.VarChar).Value = User.Identity.Name
                    Command.Connection = conn
                    conn.Open()
                    Command.ExecuteNonQuery()

                    'Close the connection now
                    conn.Close()

                    Dim rowsAffected2 As String
                    Dim userQuizDataSource2 As SqlDataSource = New SqlDataSource()

                    userQuizDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                    userQuizDataSource2.InsertCommand = "INSERT INTO CheckList (UserQuizId, TaskType, TaskDate, TaskVer, UserName, TaskGrade, Task0, Task1, Task2, Task3, Task4, Task5, Task6, Task7, Task8, Task9, Task10, Task11, Task12, Task13, Task14, Task15, Task16, Task17, Task18, Task19, Task20, Task21, Task22, Task23, Task24, Task25, Task26, Task27, Task28, Task29, Task30, Tasky0, Tasky1, Tasky2, Tasky3, Tasky4, Tasky5, Tasky6, Tasky7, Tasky8, Tasky9, Tasky10, Tasky11, Tasky12, Tasky13, Tasky14, Tasky15, Tasky16, Tasky17, Tasky18, Tasky19, Tasky20, Tasky21, Tasky22, Tasky23, Tasky24, Tasky25, Tasky26, Tasky27, Tasky28, Tasky29, Tasky30) VALUES (@UserQuizId, @TaskType, @TaskDate, @TaskVer, @UserName, @TaskGrade, @Task0, @Task1, @Task2, @Task3, @Task4, @Task5, @Task6, @Task7, @Task8, @Task9, @Task10, @Task11, @Task12, @Task13, @Task14, @Task15, @Task16, @Task17, @Task18, @Task19, @Task20, @Task21, @Task22, @Task23, @Task24, @Task25, @Task26, @Task27, @Task28, @Task29, @Task30 ,@Tasky0, @Tasky1, @Tasky2, @Tasky3, @Tasky4, @Tasky5, @Tasky6, @Tasky7, @Tasky8, @Tasky9, @Tasky10, @Tasky11, @Tasky12, @Tasky13, @Tasky14, @Tasky15, @Tasky16, @Tasky17, @Tasky18, @Tasky19, @Tasky20, @Tasky21, @Tasky22, @Tasky23, @Tasky24, @Tasky25, @Tasky26, @Tasky27, @Tasky28, @Tasky29, @Tasky30)"

                    userQuizDataSource2.InsertParameters.Add("UserQuizId", IdentityCol)
                    userQuizDataSource2.InsertParameters.Add("TaskType", "SS Task")
                    userQuizDataSource2.InsertParameters.Add("TaskVer", "ss/didlSSTask" + X)
                    userQuizDataSource2.InsertParameters.Add("TaskDate", DateTime.Now.ToString)
                    userQuizDataSource2.InsertParameters.Add("UserName", User.Identity.Name.ToString)
                    userQuizDataSource2.InsertParameters.Add("TaskGrade", "Ungraded")
                    userQuizDataSource2.InsertParameters.Add("Task0", "Congratulations! You have successfully passed the task.")
                    userQuizDataSource2.InsertParameters.Add("Task1", "No files were uploaded for this task.")
                    userQuizDataSource2.InsertParameters.Add("Task2", "01. The header information is not entered as required.")
                    userQuizDataSource2.InsertParameters.Add("Task3", "02. The margins are not correct.")
                    userQuizDataSource2.InsertParameters.Add("Task4", "03. The date field is not entered correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task5", "04. Page orientation on printout is not correct. ")
                    userQuizDataSource2.InsertParameters.Add("Task6", "05. Row and Column headings are not displayed or hidden on the printout as called for in the instructions.")
                    userQuizDataSource2.InsertParameters.Add("Task7", "06. Gridlines are not displayed or hidden on the printout as called for in the instructions.")
                    userQuizDataSource2.InsertParameters.Add("Task8", "07. Number of pages is not as directed or fit to one page option is not used.")
                    userQuizDataSource2.InsertParameters.Add("Task9", "08. Column labels are not justified as directed.")
                    userQuizDataSource2.InsertParameters.Add("Task10", "09. Numbers or cells are not formatted correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task11", "10. Number of decimals is not correct.")
                    userQuizDataSource2.InsertParameters.Add("Task12", "11. Numbers are not entered correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task13", "12. Text or labels are not entered correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task14", "13. Formulas and/or totals are not correct.")
                    userQuizDataSource2.InsertParameters.Add("Task15", "14. Functions such as max, min, or average are not entered as directed.")
                    userQuizDataSource2.InsertParameters.Add("Task16", "15. Formulas are not displayed on the printout.")
                    userQuizDataSource2.InsertParameters.Add("Task17", "16. Type of chart was not created as directed.")
                    userQuizDataSource2.InsertParameters.Add("Task18", "17. Chart is not created correctly from the right data range")
                    userQuizDataSource2.InsertParameters.Add("Task19", "18. Chart title is not correct.")
                    userQuizDataSource2.InsertParameters.Add("Task20", "19. Legend is not shown/hidden as directed or does not show the column or row labels.")
                    userQuizDataSource2.InsertParameters.Add("Task21", "20. Row or column labels are not shown on the chart correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task22", "21. Values or percentages are not showing on chart as directed.")
                    userQuizDataSource2.InsertParameters.Add("Task23", "22. Chart(s) is not sized to fit on one page.")
                    userQuizDataSource2.InsertParameters.Add("Task24", "23. Column is not repeated on the second page.")
                    userQuizDataSource2.InsertParameters.Add("Task25", "24. Spacing is not as directed or column is not sized correctly to show contents.")
                    userQuizDataSource2.InsertParameters.Add("Task26", "25. Columns were not moved correctly, leaving no blank columns.")
                    userQuizDataSource2.InsertParameters.Add("Task27", "26. Columns were not inserted correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task28", "27. Shading not created as directed.")
                    userQuizDataSource2.InsertParameters.Add("Task29", "28. The footer information was not entered or aligned correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task30", "")
                    'userQuizDataSource2.InsertParameters.Add("CheckHash", "SS Task" + User.Identity.Name.ToString + "ss/didlSSTask" + X)
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
                    userQuizDataSource2.InsertParameters.Add("Tasky16", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky17", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky18", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky19", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky20", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky21", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky22", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky23", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky24", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky25", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky26", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky27", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky28", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky29", "")
                    userQuizDataSource2.InsertParameters.Add("Tasky30", "")

                    rowsAffected2 = userQuizDataSource2.Insert()



                End If

            End If
        End If
        'TxtSubject.Text = "SpreadSheet Task Results"
    End Sub

    Protected Function GetUploadList() As String()
        Dim folder As String = Server.MapPath("~/uploads/ss/")
        Dim files() As String = Directory.GetFiles(folder)

        Dim fileNames(files.Length - 1) As String
        Array.Sort(files)

        For i As Integer = 0 To files.Length - 1
            fileNames(i) = Path.GetFileName(files(i))
            fileName = fileNames(i)
        Next

        Return fileNames
    End Function


    Protected Function DoNothing() As Boolean
        Return False
    End Function

    Protected Sub btnFileUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFileUpload.Click

        Dim strSaveFileAs As String
        Dim strStatusMessage As String = ""
        Dim allFiles(4) As String
        Dim msg As String = ""

        Dim NumberOfFiles As Int16 = 0
        allFiles = GetallFiles(IdentityCol, NumberOfFiles)

        ' Validate if the number of uploaded files are exceeded

        If NumberOfFiles >= 3 Then
            msg = "<script language='javascript'>alert('" & NumberOfFiles & " files are already uploaded for this task, Please contact your grader');</script>"
            ClientScript.RegisterClientScriptBlock(Page.GetType, "Script", msg)
            Return
        End If

        If (Not CheckFileName(myFileUpload.FileName, NumberOfFiles + 1)) Then
            msg = "<script language='javascript'>alert('File name is incorrect. Please correct and upload again');</script>"
            ClientScript.RegisterClientScriptBlock(Page.GetType, "Script", msg)
            Return
        End If



        strSaveFileAs = Server.MapPath("~/uploads/ss/") & User.Identity.Name & myFileUpload.FileName

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
                'TxtBody.Text = TxtBody.Text + "  File Name:  " + lblFileName.Text + "  File Type:" + lblFileType.Text + "  File Size:" + lblFileSize.Text + "    Transferred:" + DateTime.Now.ToString
            Else
                strStatusMessage = "No file was uploaded."
                'TxtBody.Text = TxtBody.Text + strStatusMessage
            End If
        Catch Ex As Exception
            strStatusMessage = "Unable to save the uploaded file.  " & "The error was: " & Ex.Message
        Finally
            strStatusMessage = strStatusMessage + " - Upload Successful"
            lblSaveResults.Text = strStatusMessage
        End Try
    End Sub
    Private Function CheckFileName(fileName As String, NumberOfFiles As Integer) As Boolean
        If (NumberOfFiles < 3 And ((fileName = "ss" & X & "_file" & NumberOfFiles.ToString() & ".pdf"))) Then
            Return True
        ElseIf (NumberOfFiles = 3) Then
            If ((TaskVersion = 1 Or TaskVersion = 11 Or TaskVersion = 4 Or TaskVersion = 14)) Then
                If ((fileName = "ss" & X & "_grades.xlsx") Or (fileName = "ss" & X & "_grades.xls")) Then
                    Return True
                Else
                    Return False
                End If
            Else
                If ((fileName = "ss" & X & "_task.xlsx") Or (fileName = "ss" & X & "_task.xls")) Then
                    Return True
                Else
                    Return False
                End If
            End If
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
