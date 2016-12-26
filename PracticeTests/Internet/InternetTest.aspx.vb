Imports System.Net.Mail
Imports System.IO
Imports System.Collections.Generic
Imports System.Collections
Imports System.Net
Imports System.Diagnostics.Debug
Imports System.Windows.Forms
Imports System.Data.SqlClient
Imports System.Data
Partial Class Practice_Internet_Test
    Inherits System.Web.UI.Page
    Dim StartTime As DateTime = DateTime.Now.ToString
    Shared SavCt As Integer = 0
    Shared SavCt1 As Integer = 0
    Shared PagCnt As Integer = 0
    Shared BindCt As Integer = 0
    Shared Finished As Integer
    Shared NewAnswer As String = 0
    Shared NewQuestionId As Integer = 0
    Shared SavQuestionId As Integer = 0
    Shared NewCorrectAnswer As String
    Shared InitTime As Integer = 0
    Shared QuestionArray(25) As Integer
    Shared NewTitle As String

    Public Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dr As System.Data.DataRowView
        Dim a As Answer = New Answer()
        Dim al As ArrayList
        If InitTime = 0 Then
            Label2.Text = DateTime.Now.AddMinutes(30).ToString
            InitTime = 1
            For i As Integer = 0 To 25  'clear question array
                QuestionArray(i) = 0
            Next i
        End If

        SavCt1 = 0
        questionDetails.DataBind()
        If IsPostBack = False Then
            If BindCt = 0 And SavQuestionId = NewQuestionId Then

                dr = CType(questionDetails.DataItem, System.Data.DataRowView)
                NewQuestionId = dr("QuestionId").ToString()
                NewCorrectAnswer = dr("CorrectAnswer").ToString()
                NewTitle = dr("Title").ToString()
                QuestionArray(PagCnt) = NewQuestionId
                SavQuestionId = NewQuestionId
                BindCt = 1

                PagCnt = PagCnt + 1
                If PagCnt >= 25 Then

                    a.QuestionID = NewQuestionId.ToString()
                    a.CorrectAnswer = NewCorrectAnswer.ToString()
                    a.UserAnswer = AnswerRadioButtonList.SelectedValue.ToString
                    a.Title = NewTitle.ToString

                    al = CType(Session("AnswerList"), ArrayList)
                    al.Add(a)

                    Session.Add("AnswerList", al)
                    PagCnt = 0
                    BindCt = 0
                    SavCt = 0
                    SavCt1 = 0
                    NewQuestionId = 0
                    SavQuestionId = 0
                    InitTime = 0
                    Finished = 0
                    NewAnswer = ""
                    NewQuestionId = 0
                    NewCorrectAnswer = ""
                    InitTime = 0
                    NewTitle = ""
                    Response.Redirect("InternetResult1.aspx")
                Else


                End If

            End If
            'MsgBox(NewQuestionId.ToString + "  L69 " + BindCt.ToString + "  SavQuestionId  " + SavQuestionId.ToString)
        End If

    End Sub

    Protected Sub NextButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles NextButton1.Click
        Dim dr As System.Data.DataRowView
        Dim a As Answer = New Answer()
        Dim al As ArrayList

        If SavCt1 = 0 Then
            If SavCt = 0 Then

                a.QuestionID = NewQuestionId.ToString()
                a.CorrectAnswer = NewCorrectAnswer.ToString()
                a.UserAnswer = AnswerRadioButtonList.SelectedValue.ToString
                a.Title = NewTitle.ToString
                QuestionArray(PagCnt) = NewQuestionId
                al = CType(Session("AnswerList"), ArrayList)
                al.Add(a)

                Session.Add("AnswerList", al)


                AnswerRadioButtonList.ClearSelection()
                SavCt = 1
                If PagCnt >= 25 Then

                    For i As Integer = 0 To 25  'clear question array
                        QuestionArray(i) = 0
                    Next i

                    PagCnt = 0
                    BindCt = 0
                    SavCt = 0
                    SavCt1 = 0
                    NewQuestionId = 0
                    SavQuestionId = 0
                    InitTime = 0
                    Finished = 0
                    NewAnswer = ""
                    NewQuestionId = 0
                    NewCorrectAnswer = ""
                    InitTime = 0
                    NewTitle = ""
                    Response.Redirect("InternetResult1.aspx")

                Else
                    'If AnswerRadioButtonList.SelectedIndex = -1 Then
                    'MessageBox.Show("You must select an answer (A, B, C, or D) before advancing to the next question.", "Response Required", MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly)
                    'Else
                    'Try
                    'Dim dr As System.Data.DataRowView
                    ' Save off previous answers    

                    'dr = CType(questionDetails.DataItem, System.Data.DataRowView)
                    'Dim a As Answer = New Answer()

                    'a.QuestionID = dr("QuestionId").ToString()
                    'a.CorrectAnswer = dr("CorrectAnswer").ToString()
                    'a.UserAnswer = AnswerRadioButtonList.SelectedValue.ToString

                    'Dim al As ArrayList
                    'al = CType(Session("AnswerList"), ArrayList)
                    'al.Add(a)

                    'Session.Add("AnswerList", al)


                    'PagCnt = PagCnt + 1
                    'Catch ex As Exception
                    ' Sometimes the most difficult decisions involve 
                    ' trying to figure out what should you as a developer
                    ' should do for your user's experience as bad 
                    ' things happen within your application.
                    ' This requires a little empathy ... I recommend a
                    ' quick coffee break while you imagine what
                    ' *you* would want to happen if you were half-way
                    ' through the quiz and something "screwed-up" on
                    ' the server (server reset, etc.)

                    ' In my 'try' statement I have two potential problems.
                    ' 1st, what if the app can't pull the questions 
                    ' from the database for some reason?  2nd, what if  
                    ' the web server can't retrieve the current user's
                    ' session data?  In both cases, I could construct 
                    ' some elaborate work arounds to safeguard against this
                    ' from ever happening, or if I really thought
                    ' this was going to be a huge issue, I could back
                    ' up and re-think how I'm persisting the user's
                    ' answers during the quiz.  However, since my goal
                    ' here is to keep this example application simple,
                    ' I'm merely going to return the user to the 
                    ' default.aspx page.  Please keep in mind that I'm
                    ' not satisfied with this because I think it "surprises"
                    ' and potentially diminishes the quality of the user's
                    ' experience with my application, however I have some 
                    ' time constraints in this tutorial.

                    'MessageBox.Show("Program error has occurred and the program has been terminated", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly)
                    'Response.Redirect("INDefault.aspx")
                    'End Try
                End If

                'MsgBox(NewQuestionId.ToString + "  L158  " + BindCt.ToString + "  SavQuestionId  " + SavQuestionId.ToString)

                'If questionDetails.PageIndex = questionDetails.PageCount - 1 Then
                'Response.Redirect("INResult1.aspx")
                'NextButton1.Text = "Finished"
                'End If
                'End If
            Else


            End If
            If PagCnt >= 25 Then

                a.QuestionID = NewQuestionId.ToString()
                a.CorrectAnswer = NewCorrectAnswer.ToString()
                a.UserAnswer = AnswerRadioButtonList.SelectedValue.ToString()
                a.Title = NewTitle.ToString

                al = CType(Session("AnswerList"), ArrayList)
                al.Add(a)

                Session.Add("AnswerList", al)
                PagCnt = 0
                BindCt = 0
                SavCt = 0
                SavCt1 = 0
                NewQuestionId = 0
                SavQuestionId = 0
                InitTime = 0
                Finished = 0
                NewAnswer = ""
                NewQuestionId = 0
                NewCorrectAnswer = ""
                InitTime = 0
                NewTitle = ""
                For i As Integer = 0 To 25
                    QuestionArray(i) = 0
                Next i
                Response.Redirect("InternetResult1.aspx")
            Else
                SavCt = 0
                BindCt = 0
                SavCt1 = 1


                dr = CType(questionDetails.DataItem, System.Data.DataRowView)
                NewQuestionId = dr("QuestionId").ToString
                For i As Integer = 0 To 25
                    If QuestionArray(i) = NewQuestionId Then
                        Dim userQuizDataSource As SqlDataSource = New SqlDataSource()
                        Dim rowsAffected
                        userQuizDataSource.ConnectionString = ConfigurationManager.ConnectionStrings("jumpstartConnectionString").ToString()
                        userQuizDataSource.SelectCommand = "SELECT QuestionId, Title, Answer1, Answer2, Answer3, Answer4, Answer5, CorrectAnswer, AnswerExplanation, QuestionNo, Sections FROM Questions WHERE (Sections = 'Internet') ORDER BY newid()"
                        
                        questionDetails.DataBind()
                        dr = CType(questionDetails.DataItem, System.Data.DataRowView)
                        NewQuestionId = dr("QuestionId")

                    End If
                Next i
                QuestionArray(PagCnt) = NewQuestionId
                NewCorrectAnswer = dr("CorrectAnswer").ToString()
                NewTitle = dr("Title").ToString()

                PagCnt = PagCnt + 1
            End If
        End If
    End Sub

    Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.PreInit

        'If Profile.IsAnonymous = True Then
        '    Response.Redirect("~/Login.aspx")
        'End If

    End Sub

    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Label1.Text = DateTime.Now.ToString
        If InitTime = 0 Then
            Label2.Text = DateTime.Now.AddMinutes(30).ToString
            InitTime = 1
            For i As Integer = 0 To 25  'clear question array
                QuestionArray(i) = 0
            Next i
        End If
        If Label2.Text = Label1.Text Then
            MesgLabel.Visible = "True"
        End If

    End Sub

End Class
