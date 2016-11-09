<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="FilesFoldersDefault.aspx.vb" Inherits="Practice_FilesFolders_TestsDefault"
    Title="Files & Folders Practice Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <table width="750" align="center" style="height: 632px">
        <tr>
            <td width="100%" style="vertical-align: middle;
                color: white; text-align: left" class="pageHeader questionHeader">
                <h2>Files and Folders <br />Practice Quiz</h2>
            </td>
        </tr>
        <tr>
            <td style="width: auto; vertical-align: top; text-align: left; font-size:12pt">
                Click the link below to begin the quiz.
            </td>
        </tr>
        <tr>
            <td width="100%">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="555px"
                    Height="23px" Font-Size="14pt">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "FilesFoldersStart.aspx?testid=" & Eval("QuizID") %>'
                            Text='<%# Eval("Title") %>' Font-Size="12pt"></asp:HyperLink><br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    SelectCommand="SELECT [Title], [Description], [QuizID] FROM [Quiz] WHERE Title = 'Practice Files and Folders Quiz'">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
        </tr>
        <tr>
            <td style="width: 497px; background-color: #003366; color:White; font-size: 12pt">
                My Quiz History
            </td>
        </tr>
        <tr>
            <td width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    Width="623px" AllowPaging="True" AllowSorting="True" Height="181px" 
                    PageSize="6">
                    <RowStyle CssClass="generaltext" />
                    <Columns>
                        <asp:BoundField DataField="DateTimeComplete" DataFormatString="{0:d}" HeaderText="Completed"
                            SortExpression="DateTimeComplete">
                            <FooterStyle Width="150px" />
                            <HeaderStyle Width="150px" />
                            <ItemStyle HorizontalAlign="Center" Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Score" HeaderText="Grade" SortExpression="Grade">
                            <FooterStyle Width="50px" />
                            <HeaderStyle Width="50px" />
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle CssClass="complete" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    
                    SelectCommand="SELECT Quiz.Title, UserQuiz.DateTimeComplete, UserQuiz.Score FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizId = Quiz.QuizId WHERE (UserQuiz.UserName = @UserName) AND (Quiz.Title = 'Practice Files and Folders Quiz') ORDER BY UserQuiz.DateTimeComplete DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
