<%@ Page Language="VB" MasterPageFile="~/MasterPage1.master" AutoEventWireup="false" CodeFile="BasicFinalResults2.aspx.vb" Inherits="TestingCenter_FinalTests_FinalResults2" title="DIDL Essential License Final Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
<table align="center">
        <tr>
            <td style="width: 650px; vertical-align: middle; color: white; background-color: #00aeef; text-align: left;" class="pageHeader questionHeader"><h4>When you are finished viewing</h4><h4>the question below close the window.</h4>
            </td>
        </tr>
        <tr>
        <td align="center">
            <input type="button" value="Close Window" onclick="window.close()" 
                    style="height: 21px; width: 265px" />
        </td>
        </tr>                        
        <tr>
            <td style="width: 100px">
                <asp:DetailsView ID="answerDetails" runat="server" AutoGenerateRows="False" CellPadding="4"
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="115px"
                    Width="613px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <RowStyle BackColor="#F7F6F3" CssClass="generaltext" ForeColor="#333333" />
                    <FieldHeaderStyle BackColor="#E9ECF1" CssClass="boldtext" Font-Bold="True" Width="100px" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Fields>
                        <asp:BoundField DataField="QuestionId" HeaderText="Question No.:" 
                            Visible="False" />
                        <asp:BoundField DataField="Title" HeaderText="Question:" />
                        <asp:BoundField DataField="Answer1" HeaderText="A:" />
                        <asp:BoundField DataField="Answer2" HeaderText="B:" />
                        <asp:BoundField DataField="Answer3" HeaderText="C:" />
                        <asp:BoundField DataField="Answer4" HeaderText="D:" />
                        <asp:TemplateField></asp:TemplateField>
                        <asp:BoundField DataField="CorrectAnswer" HeaderText="Correct Answer:" />
                        
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                    SelectCommand="SELECT QuestionId, Title, Answer1, Answer2, Answer3, Answer4, CorrectAnswer, AnswerExplanation, QuestionNo, Sections FROM Questions WHERE (QuestionId = @QuestionId)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="QuestionId" QueryStringField="QuestionId"
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
    

</asp:Content> 


