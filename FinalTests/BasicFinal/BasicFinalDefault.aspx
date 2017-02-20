<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="BasicFinalDefault.aspx.vb" Inherits="TestingCenter_FinalTests_FinalDefault" title="Final Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
                  
    <table width="750" align="center" style="height: 632px">
        
        <tr>
            <td width="100%" style="vertical-align: middle; color: white; background-color: #00aeef; text-align: Left" class="pageHeader questionHeader">
                <h2>Final Exam</h2></td>
        </tr>
       <tr>
           <td style="width: auto; vertical-align: top; text-align: justify; font-size: 12pt;">
               Click the link below to begin the exam.</td>
        </tr>
        <tr>
            <td width="100%">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                    Width="710px" Height="16px" Font-Size="12pt" BackColor="White" 
                    Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="False" ForeColor="Black">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "BasicFinalStart.aspx?testid=" & Eval("QuizID") %>'
                            Text='<%# Eval("Title") %>'></asp:HyperLink><br />
                        
                    </ItemTemplate>
                    <ItemStyle Font-Size="12pt" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    SelectCommand="SELECT [Title], [Description], [QuizID] FROM [Quiz] WHERE Title = 'Final Exam'"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 497px; background-color: #003366; font-size: 12pt; color: #FFFFFF;">
                My Exam History</td>
        </tr>
        <tr>
            <td width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    Width="719px" AllowPaging="True" AllowSorting="True" Height="181px" 
                    Font-Size="12pt" HorizontalAlign="Left" UseAccessibleHeader="False" 
                    EnableSortingAndPagingCallbacks="True">
                    <RowStyle Font-Size="12pt" HorizontalAlign="Left" 
                        VerticalAlign="Middle" Width="600px" />
                    <EmptyDataRowStyle Font-Size="12pt" HorizontalAlign="Left" 
                        VerticalAlign="Middle" />
                    <Columns>
                        <asp:BoundField DataField="DateTaken" HeaderText="Taken" 
                            SortExpression="Taken" >
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DateTimeComplete" DataFormatString="{0:d}" HeaderText="Completed"
                            SortExpression="DateTimeComplete">
                            <HeaderStyle Width="100px" />
                            <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Score" HeaderText="Grade" SortExpression="Grade" 
                            ReadOnly="True">
                            <HeaderStyle Width="100px" />
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Grade" HeaderText="Pass-Fail" 
                            SortExpression="Pass-Fail">
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:BoundField>    
                    </Columns>
                    <SelectedRowStyle Font-Overline="True" Font-Size="12pt" HorizontalAlign="Left" 
                        VerticalAlign="Middle" Width="600px" />
                    <HeaderStyle HorizontalAlign="Left" 
                        VerticalAlign="Middle" />
                    <EditRowStyle Font-Size="12pt" HorizontalAlign="Left" VerticalAlign="Middle" />
                    <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                        BackColor="#CCFFFF" Width="600px" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    SelectCommand="SELECT Quiz.Title, UserQuiz.DateTimeComplete, UserQuiz.DateTaken, UserQuiz.Score, UserQuiz.Grade 
                                          FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizID = Quiz.QuizID 
                                          WHERE (UserQuiz.UserName = @UserName) and (Quiz.Title = 'Final Exam') 
                                          ORDER BY UserQuiz.DateTimeComplete DESC, UserQuiz.DateTaken DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

