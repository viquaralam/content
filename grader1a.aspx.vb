Imports System.Net.Mail
Imports System.IO
Imports System.Collections.Generic
Imports System.Net
Imports System.Web.UI.WebControls
Partial Class Grader1a
    Inherits System.Web.UI.Page
    Dim fileName As String
    Dim Dr As System.Data.DataRowView
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            'If Profile.IsAnonymous = False Then
            '    Session.Add("UserName", User.Identity.Name)
            'Else
            '    Response.Redirect("~/Login.aspx")
            'End If
        End If

        If Page.IsPostBack = False Then

            FormView1.DataBind()
            Dr = CType(FormView1.DataItem, System.Data.DataRowView)
            

            If Left(Dr("TaskType"), 2) = "FF" Then

                HyperLink2.Visible = "True"
                HyperLink3.Visible = "True"
                HyperLink4.Visible = "True"
                HyperLink1.NavigateUrl = "http://www.didljumpstart.com/uploads/ff/" + RTrim(Dr("UserName").ToString()) + "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file1.doc"
                HyperLink1.Text = "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file1.pdf"
                HyperLink2.NavigateUrl = "http://www.didljumpstart.com/uploads/ff/" + RTrim(Dr("UserName").ToString()) + "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file2.doc"
                HyperLink2.Text = "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file2.pdf"
                HyperLink3.NavigateUrl = "http://www.didljumpstart.com/uploads/ff/" + RTrim(Dr("UserName").ToString()) + "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file3.pdf"
                HyperLink3.Text = "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file3.pdf"
                If Right(Dr("TaskVer").ToString(), 2) = "04" Or Right(Dr("TaskVer").ToString(), 2) = "06" Or Right(Dr("TaskVer").ToString(), 2) = "10" Or Right(Dr("TaskVer").ToString(), 2) = "14" Or Right(Dr("TaskVer").ToString(), 2) = "16" Or Right(Dr("TaskVer").ToString(), 2) = "20" Then
                    HyperLink4.Visible = "True"
                    HyperLink4.NavigateUrl = "http://www.didljumpstart.com/uploads/ff/" + RTrim(Dr("UserName").ToString()) + "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file4.pdf"
                    HyperLink4.Text = "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file4.pdf"
                End If
                HyperLink4.Visible = "False"
                HyperLink5.NavigateUrl = "http://www.didljumpstart.com/uploads/ff/" + RTrim(Dr("UserName").ToString()) + "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file1.doc"
                HyperLink5.Text = "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file1.pdf"
                HyperLink6.NavigateUrl = "http://www.didljumpstart.com/uploads/ff/" + RTrim(Dr("UserName").ToString()) + "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file2.doc"
                HyperLink6.Text = "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file2.pdf"
                HyperLink7.NavigateUrl = "http://www.didljumpstart.com/uploads/ff/" + RTrim(Dr("UserName").ToString()) + "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file3.pdf"
                HyperLink7.Text = "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file3.pdf"
                If Right(Dr("TaskVer").ToString(), 2) = "04" Or Right(Dr("TaskVer").ToString(), 2) = "06" Or Right(Dr("TaskVer").ToString(), 2) = "10" Or Right(Dr("TaskVer").ToString(), 2) = "14" Or Right(Dr("TaskVer").ToString(), 2) = "16" Or Right(Dr("TaskVer").ToString(), 2) = "20" Then
                    HyperLink8.Visible = "True"
                    HyperLink8.NavigateUrl = "http://www.didljumpstart.com/uploads/ff/" + RTrim(Dr("UserName").ToString()) + "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file4.pdf"
                    HyperLink8.Text = "fm" + Right(Dr("TaskVer").ToString(), 2) + "_file4.pdf"
                End If
                HyperLink8.Visible = "False"
            ElseIf Left(Dr("TaskType"), 2) = "WP" Then
                HyperLink2.Visible = "False"
                HyperLink3.Visible = "False"
                HyperLink4.Visible = "False"
                HyperLink1.NavigateUrl = "http://www.didljumpstart.com/uploads/wp/" + RTrim(Dr("UserName").ToString()) + "wp" + Right(Dr("TaskVer").ToString(), 2) + "_file.docx"
                HyperLink1.Text = "wp" + Right(Dr("TaskVer").ToString(), 2) + "_file1.docx"
                HyperLink2.Visible = "False"
                HyperLink3.Visible = "False"
                HyperLink4.Visible = "False"
                HyperLink1.NavigateUrl = "http://www.didljumpstart.com/uploads/wp/" + RTrim(Dr("UserName").ToString()) + "wp" + Right(Dr("TaskVer").ToString(), 2) + "_file.doc"
                HyperLink1.Text = "wp" + Right(Dr("TaskVer").ToString(), 2) + "_file1.doc"
            ElseIf Left(Dr("TaskType"), 2) = "SS" Then
                HyperLink1.NavigateUrl = "http://www.didljumpstart.com/uploads/ss/" + RTrim(Dr("UserName").ToString()) + "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file1.pdf"
                HyperLink1.Text = "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file1.pdf"
                HyperLink2.NavigateUrl = "http://www.didljumpstart.com/uploads/ss/" + RTrim(Dr("UserName").ToString()) + "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file2.pdf"
                HyperLink2.Text = "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file2.pdf"
                HyperLink3.NavigateUrl = "http://www.didljumpstart.com/uploads/ss/" + RTrim(Dr("UserName").ToString()) + "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file2.xlsx"
                HyperLink3.Text = "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file2.xlsx"
                HyperLink4.Visible = "False"
                HyperLink5.NavigateUrl = "http://www.didljumpstart.com/uploads/ss/" + RTrim(Dr("UserName").ToString()) + "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file1.pdf"
                HyperLink5.Text = "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file1.pdf"
                HyperLink6.NavigateUrl = "http://www.didljumpstart.com/uploads/ss/" + RTrim(Dr("UserName").ToString()) + "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file2.pdf"
                HyperLink6.Text = "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file2.pdf"
                HyperLink7.NavigateUrl = "http://www.didljumpstart.com/uploads/ss/" + RTrim(Dr("UserName").ToString()) + "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file2.xls"
                HyperLink7.Text = "ss" + Right(Dr("TaskVer").ToString(), 2) + "_file2.xls"
                HyperLink8.Visible = "False"
            End If

        End If
    End Sub

    Protected Function GetUploadList() As String()
        Dim folder As String = "http://www.didljumpstart.com/uploads/ff/"
        Dim files() As String = Directory.GetFiles(folder, "*.doc*")
        
        Dim fileNames(files.Length - 1) As String
        Array.Sort(files)

        For i As Integer = 0 To files.Length - 1
            fileNames(i) = Path.GetFileName(files(i))
            fileName = fileNames(i)
        Next

        Return fileNames
    End Function
End Class
