<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="ComputerBasicsResult1.aspx.vb" Inherits="Practice_ComputerBasics_TestResult" title="Computer Basics Practice Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 650px">
            <tr>
                <td width="100%" align="right" style="vertical-align: middle; color: white; text-align: left;" class="pageHeader questionHeader"><h2>Quiz Results</h2></td>
            </tr>
            </table>     
        <table width="560" align="center">
            <tr>
                <td style="height: 17px"><a href="ComputerBasicsDefault.aspx" 
                        style="font-size: 12pt; font-weight: bold">Click here for grade </a>&nbsp;<asp:Label ID="errorLabel" runat="server" CssClass="errormessage"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: inherit">
                    <asp:GridView ID="resultGrid" runat="server" 
                        DataKeyNames="QuestionID" 
                        SelectedIndex="0"
                        AutoGenerateColumns="False" 
                        CellPadding="3" 
                        OnSelectedIndexChanged="resultGrid_SelectedIndexChanged"
                        Width="652px" 
                        Height="97px" 
                        BorderStyle="Solid" 
                        AllowPaging="True" 
                        ShowFooter="True" 
                        Font-Bold="False" 
                        Font-Overline="False" 
                        Font-Size="10pt" 
                        EnableSortingAndPagingCallbacks="True" AllowSorting="True" 
                        ForeColor="White" HorizontalAlign="Left" UseAccessibleHeader="False">
                        <FooterStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                        <RowStyle CssClass="" HorizontalAlign="Left" ForeColor="#003366" 
                            VerticalAlign="Top" />
                        <Columns>
                            <asp:BoundField DataField="Title" HeaderText="Question" />
                            <asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answer" />
                            <asp:BoundField DataField="UserAnswer" HeaderText="Your Answer" />
                            <asp:BoundField DataField="Result" HeaderText="Result" />
                            <asp:HyperLinkField DataNavigateUrlFields="QuestionId" DataNavigateUrlFormatString="ComputerBasicsResults2.aspx?QuestionId={0}" Target="_blank"
                                Text="Details" />
                            <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" 
                                SortExpression="QuestionId" Visible="False" />
                        </Columns>
                        <PagerStyle BackColor="#003366" ForeColor="#000066" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="White" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Left" VerticalAlign="Middle" BorderStyle="None" />
                        <AlternatingRowStyle BorderStyle="None" BackColor="#CCFFCC" ForeColor="White" 
                            HorizontalAlign="Left" VerticalAlign="Top" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                        SelectCommand="SELECT [Title], [Answer1], [Answer2], [Answer3], [QuestionID], [QuestionNo], [Answer4], [CorrectAnswer], [AnswerExplanation], [Sections] FROM [Questions] WHERE Sections = 'Computer Basics'">
                        <SelectParameters>
                            <asp:SessionParameter Name="QuizID" SessionField="QuizID" Type="Int32" DefaultValue="0" />
                        </SelectParameters>
                    </asp:SqlDataSource>                
                </td>
            </tr>
            <tr>
                <td style="font-size: 12pt; font-weight: bold"><a href="ComputerBasicsDefault.aspx">Return</a></td>
            </tr>                                    
        </table>

</asp:Content>

