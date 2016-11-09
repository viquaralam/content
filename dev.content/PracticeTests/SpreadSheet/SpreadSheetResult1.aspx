<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="SpreadSheetResult1.aspx.vb" Inherits="Practice_SpreadSheet_TestResult" title="Spreadsheets Practice Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 650px">
            <tr>
                <td width="100%" align="right" style="font-weight: bold; font-size: 24pt; vertical-align: middle; color: white; background-color: #00aeef; text-align: left" class="pageHeader questionHeader"><h2>Spreadsheets</h2> <h2>Quiz Results</h2></td>
            </tr>
            </table>     
        <table width="560" align="center">
            <tr>
                <td style="height: 17px"><a href="SpreadSheetDefault.aspx" 
                        style="font-size: 12pt; font-weight: bold">Click here for grade </a>&nbsp;<asp:Label ID="errorLabel" runat="server" CssClass="errormessage"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 223px">
                    <asp:GridView ID="resultGrid" runat="server" 
                        DataKeyNames="QuestionID" 
                        SelectedIndex="0"
                        AutoGenerateColumns="False" 
                        CellPadding="3" 
                        OnSelectedIndexChanged="resultGrid_SelectedIndexChanged"
                        Width="579px" 
                        Height="121px" 
                        BackColor="White" 
                        BorderColor="#CCCCCC" 
                        BorderStyle="Solid" 
                        AllowPaging="True"
                        CaptionAlign="Top" 
                        ShowFooter="True" 
                        UseAccessibleHeader="False" 
                        Font-Bold="False" 
                        Font-Overline="False" 
                        Font-Size="10pt" 
                        EnableSortingAndPagingCallbacks="True" HorizontalAlign="Left">
                        <FooterStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" 
                            VerticalAlign="Middle"/>
                        <RowStyle CssClass="generaltext" HorizontalAlign="Left" ForeColor="#003366" />
                        <Columns>
                            <asp:BoundField DataField="QuestionID" HeaderText="Question Id" 
                                Visible="False" />
                            <asp:BoundField DataField="Title" HeaderText="Question" />
                            <asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answer" />
                            <asp:BoundField DataField="UserAnswer" HeaderText="Your Answer" />
                            <asp:BoundField DataField="Result" HeaderText="Result" />
                            <asp:HyperLinkField DataNavigateUrlFields="QuestionId" DataNavigateUrlFormatString="SpreadSheetResults2.aspx?QuestionId={0}" Target="_blank"
                                Text="Details" />
                        </Columns>
                        <PagerStyle BackColor="#003366" ForeColor="000066" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="White" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" 
                            CssClass="boldtext" HorizontalAlign="Left" VerticalAlign="Middle" />
                        <AlternatingRowStyle BorderStyle="Solid" BackColor="#ccffcc" 
                            HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                        SelectCommand="SELECT [Title], [Answer1], [Answer2], [Answer3], [QuestionID], [QuestionNo], [Answer4], [CorrectAnswer], [AnswerExplanation], [Sections] FROM [Questions] WHERE Sections = 'Internet' or Sections = 'File Management' or Sections = 'Spreadsheet' or Sections = 'Word Processing'">
                        <SelectParameters>
                            <asp:SessionParameter Name="QuizID" SessionField="QuizID" Type="Int32" DefaultValue="0" />
                        </SelectParameters>
                    </asp:SqlDataSource>                
                </td>
            </tr>
            <tr>
                <td style="font-size: 12pt; font-weight: bold"><a href="SpreadSheetDefault.aspx">Return</a></td>
            </tr>                                    
        </table>

</asp:Content>

