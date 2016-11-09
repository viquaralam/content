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
Partial Class TestingCenter_FinalTests_WPTasks
    Inherits System.Web.UI.Page
    Dim StartTime As DateTime = DateTime.Now.ToString
    Dim EndTime As DateTime
    Dim Start As String
    Shared Freeze As Integer
    Dim fileName As String
    Shared Ptr As Integer = 0
    Dim MailMessage As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage()
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Dim dr As System.Data.DataRowView
        Dim userQuizDataSource3 As SqlDataSource = New SqlDataSource()

        If IsPostBack = False Then
            If Profile.IsAnonymous = False Then
                Session.Add("UserName", User.Identity.Name)


                'Label3.Text = "You have and ungraded Word Processing task. Try again later"
                'Response.Redirect("~/Login.aspx")
                Freeze = 0
                'Ptr = 0
                fileName = ""
                Start = ""

            Else
                Response.Redirect("~/Login.aspx")
            End If
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
            MailMessage.Body = TxtBody.Text + "          Start:  " & StartTime.ToString & "          End:  " + DateTime.Now.ToString + "  Name : " + TxtName.Text.Trim()

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
                Dim X As String
                If n < 10 Then
                    X = "0" + n.ToString
                Else
                    X = n.ToString
                End If

                If Profile.IsAnonymous = False Then
                    Session.Add("UserName", User.Identity.Name)
                    Session.Add("QuizId", 32)
                Else
                    Freeze = 0
                    Ptr = 0
                    fileName = ""
                    Start = ""
                    Response.Redirect("~/Login.aspx")
                End If

                If Freeze = 0 Then
                    EndTime = DateTime.Now.AddMinutes(30).ToString
                    Start = DateTime.Now.ToString
                    Freeze = 1
                    Label2.Text = EndTime.ToString
                End If

                TaskLink1.NavigateUrl = "~/FinalTests/Tasks/WP/didlWPTask" + n.ToString + ".pdf"
                TxtBody.Text = "Tasks/WP/didlWPTask" + n.ToString + ".pdf  -----  Start: " + Start
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
                    userQuizDataSource.InsertParameters.Add("Item", "WP Task")
                    userQuizDataSource.InsertParameters.Add("Description", "WP/didlWPTask" + X)
                    userQuizDataSource.InsertParameters.Add("Quantity", 1)
                    userQuizDataSource.InsertParameters.Add("Price", 5)
                    userQuizDataSource.InsertParameters.Add("Amount", 5)
                    userQuizDataSource.InsertParameters.Add("Taxable", "Yes")
                    userQuizDataSource.InsertParameters.Add("TranDate", DateTime.Now.ToString)
                    userQuizDataSource.InsertParameters.Add("UserName", User.Identity.Name.ToString)

                    'rowsAffected = userQuizDataSource.ToString
                    rowsAffected = userQuizDataSource.Insert()
                    Dim rowsAffected2 As String
                    Dim userQuizDataSource2 As SqlDataSource = New SqlDataSource()


                    userQuizDataSource2.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                    userQuizDataSource2.InsertCommand = "INSERT INTO CheckList (TaskType, TaskDate, TaskVer, UserName, TaskGrade, Task0, Task1, Task2, Task3, Task4, Task5, Task6, Task7, Task8, Task9, Task10, Task11, Task12, Task13, Task14, Task15, Task16, Task17, Task18, Task19, Task20, Task21, CheckHash, Tasky0, Tasky1, Tasky2, Tasky3, Tasky4, Tasky5, Tasky6, Tasky7, Tasky8, Tasky9, Tasky10, Tasky11, Tasky12, Tasky13, Tasky14, Tasky15, Tasky16, Tasky17, Tasky18, Tasky19, Tasky20, Tasky21) VALUES (@TaskType, @TaskDate, @TaskVer, @UserName, @TaskGrade, @Task0, @Task1, @Task2, @Task3, @Task4, @Task5, @Task6, @Task7, @Task8, @Task9, @Task10, @Task11, @Task12, @Task13, @Task14, @Task15, @Task16, @Task17, @Task18, @Task19, @Task20, @Task21, @CheckHash, @Tasky0, @Tasky1, @Tasky2, @Tasky3, @Tasky4, @Tasky5, @Tasky6, @Tasky7, @Tasky8, @Tasky9, @Tasky10, @Tasky11, @Tasky12, @Tasky13, @Tasky14, @Tasky15, @Tasky16, @Tasky17, @Tasky18, @Tasky19, @Tasky20, @Tasky21)"

                    userQuizDataSource2.InsertParameters.Add("TaskType", "WP Task")
                    userQuizDataSource2.InsertParameters.Add("TaskVer", "wp/didlWPTask" + X)
                    userQuizDataSource2.InsertParameters.Add("TaskDate", DateTime.Now.ToString)
                    userQuizDataSource2.InsertParameters.Add("UserName", User.Identity.Name.ToString)
                    userQuizDataSource2.InsertParameters.Add("TaskGrade", "UnGraded")
                    userQuizDataSource2.InsertParameters.Add("Task0", "Congratulations! You have successfully passed the task.")
                    userQuizDataSource2.InsertParameters.Add("Task1", "No files were uploaded for this task.")
                    userQuizDataSource2.InsertParameters.Add("Task2", "01. The header information is not entered as required.")
                    userQuizDataSource2.InsertParameters.Add("Task3", "02. The margins are not correct.")
                    userQuizDataSource2.InsertParameters.Add("Task4", "03. The date field is not justified/aligned correctly, or is not spaced or formatted correctly in the document.")
                    userQuizDataSource2.InsertParameters.Add("Task5", "04. The date field is not an automatically updating field.")
                    userQuizDataSource2.InsertParameters.Add("Task6", "05. The text border is incorrect.")
                    userQuizDataSource2.InsertParameters.Add("Task7", "06. The paragraph border is incorrect.")
                    userQuizDataSource2.InsertParameters.Add("Task8", "07. Bold was not applied correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task9", "08. Underline was not applied correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task10", "09. Font is incorrect.")
                    userQuizDataSource2.InsertParameters.Add("Task11", "10. Italics was not applied correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task12", "11. Spelling was not corrected in all instances.")
                    userQuizDataSource2.InsertParameters.Add("Task13", "12. Alignment/justification is incorrect.")
                    userQuizDataSource2.InsertParameters.Add("Task14", "13. Shading was not applied correctly. ")
                    userQuizDataSource2.InsertParameters.Add("Task15", "14. Text was not replaced in all instances.")
                    userQuizDataSource2.InsertParameters.Add("Task16", "15. Indention was not applied correctly to the specified paragraphs.")
                    userQuizDataSource2.InsertParameters.Add("Task17", "16. Bullets were not applied correctly to the specified paragraphs.")
                    userQuizDataSource2.InsertParameters.Add("Task18", "17. The footer information was not entered or aligned correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task19", "18. Line spacing is incorrect.")
                    userQuizDataSource2.InsertParameters.Add("Task20", "19. Table was not created correctly.")
                    userQuizDataSource2.InsertParameters.Add("Task21", "")
                    userQuizDataSource2.InsertParameters.Add("CheckHash", "WP Task" + User.Identity.Name.ToString + "wp/didlWPTask" + X)
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

                    rowsAffected2 = userQuizDataSource2.Insert()

                    Dim rowsAffected1 As String
                    Dim userQuizDataSource1 As SqlDataSource = New SqlDataSource()
                    Dim userEnrollDataSource3 As SqlDataSource = New SqlDataSource()
                    Dim dr As System.Data.DataRowView

                    FormView1.DataBind()
                    dr = CType(FormView1.DataItem, System.Data.DataRowView)

                    userQuizDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                    userQuizDataSource1.InsertCommand = "INSERT INTO UserQuiz (QuizId, DateTimeComplete, Score, UserName, Questions, CorrectAns, CustomerId, School, Campus, Class, Grader, GradeDesc, Type, Grade, DateTaken, CheckHash) VALUES (@QuizId, @DateTimeComplete, @Score, @UserName, @Questions, @CorrectAns, @CustomerId, @School, @Campus, @Class, @Grader, @GradeDesc, @Type, @Grade, @DateTaken, @CheckHash)"

                    userQuizDataSource1.InsertParameters.Add("GradeDesc", "wp/didlWPTask" + X)
                    userQuizDataSource1.InsertParameters.Add("Questions", 0)
                    userQuizDataSource1.InsertParameters.Add("School", dr("EnrollSchoolId").ToString)
                    userQuizDataSource1.InsertParameters.Add("Campus", dr("EnrollCampus").ToString)
                    userQuizDataSource1.InsertParameters.Add("Class", dr("EnrollClass").ToString)
                    userQuizDataSource1.InsertParameters.Add("CustomerId", dr("EnrollCustomerId").ToString())
                    userQuizDataSource1.InsertParameters.Add("DateTaken", DateTime.Now.ToString)
                    userQuizDataSource1.InsertParameters.Add("DateTimeComplete", "")
                    userQuizDataSource1.InsertParameters.Add("UserName", User.Identity.Name.ToString)
                    userQuizDataSource1.InsertParameters.Add("QuizId", Session("QuizID").ToString())
                    userQuizDataSource1.InsertParameters.Add("Grader", Int(0))
                    userQuizDataSource1.InsertParameters.Add("Type", "WP Task")
                    userQuizDataSource1.InsertParameters.Add("Score", "")
                    userQuizDataSource1.InsertParameters.Add("Grade", "Ungraded")
                    userQuizDataSource1.InsertParameters.Add("CorrectAns", "")
                    userQuizDataSource1.InsertParameters.Add("CheckHash", "WP Task" + User.Identity.Name.ToString + "wp/didlWPTask" + X)
                    rowsAffected1 = userQuizDataSource1.Insert()

                    

                End If
            End If
        End If
        TxtSubject.Text = "Word Processing Task Results"
    End Sub

    Protected Function GetUploadList() As String()
        Dim folder As String = Server.MapPath("~/Uploads/WP/")
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

        strSaveFileAs = Server.MapPath("~/uploads/wp/") & User.Identity.Name & myFileUpload.FileName

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
        Response.Redirect("~/dashboard.aspx")
    End Sub
End Class

