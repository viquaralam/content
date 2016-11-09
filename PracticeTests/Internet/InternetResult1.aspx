<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="InternetResult1.aspx.vb" Inherits="Practice_Internet_TestResult" title="Internet Practice Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 650px">
            <tr>
                <td width="100%" align="right" 
                style="font-weight: bold; font-size: 24pt; vertical-align: middle; color: white; background-color: #00aeef; text-align: left" 
                class="pageHeader questionHeader">
                <h2>Quiz Results</h2>
                </td>
            </tr>
            </table>     
        <table width="560" align="center">
            <tr>
                <td style="height: 17px; font-size:12pt;"><a href="InternetDefault.aspx">Click here for grade</a>&nbsp;<asp:Label ID="errorLabel" runat="server" CssClass="errormessage"></asp:Label></td>
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
                        UseAccessibleHeader="False" 
                        Font-Bold="False" 
                        Font-Overline="False" 
                        Font-Size="10pt" 
                        EnableSortingAndPagingCallbacks="True">
                        <FooterStyle BackColor="White" ForeColor="White" />
                        <RowStyle CssClass="generaltext" HorizontalAlign="Center" ForeColor="#000066" />
                        <Columns>
                            <asp:BoundField DataField="QuestionID" HeaderText="Question Id" 
                                Visible="False" />
                            <asp:BoundField DataField="Title" HeaderText="Question" />
                            <asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answer" />
                            <asp:BoundField DataField="UserAnswer" HeaderText="Your Answer" />
                            <asp:BoundField DataField="Result" HeaderText="Result" />
                            <asp:HyperLinkField DataNavigateUrlFields="QuestionId" DataNavigateUrlFormatString="InternetResults2.aspx?QuestionId={0}" Target="_blank"
                                Text="Details" />
                        </Columns>
                        <PagerStyle BackColor="#003366" ForeColor="#000066" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="White" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <EditRowStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <AlternatingRowStyle BorderStyle="None" BackColor="#ccffcc" ForeColor="White" 
                            HorizontalAlign="Left" VerticalAlign="Top" />
                    </asp:GridView>

                   
           
            
              

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                        SelectCommand="SELECT [Title], [Answer1], [Answer2], [Answer3], [QuestionID], [QuestionNo], [Answer4], [CorrectAnswer], [AnswerExplanation], [Sections] FROM [Questions] WHERE Sections = 'Internet'">
                        <SelectParameters>
                            <asp:SessionParameter Name="QuizID" SessionField="QuizID" Type="Int32" DefaultValue="0" />
                        </SelectParameters>
                    </asp:SqlDataSource>                
                </td>
            </tr>
            <tr>
                
            
                <td style="font-size: 12pt; font-weight: bold"><a href="InternetDefault.aspx">Return</a></td>
            </tr>                                    
        </table>

</asp:Content>

