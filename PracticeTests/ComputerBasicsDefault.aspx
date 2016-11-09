<%@ Page Language="vb" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ComputerBasicsDefault.aspx.vb" Inherits="Practice_FinalTests_FinalDefault" %>

<asp:Content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
                                                                        
    
    <table width="750" align="center" style="height: 632px">
        
        <tr valign="top" style="height: 230px;">
            <td width="100%" style="vertical-align: middle; color: white;text-align: Left;" class="pageHeader questionHeader">
                 <h2>Computer Basics</h2><h2>Practice Quiz</h2>
            </td>
        </tr>
       <tr>
           <td style="width: auto; vertical-align: top; text-align: justify; font-size: 12pt;">
               
               Click the link below to begin the quiz.</td>
        </tr>
        
        <tr>
            <td width="100%">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                    Width="555px" Height="16px" Font-Size="14pt">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ComputerBasicsStart.aspx?testid=" & Eval("QuizID") %>'
                            Text='<%# Eval("Title") %>' Font-Size="12pt"></asp:HyperLink><br />
                        
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    SelectCommand="SELECT [Title], [Description], [QuizID] FROM [Quiz] WHERE Title = 'Practice Computer Basics Quiz'"></asp:SqlDataSource>
            </td>
        </tr>
        <tr style="height:25px">
            <td style="width: 497px; background-color: #003366; color:White; font-size: 12pt">
                My Quiz History
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    Width="734px" AllowPaging="True" AllowSorting="True" Height="181px" 
                    PageSize="6" Font-Size="12pt">
                    <RowStyle CssClass="" HorizontalAlign="Left" VerticalAlign="Top" />
                    <Columns>
                        <asp:BoundField DataField="DateTimeComplete" DataFormatString="{0:d}" HeaderText="Date"
                            SortExpression="DateTimeComplete" ReadOnly="False">
                            <FooterStyle Width="150px" />
                            <HeaderStyle Width="150px" />
                            <ItemStyle HorizontalAlign="Left" Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Score" HeaderText="Grade" SortExpression="Grade" 
                            ReadOnly="False">
                            <FooterStyle Width="60px" />
                            <HeaderStyle Width="60px" />
                            <ItemStyle HorizontalAlign="Left" Width="50px" />
                        </asp:BoundField>
                    </Columns>
                    <SelectedRowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                    
                    
                    SelectCommand="SELECT Quiz.Title, UserQuiz.DateTimeComplete, UserQuiz.Score FROM UserQuiz INNER JOIN Quiz ON UserQuiz.QuizId = Quiz.QuizId WHERE (UserQuiz.UserName = @UserName) AND (Quiz.Title = 'Practice Computer Basics Quiz') ORDER BY UserQuiz.DateTimeComplete DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserName" SessionField="UserName" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

