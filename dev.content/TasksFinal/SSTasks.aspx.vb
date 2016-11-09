Imports System.Net.Mail
Imports System.IO
Imports System.Collections.Generic
Imports System.Net
Imports System.Web.UI.WebControls
Partial Class TestingCenter_FinalTests_SSTasks
    Inherits System.Web.UI.Page
    Dim StartTime As DateTime = DateTime.Now.ToString
    Dim fileName As String
    Dim Start As String
    Shared Freeze As Integer
    Shared Ptr As Integer = 0
    Dim EndTime As DateTime
    Dim MailMessage As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage()
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        If IsPostBack = False Then
            Freeze = 0
            'Ptr = 0
            fileName = ""
            Start = ""

        End If
    End Sub

    Protected Sub BtnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnSend.Click

        If TxtFrom.Text = "" Or TxtName.Text = "" Then

            Required1.Visible = "True"
            Required2.Visible = "True"
        Else
            MailMessage.From = New System.Net.Mail.MailAddress(TxtFrom.Text.Trim())
            MailMessage.To.Add(New System.Net.Mail.MailAddress(TxtTo.Text.Trim()))
            MailMessage.Subject = TxtSubject.Text.Trim()
            MailMessage.Body = TxtBody.Text + "          End:  " + DateTime.Now.ToString + "  Name : " + TxtName.Text.Trim()

            Dim smtpClient As System.Net.Mail.SmtpClient = New System.Net.Mail.SmtpClient()

            smtpClient.Send(MailMessage)

            TxtFrom.Text = ""
            TxtSubject.Text = ""
            TxtBody.Text = ""
            TxtBody.Text = ""
            TxtName.Text = ""
            Console.WriteLine("Email sent")
            Required1.Visible = "False"
            Required2.Visible = "False"
            BtnSend.Visible = "False"

            Response.Redirect("~/Login.aspx")
        End If
    End Sub
    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Label1.Text = DateTime.Now.ToString
        If Label1.Text = Label2.Text Then
            Freeze = 0
            Ptr = 0
            fileName = ""
            Start = ""
            Response.Redirect("~/Login.aspx")

        End If
        If Not IsPostBack Then

        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        If Ptr = 0 Then
            If Page.IsPostBack = False Then
                Dim n As Integer = New Random().Next(1, 20)

                If Profile.IsAnonymous = False Then
                    Session.Add("UserName", User.Identity.Name)
                    Session.Add("QuizId", 33)
                Else
                    Response.Redirect("~/Login.aspx")
                End If

                If Freeze = 0 Then
                    EndTime = DateTime.Now.AddMinutes(30).ToString
                    Start = DateTime.Now.ToString
                    Freeze = 1
                    Label2.Text = EndTime.ToString
                End If


                TaskLink1.NavigateUrl = "~/FinalTests/Tasks/SS/didlSSTask" + n.ToString + ".pdf"
                TxtBody.Text = "Tasks/SS/didlSSTask" + n.ToString + ".pdf  -----  Start: " + Start
                TxtName.Text = User.Identity.Name.Trim()
                'Try

                ' Save the results into the database.

                Ptr = 1
                If IsPostBack = False Then
                    Dim rowsAffected
                    Dim userQuizDataSource As SqlDataSource = New SqlDataSource()
                    'Dim rowsAffected

                    userQuizDataSource.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                    userQuizDataSource.InsertCommand = "INSERT INTO InvoiceItem (Item, Description, Quantity, Price, Amount, Taxable, TranDate, UserName) VALUES (@Item, @Description, @Quantity, @Price, @Amount, @Taxable, @TranDate, @UserName)"
                    userQuizDataSource.InsertParameters.Add("Item", "Task")
                    userQuizDataSource.InsertParameters.Add("Description", "ss/didlSSTask" + n.ToString)
                    userQuizDataSource.InsertParameters.Add("Quantity", 1)
                    userQuizDataSource.InsertParameters.Add("Price", 5)
                    userQuizDataSource.InsertParameters.Add("Amount", 5)
                    userQuizDataSource.InsertParameters.Add("Taxable", "Yes")
                    userQuizDataSource.InsertParameters.Add("TranDate", DateTime.Now.ToString)
                    userQuizDataSource.InsertParameters.Add("UserName", User.Identity.Name.ToString)

                    'rowsAffected = userQuizDataSource.ToString
                    rowsAffected = userQuizDataSource.Insert()


                    Dim rowsAffected1 As String
                    Dim userQuizDataSource1 As SqlDataSource = New SqlDataSource()
                    'Dim rowsAffected

                    userQuizDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                    userQuizDataSource1.InsertCommand = "INSERT INTO UserQuiz (QuizId, DateTimeComplete, Score, UserName, Questions, CorrectAns, CustomerId, School, Campus, Class, Grader, GradeDesc, Type, Grade, DateTaken) VALUES (@QuizId, @DateTimeComplete, @Score, @UserName, @Questions, @CorrectAns, @CustomerId, @School, @Campus, @Class, @Grader, @GradeDesc, @Type, @Grade, @DateTaken)"
                    'userQuizDataSource1.SelectCommand = "SELECT School, Campus, Class FROM Users WHERE UserName=@UserName"

                    userQuizDataSource1.InsertParameters.Add("GradeDesc", "ss/didlSSTask" + n.ToString)
                    userQuizDataSource1.InsertParameters.Add("Questions", 0)
                    userQuizDataSource1.InsertParameters.Add("School", 2)
                    userQuizDataSource1.InsertParameters.Add("Campus", 5)
                    userQuizDataSource1.InsertParameters.Add("Class", 5)
                    userQuizDataSource1.InsertParameters.Add("CustomerId", "")
                    userQuizDataSource1.InsertParameters.Add("DateTaken", DateTime.Now.ToString)
                    userQuizDataSource1.InsertParameters.Add("DateTimeComplete", "")
                    userQuizDataSource1.InsertParameters.Add("UserName", User.Identity.Name.ToString)
                    userQuizDataSource1.InsertParameters.Add("QuizId", Session("QuizID").ToString())
                    userQuizDataSource1.InsertParameters.Add("Grader", Int(1))
                    userQuizDataSource1.InsertParameters.Add("Type", "Task")
                    userQuizDataSource1.InsertParameters.Add("Score", "")
                    userQuizDataSource1.InsertParameters.Add("Grade", "")
                    userQuizDataSource1.InsertParameters.Add("CorrectAns", "")
                    rowsAffected1 = userQuizDataSource1.Insert()
                End If

            End If
        End If
        TxtSubject.Text = "SpreadSheet Task Results"
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

        strSaveFileAs = Server.MapPath("~/uploads/ss/") & User.Identity.Name & myFileUpload.FileName

        lblFileName.Text = myFileUpload.PostedFile.FileName
        lblFileType.Text = myFileUpload.PostedFile.ContentType
        lblFileSize.Text = myFileUpload.PostedFile.ContentLength

        Try
            If myFileUpload.HasFile Then
                myFileUpload.SaveAs(strSaveFileAs)
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
    Protected Sub ExitBtn1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ExitBtn1.Click
        Freeze = 0
        Ptr = 0
        fileName = ""
        Start = ""
        Response.Redirect("~/Index.aspx")
    End Sub
End Class
