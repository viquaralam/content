<%@ Page Language="VB" MasterPageFile="~/MasterPage1.master" AutoEventWireup="false" CodeFile="BasicFinalResult1.aspx.vb" Inherits="TestingCenter_FinalTests_FinalResult" title="DIDL Essential License Final Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 650px">
            <tr>
                <td width="100%" align="right" style="vertical-align: middle; color: white; background-color: #00aeef; text-align: left"  class="pageHeader questionHeader"><h2>Final Exam</h2></td>
            </tr>
            </table>     
        <table width="560" align="center">
            <tr>
                <td style="height: 17px">&nbsp;
                    <a href="BasicFinalDefault.aspx" style="font-size: 12pt">Click here for grade</a><asp:Label ID="errorLabel" runat="server" CssClass="errormessage"></asp:Label></td>
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
                        BackColor="White" 
                        BorderColor="#CCCCCC" 
                        BorderStyle="Solid" 
                        AllowPaging="True"
                        CaptionAlign="Top" 
                        ShowFooter="True" 
                        Font-Bold="False" 
                        Font-Overline="False" 
                        Font-Size="10pt" 
                        EnableSortingAndPagingCallbacks="True" HorizontalAlign="Left">
                        <FooterStyle BackColor="White" ForeColor="White" />
                        <RowStyle CssClass="generaltext" HorizontalAlign="Left" ForeColor="#000066" 
                            VerticalAlign="Middle" />
                        <Columns>
                            <asp:BoundField DataField="QuestionID" HeaderText="Question Id" 
                                Visible="False" />
                            <asp:BoundField DataField="Title" HeaderText="Question" />
                            <asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answer" />
                            <asp:BoundField DataField="UserAnswer" HeaderText="Your Answer" />
                            <asp:BoundField DataField="Result" HeaderText="Result" />
                            <asp:HyperLinkField DataNavigateUrlFields="QuestionId" DataNavigateUrlFormatString="BasicFinalResults2.aspx?QuestionId={0}" Target="_blank"
                                Text="Details" />
                        </Columns>
                        <PagerStyle BackColor="#003366" ForeColor="#000066" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="White" 
                            HorizontalAlign="Left" VerticalAlign="Middle" />
                        <HeaderStyle BackColor="#99ccff" Font-Bold="True" ForeColor="White" 
                            CssClass="boldtext" HorizontalAlign="Left" VerticalAlign="Middle" />
                        <EditRowStyle HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <AlternatingRowStyle BorderStyle="Solid" BackColor="#CCFFcc" 
                            HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                        SelectCommand="SELECT [Title], [Answer1], [Answer2], [Answer3], [QuestionID], [QuestionNo], [Answer4], [CorrectAnswer], [AnswerExplanation], [Sections] FROM [Questions] WHERE Sections = 'Internet' or Sections = 'Files and Folders' or Sections = 'Spreadsheets' or Sections = 'Word Processing' or Sections = 'Computers Basics'">
                        <SelectParameters>
                            <asp:SessionParameter Name="QuizID" SessionField="QuizID" Type="Int32" DefaultValue="0" />
                        </SelectParameters>
                    </asp:SqlDataSource>                
                </td>
            </tr>
            <tr>
                <td style="height: 39px"><a href="BasicFinalDefault.aspx" style="font-size: 12pt">Return </a></td>
            </tr>                                    
        </table>

</asp:Content>

