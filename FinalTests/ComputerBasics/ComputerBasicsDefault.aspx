<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="ComputerBasicsDefault.aspx.vb" Inherits="TestingCenter_ComputerBasics_FinalDefault"
    Title="Computer Basics Final Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="height: 632px" class="container" width="650">
        <tr>
            <td width="100%" style="font-weight: bold; vertical-align: middle; text-align: left"
                class="pageHeader questionHeader">
                <h2>
                    Computer Basics</h2>
                <h2>
                    Final Exam</h2>
            </td>
        </tr>
        <tr>
            <td style="width: auto; vertical-align: top; text-align: justify; font-size: 12Pt">
                Click the link below to begin the exam. You need to make a 90% or better on this exam to pass it.
            </td>
        </tr>
        <tr>
            <td width="100%">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="625px"
                    Height="23px" Font-Size="14pt">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ComputerBasicsStart.aspx?testid=" & Eval("QuizID") %>'
                            Text='<%# Eval("Title") %>'></asp:HyperLink><br />
                    </ItemTemplate>
                    <ItemStyle Font-Size="12pt" HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    SelectCommand="SELECT [Title], [Description], [QuizID] FROM [Quiz] WHERE Title = 'Computer Basics Final'">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 497px; background-color: #000066; color: #FFFFFF; font-size: 12pt;">
                My Exam History
            </td>
        </tr>
        <tr>
            <td width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    Width="615px" AllowPaging="True" AllowSorting="True" Height="181px" 
                    PageSize="6" HorizontalAlign="Left">
                    <RowStyle CssClass="generaltext" HorizontalAlign="Left" VerticalAlign="Middle" Width="600px" />
                    <EmptyDataRowStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                    <Columns>
                        <asp:BoundField DataField="DateTaken" HeaderText="Date Taken" SortExpression="Date Taken">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DateTimeComplete" DataFormatString="{0:d}" HeaderText="Completed" SortExpression="DateTimeComplete">
                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Score" HeaderText="Grade" SortExpression="Grade">
                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Grade" HeaderText="Pass-Fail" SortExpression="Pass-Fail">
                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                            </asp:BoundField>
                    </Columns>
                    <SelectedRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="600px" />
                    <HeaderStyle CssClass="" HorizontalAlign="Left" VerticalAlign="Middle" Width="600px" />
                    <AlternatingRowStyle BackColor="#CCFFFF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    SelectCommand="SELECT Quiz.Title, UserQuiz.DateTaken, UserQuiz.DateTimeComplete, UserQuiz.Score, UserQuiz.Grade 
                                 FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizID = Quiz.QuizID 
                                 WHERE (UserQuiz.UserName = @UserName) and (Quiz.Title = 'Computer Basics Final') 
                                 ORDER BY UserQuiz.DateTimeComplete DESC, UserQuiz.DateTaken DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
