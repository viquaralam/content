<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PracticeFinalDefault.aspx.vb" Inherits="Practice_FinalTests_FinalDefault" title="Practice Final Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
                                                              
    <table width="750" align="center" style="height: 632px">
        
        <tr>
            <td width="100%" style="vertical-align: middle; color: white; background-color: #00aeef; text-align: left" class="pageHeader questionHeader">
                <h2>Practice <br />Final Quiz</h2></td>
        </tr>
       
        <tr>
            <td width="100%" style="font-size:12pt;">
               
               Click the link below to begin the quiz.</td>
        </tr>
        <tr>
            <td width="100%">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="555px" Height="23px" Font-Size="14pt">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="12pt" NavigateUrl='<%# "PracticeFinalStart.aspx?testid=" & Eval("QuizID") %>'
                            Text='<%# Eval("Title") %>'></asp:HyperLink><br />
                        
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    SelectCommand="SELECT [Title], [Description], [QuizID] FROM [Quiz] WHERE Title = 'Practice Final Quiz'"></asp:SqlDataSource>
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
                    Width="717px" AllowPaging="True" AllowSorting="True" Height="181px" 
                    PageSize="6">
                    <RowStyle CssClass="generaltext" />
                    <Columns>
                        <asp:BoundField DataField="DateTaken" DataFormatString="{0:d}" HeaderText="Taken"
                            SortExpression="DateTaken">
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
                    
                    SelectCommand="SELECT Quiz.Title, UserQuiz.DateTaken, UserQuiz.Score FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizID = Quiz.QuizID WHERE (UserQuiz.UserName = @UserName) and (Quiz.Title = 'Practice Final Quiz') ORDER BY UserQuiz.DateTaken DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

