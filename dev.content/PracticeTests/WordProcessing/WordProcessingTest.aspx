<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="WordProcessingTest.aspx.vb" Inherits="Practice_WordProcessing_Test" title="Word Processing Practice Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick " Interval="1000" />
    <!-- Begin Section Title -->
				<div class="row">
					<div class="twelve columns">
						<div class="pageHeader questionHeader">
							<h2>Word Processing</h2>
							<h2>Practice Quiz</h2>
						</div>
					</div>

				</div>
				<!--! end of Section Title -->
    <table style="width: 366px; height: 358px;" align="center" border="1" cellpadding="5">
        
            <tr>
            <td style="width: 860px; font-size: 12pt;" rowspan="4">
                
                        <asp:DetailsView ID="questionDetails" runat="server" 
                         AutoGenerateRows="False"
                            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                            CellPadding="4" DataKeyNames="QuestionId" DataSourceID="SqlDataSource1" Height="234px"
                            Width="778px" EnableTheming="False" EnableViewState="False" 
                            Font-Size="12pt">
                           <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <Fields>
                                <asp:BoundField DataField="QuestionId" HeaderText="Question No" Visible="false" />
                                <asp:BoundField DataField="Title" HeaderText="Question" SortExpression="Question" />
                                <asp:BoundField DataField="Answer1" HeaderText="A:" SortExpression="Answer A" />
                                <asp:BoundField DataField="Answer2" HeaderText="B:" SortExpression="Answer B" />
                                <asp:BoundField DataField="Answer3" HeaderText="C:" SortExpression="Answer C" />
                                <asp:BoundField DataField="Answer4" HeaderText="D:" SortExpression="Answer D" />
                            </Fields>
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#00AEEF" />
                            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />                             
                           <PagerSettings Mode="NumericFirstLast" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>"
                            
                            
                            SelectCommand="SELECT QuestionId, Title, Answer1, Answer2, Answer3, Answer4, Answer5, CorrectAnswer, AnswerExplanation, QuestionNo, Sections FROM Questions WHERE (Sections = 'Word Processing') ORDER BY newid()">
                        </asp:SqlDataSource>
                        
                                <asp:RadioButtonList ID="AnswerRadioButtonList" runat="server"
                                    Width="429px" Height="20px" RepeatDirection="Horizontal" 
                            TextAlign="Left" CellPadding="1" CellSpacing="1" EnableViewState="False" 
                            Font-Size="14pt">
                                    <asp:ListItem Value="A"> A:</asp:ListItem>
                                    <asp:ListItem Value="B"> B:</asp:ListItem>
                                    <asp:ListItem Value="C"> C:</asp:ListItem>
                                    <asp:ListItem Value="D"> D:</asp:ListItem>
                                </asp:RadioButtonList>
                        
                  <asp:Button ID="NextButton1" runat="server" Height="22px" Text="Next Question" 
                            Width="360px" OnClick="NextButton1_Click" UseSubmitBehavior="False" 
                            CausesValidation="False" EnableViewState="False" />
                </td>
        </tr>
        <tr style="height:50px">
        <td style="vertical-align: top; text-align: left; height: 48px;">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <strong>Start Date/Time:<br /></strong>
                    <asp:Label ID="Label1" runat="server" Height="18px" Text="Beginning Time" Width="152px"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" />
                </Triggers>
            </asp:UpdatePanel>                                                         
            <br />
                <asp:Label ID="Label3" runat="server" Height="24px" Text="Time has expired." Visible="False" Width="149px" style="font-weight: bold; color: red"></asp:Label>
        </td>
        </tr>
        <tr style="height: 50px">
            <td style="vertical-align: top; text-align: left">                   
            <strong>End Date/Time:</strong><br />
              <asp:Label ID="Label2" runat="server" Height="18px" Text="End Time" Width="152px"></asp:Label>
              <br />
                <asp:Label ID="MesgLabel" runat="server" Height="24px" Text="Time has expired." Visible="False" Width="149px" style="font-weight: bold; color: red"></asp:Label>      
            </td>
        </tr>
                
    </table>
</asp:Content>
