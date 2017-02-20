<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="WordProcessingDefault.aspx.vb" Inherits="Practice_WordProcessing_TestDefault" title="Word Processing Practice Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
                                        
    <table width="750" align="center" style="height: 632px">
        
        <tr>
            <td width="100%" style="vertical-align: middle; color: white; background-color: #00aeef; text-align: left" class="pageHeader questionHeader">
                 <h2>Word Processing</h2><h2>Practice Quiz</h2></td>
        </tr>
       <tr>
           <td style="width: auto; vertical-align: top; text-align: justify; font-size:12pt;">
               Click the link below to begin the quiz.</td>
        </tr>
        <tr>
            <td width="100%">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                    Width="721px" Height="23px" Font-Size="14pt" CellPadding="5" 
                    Font-Strikeout="False" ForeColor="#003366" HorizontalAlign="Left">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "WordProcessingStart.aspx?testid=" & Eval("QuizID") %>'
                            Text='<%# Eval("Title") %>'></asp:HyperLink><br />
                        
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    SelectCommand="SELECT [Title], [Description], [QuizID] FROM [Quiz] WHERE Title = 'Practice Word Processing Quiz'"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                 &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 497px; background-color: #000066; font-size: 12pt; color: #FFFFFF;">
                My Quiz History</td>
        </tr>
        <tr>
            <td width="100%">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    Width="706px" AllowPaging="True" AllowSorting="True" Height="181px" 
                    PageSize="6" HorizontalAlign="Left">
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
                    
                    SelectCommand="SELECT Quiz.Title, UserQuiz.DateTaken, UserQuiz.Score FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizID = Quiz.QuizID WHERE (UserQuiz.UserName = @UserName) and (Quiz.Title = 'Practice Word Processing Quiz') ORDER BY UserQuiz.DateTaken DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

