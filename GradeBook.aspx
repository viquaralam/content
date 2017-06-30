<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage3.master" AutoEventWireup="false"
    CodeFile="GradeBook.aspx.vb" Inherits="GradeBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <!-- Begin Main Conent -->
    <div class="nine columns large" id="mainContent">
        <!-- Begin Section Header -->
        <div class="row">
            <!--! end of Section Header -->
        </div>
        <!-- Begin Section Title -->
        <div class="row">
            <div class="twelve columns">
                <div class="pageHeader">
                    <h4>
                        DIDL Certification</h4>
                    <h2>
                        Gradebook</h2>
                </div>
            </div>
        </div>
        <!--! end of Section Title -->
        <!-- Begin Content Section -->
        <div class="row">
            <div class="twelve columns">
                <div class="sectionContent">
                    <div class="row">
                        <div class="twelve columns">
                            <div class="panel">
                                <h5>
                                    DIDL Certification Exam Summary - Grades will appear below when tests and tasks
                                    are taken.</h5>
                                </br></br>
                                <table class="sortable">
                                    <thead>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <asp:UpdatePanel ID="UpdatePanel3" runat="server" RenderMode="Block">
                                                    <ContentTemplate>
                                                        <asp:GridView ID="GridView3" runat="server" >
                                                            <HeaderStyle BackColor="#000066" ForeColor="White" />
                                                        </asp:GridView>
                                                        
                                                        <hr />
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div>
                                <hr />
                                <div>
                                    <div>
                                        <h5>
                                            Task Feedback - Click on "select" by the task to receive feedback on a graded task.
                                            The feedback or checklist is blank until the task is graded with either a grade
                                            of "Passed" or "Retake".</h5>
                                        <br />
                                        <br />
                                        <br />
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="GridView2" runat="server" AllowPaging="true" AllowSorting="true" AutoGenerateColumns="False" DataKeyNames="UserQuizId"
                                                   HorizontalAlign="Left" Width="700px" >
                                                    <RowStyle Width="200px" />
                                                    <Columns>
                                                        <asp:BoundField DataField="GradeDesc" HeaderText="Task Description" SortExpression="Task Description" />
                                                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"
                                                            Visible="False" />
                                                        <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                                                        <asp:BoundField DataField="Grader" HeaderText="Grader" SortExpression="Grader" Visible="False" />
                                                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" Visible="False" />
                                                        <asp:BoundField DataField="DateTaken" HeaderText="Date Attempted" SortExpression="Date Attempted" />
                                                        <asp:HyperLinkField DataNavigateUrlFields="UserQuizId" DataNavigateUrlFormatString="GradeBook1.aspx?UserQuizId={0}"
                                                            HeaderText="UserQuizId" Text="Select" />
                                                    </Columns>
                                                    <PagerStyle ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" Wrap="True" />
                                                    <HeaderStyle BackColor="#000066" ForeColor="White" HorizontalAlign="Left" VerticalAlign="Middle"
                                                        BorderStyle="Solid" Height="50px" Font-Bold="False" Font-Size="12pt" />
                                                    <AlternatingRowStyle BackColor="#CCFFFF" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                </asp:GridView>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <br />
                                        <br />
                                        <hr>
                                        <div class="row">
                                            <h5>
                                                Multiple Choice Test History</h5>
                                            <br />
                                        </div>
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  OnPageIndexChanging="GridView1_PageIndexChanging"
                                                    Width="700px" AllowPaging="True" AllowSorting="True" Height="181px" Font-Size="10pt"
                                                    BorderStyle="Solid" EnableTheming="False" GridLines="Vertical" HorizontalAlign="Left"
                                                    CaptionAlign="Left">
                                                    <PagerSettings Mode="NumericFirstLast" />
                                                    <RowStyle CssClass="" HorizontalAlign="Left" VerticalAlign="Middle" Wrap="True" Width="200px" />
                                                    <EmptyDataRowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Title" HeaderText="Exam" SortExpression="Exam" ReadOnly="False">
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="DateTaken" HeaderText="Date Attempted" SortExpression="Date Attempted"
                                                            ReadOnly="False"></asp:BoundField>
                                                        <asp:BoundField DataField="Score" HeaderText="Grade" SortExpression="Grade" />
                                                        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName"
                                                            Visible="False" />
                                                    </Columns>
                                                    <FooterStyle BackColor="#000066" ForeColor="White" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                    <PagerStyle BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="12pt"
                                                        ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" />
                                                    <SelectedRowStyle HorizontalAlign="Left" VerticalAlign="Top" Wrap="False" />
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" BackColor="#000066" ForeColor="White"
                                                        Font-Bold="False" Font-Size="12pt" Height="50px" />
                                                    <AlternatingRowStyle BackColor="#CCFFFF" HorizontalAlign="Left" VerticalAlign="Middle"
                                                        Wrap="True" />
                                                </asp:GridView>
                                                <hr />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="twelve columns">
                                        <hr />
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--! end of Content Section -->
            <!-- Bottom Paging Section -->
            <!--! end of Bottom Paging Section -->
            <div class="row centered">
                <div class="twelve columns">
                    <div class="pageFooter">
                    </div>
                </div>
            </div>
            <!--! end Main Conent -->
        </div>
    </div>
    <!-- end of container -->
</asp:Content>
