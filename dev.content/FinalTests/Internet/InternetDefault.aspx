<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="InternetDefault.aspx.vb" Inherits="TestingCenter_Internet_FinalDefault" title="Internet Final Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
                                                                   
    <table width="650" align="center" style="height: 632px">
        
        <tr>
            <td width="100%" style="vertical-align: middle; color: white; background-color: #00aeef; text-align: left" class="pageHeader questionHeader">
                <h2>Internet <br />Final Exam</h2></td>
        </tr>
       <tr>
           <td style="width: auto; vertical-align: top; text-align: left;font-size:12pt;">
               Click the link below to begin the exam. You need to make a 90% or better on this exam to pass it.</td>
        </tr>
        <tr>
            <td width="100%">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                    Width="602px" Height="23px" Font-Size="12pt">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "InternetStart.aspx?testid=" & Eval("QuizID") %>'
                            Text='<%# Eval("Title") %>'></asp:HyperLink><br />
                        
                    </ItemTemplate>
                    <ItemStyle Font-Size="12pt" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    SelectCommand="SELECT [Title], [Description], [QuizID] FROM [Quiz] WHERE Title = 'Internet Final'"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 497px; background-color: #000066; color: #FFFFFF; font-size: 12pt;">
                My Exam History</td>
        </tr>
        <tr>
            <td width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    Width="617px" AllowPaging="True" AllowSorting="True" Height="181px" 
                    PageSize="6" HorizontalAlign="Left" EnableSortingAndPagingCallbacks="True" 
                    UseAccessibleHeader="False">
                    <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px"/>
                    <EmptyDataRowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    <Columns>
                        <asp:BoundField DataField="DateTaken" HeaderText="Date Taken" 
                            SortExpression="Date Taken" >
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DateTimeComplete" DataFormatString="{0:d}" HeaderText="Date Completed"
                            SortExpression="Date Complete">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Score" HeaderText="Grade" SortExpression="Grade">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Grade" HeaderText="Pass-Fail" 
                            SortExpression="Pass-Fail">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    <AlternatingRowStyle BackColor="#CCFFFF" HorizontalAlign="Left" 
                        VerticalAlign="Middle" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    SelectCommand="SELECT Quiz.Title, UserQuiz.DateTimeComplete, UserQuiz.DateTaken, UserQuiz.Score, UserQuiz.Grade 
                                    FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizID = Quiz.QuizID 
                                    WHERE (UserQuiz.UserName = @UserName) and (Quiz.Title = 'Internet Final') ORDER BY UserQuiz.DateTaken DESC, UserQuiz.DateTimeComplete DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

