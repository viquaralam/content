<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage1.master" AutoEventWireup="false" CodeFile="GradeBook1.aspx.vb" Inherits="GradeBook1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="twelve columns large" id="mainContent">
        
        <table border="2px" style="width: 100%">
            <tr>
                <td valign="top">
                    
                </td>
                <td valign="top">
                    <a href="GradeBook.aspx" runat="server">Return to Gradebook</a>
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" 
                        DataKeyNames="Checklist" Width="575px" DefaultMode="ReadOnly">
                        <EditItemTemplate>
                            Checklist:
                            <asp:Label ID="ChecklistLabel1" runat="server" 
                                Text='<%# Eval("Checklist") %>' />
                            <br />
                            Task Type:
                            <asp:TextBox ID="TaskTypeTextBox" runat="server" 
                                Text='<%# Bind("TaskType") %>' />
                            <br />
                            User Name:
                            <asp:TextBox ID="UserNameTextBox" runat="server" 
                                Text='<%# Bind("UserName") %>' />
                            <br />
                            Task Date:
                            <asp:TextBox ID="TaskDateTextBox" runat="server" 
                                Text='<%# Bind("TaskDate") %>' />
                            <br />
                            Task Version:
                            <asp:TextBox ID="TaskVerTextBox" runat="server" Text='<%# Bind("TaskVer") %>' />
                            <br />
                            Task Grade:
                            <asp:TextBox ID="TaskGradeTextBox" runat="server" 
                                Text='<%# Bind("TaskGrade") %>' />
                            <br />
                            <asp:TextBox ID="Tasky0TextBox" runat="server" Text='<%# Bind("Tasky0") %>' Width="10" />
                            00:
                            <asp:TextBox ID="Task0TextBox" runat="server" Text='<%# Bind("Task0") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky1TextBox" runat="server" Text='<%# Bind("Tasky1") %>' Width="10" />                            
                            01:
                            <asp:TextBox ID="Task1TextBox" runat="server" Text='<%# Bind("Task1") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky2TextBox" runat="server" Text='<%# Bind("Tasky2") %>' Width="10" />                            
                            02:
                            <asp:TextBox ID="Task2TextBox" runat="server" Text='<%# Bind("Task2") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky3TextBox" runat="server" Text='<%# Bind("Tasky3") %>' Width="10" />                            
                            03:
                            <asp:TextBox ID="Task3TextBox" runat="server" Text='<%# Bind("Task3") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky4TextBox" runat="server" Text='<%# Bind("Tasky4") %>' Width="10" />
                            04:
                            <asp:TextBox ID="Task4TextBox" runat="server" Text='<%# Bind("Task4") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky5TextBox" runat="server" Text='<%# Bind("Tasky5") %>' Width="10" />                            
                            05:
                            <asp:TextBox ID="Task5TextBox" runat="server" Text='<%# Bind("Task5") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky6TextBox" runat="server" Text='<%# Bind("Tasky6") %>' Width="10" />                 
                            06:
                            <asp:TextBox ID="Task6TextBox" runat="server" Text='<%# Bind("Task6") %>' Width="450" />
                            <br />                            
                            <asp:TextBox ID="Tasky7TextBox" runat="server" Text='<%# Bind("Tasky7") %>' Width="10" />
                            07:
                            <asp:TextBox ID="Task7TextBox" runat="server" Text='<%# Bind("Task7") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky8TextBox" runat="server" Text='<%# Bind("Tasky8") %>' Width="10" />
                            08:
                            <asp:TextBox ID="Task8TextBox" runat="server" Text='<%# Bind("Task8") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky9TextBox" runat="server" Text='<%# Bind("Tasky9") %>' Width="10" />
                            09:
                            <asp:TextBox ID="Task9TextBox" runat="server" Text='<%# Bind("Task9") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky10TextBox" runat="server" Text='<%# Bind("Tasky10") %>' Width="10" />
                            10:
                            <asp:TextBox ID="Task10TextBox" runat="server" Text='<%# Bind("Task10") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky11TextBox" runat="server" Text='<%# Bind("Tasky11") %>' Width="10" />
                            11:
                            <asp:TextBox ID="Task11TextBox" runat="server" Text='<%# Bind("Task11") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky12TextBox" runat="server" Text='<%# Bind("Tasky12") %>' Width="10" />
                            12:
                            <asp:TextBox ID="Task12TextBox" runat="server" Text='<%# Bind("Task12") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky13TextBox" runat="server" Text='<%# Bind("Tasky13") %>' Width="10" />
                            13:
                            <asp:TextBox ID="Task13TextBox" runat="server" Text='<%# Bind("Task13") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky14TextBox" runat="server" Text='<%# Bind("Tasky14") %>' Width="10" />
                            14:
                            <asp:TextBox ID="Task14TextBox" runat="server" Text='<%# Bind("Task14") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky15TextBox" runat="server" Text='<%# Bind("Tasky15") %>' Width="10" />
                            15:
                            <asp:TextBox ID="Task15TextBox" runat="server" Text='<%# Bind("Task15") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky16TextBox" runat="server" Text='<%# Bind("Tasky16") %>' Width="10" />
                            16:
                            <asp:TextBox ID="Task16TextBox" runat="server" Text='<%# Bind("Task16") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky17TextBox" runat="server" Text='<%# Bind("Tasky17") %>' Width="10" />
                            17:
                            <asp:TextBox ID="Task17TextBox" runat="server" Text='<%# Bind("Task17") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky18TextBox" runat="server" Text='<%# Bind("Tasky18") %>' Width="10" />
                            18:
                            <asp:TextBox ID="Task18TextBox" runat="server" Text='<%# Bind("Task18") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky19TextBox" runat="server" Text='<%# Bind("Tasky19") %>' Width="10" />
                            19:
                            <asp:TextBox ID="Task19TextBox" runat="server" Text='<%# Bind("Task19") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky20TextBox" runat="server" Text='<%# Bind("Tasky20") %>' Width="10" />
                            20:
                            <asp:TextBox ID="Task20TextBox" runat="server" Text='<%# Bind("Task20") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky21TextBox" runat="server" Text='<%# Bind("Tasky21") %>' Width="10" />
                            21:
                            <asp:TextBox ID="Task21TextBox" runat="server" Text='<%# Bind("Task21") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky22TextBox" runat="server" Text='<%# Bind("Tasky22") %>' Width="10" />
                            22:
                            <asp:TextBox ID="Task22TextBox" runat="server" Text='<%# Bind("Task22") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky23TextBox" runat="server" Text='<%# Bind("Tasky23") %>' Width="10" />
                            23:
                            <asp:TextBox ID="Task23TextBox" runat="server" Text='<%# Bind("Task23") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky24TextBox" runat="server" Text='<%# Bind("Tasky24") %>' Width="10" />
                            24:
                            <asp:TextBox ID="Task24TextBox" runat="server" Text='<%# Bind("Task24") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky25TextBox" runat="server" Text='<%# Bind("Tasky25") %>' Width="10" />
                            25:
                            <asp:TextBox ID="Task25TextBox" runat="server" Text='<%# Bind("Task25") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky26TextBox" runat="server" Text='<%# Bind("Tasky26") %>' Width="10" />
                            26:
                            <asp:TextBox ID="Task26TextBox" runat="server" Text='<%# Bind("Task26") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky27TextBox" runat="server" Text='<%# Bind("Tasky27") %>' Width="10" />
                            27:
                            <asp:TextBox ID="Task27TextBox" runat="server" Text='<%# Bind("Task27") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky28TextBox" runat="server" Text='<%# Bind("Tasky28") %>' Width="10" />
                            28:
                            <asp:TextBox ID="Task28TextBox" runat="server" Text='<%# Bind("Task28") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky29TextBox" runat="server" Text='<%# Bind("Tasky29") %>' Width="10" />
                            29:
                            <asp:TextBox ID="Task29TextBox" runat="server" Text='<%# Bind("Task29") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky30TextBox" runat="server" Text='<%# Bind("Tasky30") %>' Width="10" />
                            30:
                            <asp:TextBox ID="Task30TextBox" runat="server" Text='<%# Bind("Task30") %>' Width="450" />
                            <br />
                            
                            <asp:TextBox ID="CheckHashTextBox" runat="server" 
                                Text='<%# Bind("CheckHash") %>' Visible="false" />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            TaskType:
                            <asp:TextBox ID="TaskTypeTextBox" runat="server" 
                                Text='<%# Bind("TaskType") %>' />
                            <br />
                            UserName:
                            <asp:TextBox ID="UserNameTextBox" runat="server" 
                                Text='<%# Bind("UserName") %>' />
                            <br />
                            TaskDate:
                            <asp:TextBox ID="TaskDateTextBox" runat="server" 
                                Text='<%# Bind("TaskDate") %>' />
                            <br />
                            TaskVer:
                            <asp:TextBox ID="TaskVerTextBox" runat="server" Text='<%# Bind("TaskVer") %>' />
                            <br />
                            TaskGrade:
                            <asp:TextBox ID="TaskGradeTextBox" runat="server" 
                                Text='<%# Bind("TaskGrade") %>' />
                            <br />
                            Task0:
                            <asp:TextBox ID="Task0TextBox" runat="server" Text='<%# Bind("Task0") %>' />
                            <br />
                            Task1:
                            <asp:TextBox ID="Task1TextBox" runat="server" Text='<%# Bind("Task1") %>' />
                            <br />
                            Task2:
                            <asp:TextBox ID="Task2TextBox" runat="server" Text='<%# Bind("Task2") %>' />
                            <br />
                            Task3:
                            <asp:TextBox ID="Task3TextBox" runat="server" Text='<%# Bind("Task3") %>' />
                            <br />
                            Task4:
                            <asp:TextBox ID="Task4TextBox" runat="server" Text='<%# Bind("Task4") %>' />
                            <br />
                            Task5:
                            <asp:TextBox ID="Task5TextBox" runat="server" Text='<%# Bind("Task5") %>' />
                            <br />
                            Task6:
                            <asp:TextBox ID="Task6TextBox" runat="server" Text='<%# Bind("Task6") %>' />
                            <br />
                            Task7:
                            <asp:TextBox ID="Task7TextBox" runat="server" Text='<%# Bind("Task7") %>' />
                            <br />
                            Task8:
                            <asp:TextBox ID="Task8TextBox" runat="server" Text='<%# Bind("Task8") %>' />
                            <br />
                            Task9:
                            <asp:TextBox ID="Task9TextBox" runat="server" Text='<%# Bind("Task9") %>' />
                            <br />
                            Task10:
                            <asp:TextBox ID="Task10TextBox" runat="server" Text='<%# Bind("Task10") %>' />
                            <br />
                            Task11:
                            <asp:TextBox ID="Task11TextBox" runat="server" Text='<%# Bind("Task11") %>' />
                            <br />
                            Task12:
                            <asp:TextBox ID="Task12TextBox" runat="server" Text='<%# Bind("Task12") %>' />
                            <br />
                            Task13:
                            <asp:TextBox ID="Task13TextBox" runat="server" Text='<%# Bind("Task13") %>' />
                            <br />
                            Task14:
                            <asp:TextBox ID="Task14TextBox" runat="server" Text='<%# Bind("Task14") %>' />
                            <br />
                            Task15:
                            <asp:TextBox ID="Task15TextBox" runat="server" Text='<%# Bind("Task15") %>' />
                            <br />
                            Task16:
                            <asp:TextBox ID="Task16TextBox" runat="server" Text='<%# Bind("Task16") %>' />
                            <br />
                            Task17:
                            <asp:TextBox ID="Task17TextBox" runat="server" Text='<%# Bind("Task17") %>' />
                            <br />
                            Task18:
                            <asp:TextBox ID="Task18TextBox" runat="server" Text='<%# Bind("Task18") %>' />
                            <br />
                            Task19:
                            <asp:TextBox ID="Task19TextBox" runat="server" Text='<%# Bind("Task19") %>' />
                            <br />
                            Task20:
                            <asp:TextBox ID="Task20TextBox" runat="server" Text='<%# Bind("Task20") %>' />
                            <br />
                            Task21:
                            <asp:TextBox ID="Task21TextBox" runat="server" Text='<%# Bind("Task21") %>' />
                            <br />
                            Task22:
                            <asp:TextBox ID="Task22TextBox" runat="server" Text='<%# Bind("Task22") %>' />
                            <br />
                            Task23:
                            <asp:TextBox ID="Task23TextBox" runat="server" Text='<%# Bind("Task23") %>' />
                            <br />
                            Task24:
                            <asp:TextBox ID="Task24TextBox" runat="server" Text='<%# Bind("Task24") %>' />
                            <br />
                            Task25:
                            <asp:TextBox ID="Task25TextBox" runat="server" Text='<%# Bind("Task25") %>' />
                            <br />
                            Task26:
                            <asp:TextBox ID="Task26TextBox" runat="server" Text='<%# Bind("Task26") %>' />
                            <br />
                            Task27:
                            <asp:TextBox ID="Task27TextBox" runat="server" Text='<%# Bind("Task27") %>' />
                            <br />
                            Task28:
                            <asp:TextBox ID="Task28TextBox" runat="server" Text='<%# Bind("Task28") %>' />
                            <br />
                            Task29:
                            <asp:TextBox ID="Task29TextBox" runat="server" Text='<%# Bind("Task29") %>' />
                            <br />
                            Task30:
                            <asp:TextBox ID="Task30TextBox" runat="server" Text='<%# Bind("Task30") %>' />
                            <br />
                            CheckHash:
                            <asp:TextBox ID="CheckHashTextBox" runat="server" 
                                Text='<%# Bind("CheckHash") %>' />
                            <br />
                            Tasky0:
                            <asp:TextBox ID="Tasky0TextBox" runat="server" Text='<%# Bind("Tasky0") %>' />
                            <br />
                            Tasky1:
                            <asp:TextBox ID="Tasky1TextBox" runat="server" Text='<%# Bind("Tasky1") %>' />
                            <br />
                            Tasky2:
                            <asp:TextBox ID="Tasky2TextBox" runat="server" Text='<%# Bind("Tasky2") %>' />
                            <br />
                            Tasky3:
                            <asp:TextBox ID="Tasky3TextBox" runat="server" Text='<%# Bind("Tasky3") %>' />
                            <br />
                            Tasky4:
                            <asp:TextBox ID="Tasky4TextBox" runat="server" Text='<%# Bind("Tasky4") %>' />
                            <br />
                            Tasky5:
                            <asp:TextBox ID="Tasky5TextBox" runat="server" Text='<%# Bind("Tasky5") %>' />
                            <br />
                            Tasky6:
                            <asp:TextBox ID="Tasky6TextBox" runat="server" Text='<%# Bind("Tasky6") %>' />
                            <br />
                            Tasky7:
                            <asp:TextBox ID="Tasky7TextBox" runat="server" Text='<%# Bind("Tasky7") %>' />
                            <br />
                            Tasky8:
                            <asp:TextBox ID="Tasky8TextBox" runat="server" Text='<%# Bind("Tasky8") %>' />
                            <br />
                            Tasky9:
                            <asp:TextBox ID="Tasky9TextBox" runat="server" Text='<%# Bind("Tasky9") %>' />
                            <br />
                            Tasky10:
                            <asp:TextBox ID="Tasky10TextBox" runat="server" Text='<%# Bind("Tasky10") %>' />
                            <br />
                            Tasky11:
                            <asp:TextBox ID="Tasky11TextBox" runat="server" Text='<%# Bind("Tasky11") %>' />
                            <br />
                            Tasky12:
                            <asp:TextBox ID="Tasky12TextBox" runat="server" Text='<%# Bind("Tasky12") %>' />
                            <br />
                            Tasky13:
                            <asp:TextBox ID="Tasky13TextBox" runat="server" Text='<%# Bind("Tasky13") %>' />
                            <br />
                            Tasky14:
                            <asp:TextBox ID="Tasky14TextBox" runat="server" Text='<%# Bind("Tasky14") %>' />
                            <br />
                            Tasky15:
                            <asp:TextBox ID="Tasky15TextBox" runat="server" Text='<%# Bind("Tasky15") %>' />
                            <br />
                            Tasky16:
                            <asp:TextBox ID="Tasky16TextBox" runat="server" Text='<%# Bind("Tasky16") %>' />
                            <br />
                            Tasky17:
                            <asp:TextBox ID="Tasky17TextBox" runat="server" Text='<%# Bind("Tasky17") %>' />
                            <br />
                            Tasky18:
                            <asp:TextBox ID="Tasky18TextBox" runat="server" Text='<%# Bind("Tasky18") %>' />
                            <br />
                            Tasky19:
                            <asp:TextBox ID="Tasky19TextBox" runat="server" Text='<%# Bind("Tasky19") %>' />
                            <br />
                            Tasky20:
                            <asp:TextBox ID="Tasky20TextBox" runat="server" Text='<%# Bind("Tasky20") %>' />
                            <br />
                            Tasky21:
                            <asp:TextBox ID="Tasky21TextBox" runat="server" Text='<%# Bind("Tasky21") %>' />
                            <br />
                            Tasky22:
                            <asp:TextBox ID="Tasky22TextBox" runat="server" Text='<%# Bind("Tasky22") %>' />
                            <br />
                            Tasky23:
                            <asp:TextBox ID="Tasky23TextBox" runat="server" Text='<%# Bind("Tasky23") %>' />
                            <br />
                            Tasky24:
                            <asp:TextBox ID="Tasky24TextBox" runat="server" Text='<%# Bind("Tasky24") %>' />
                            <br />
                            Tasky25:
                            <asp:TextBox ID="Tasky25TextBox" runat="server" Text='<%# Bind("Tasky25") %>' />
                            <br />
                            Tasky26:
                            <asp:TextBox ID="Tasky26TextBox" runat="server" Text='<%# Bind("Tasky26") %>' />
                            <br />
                            Tasky27:
                            <asp:TextBox ID="Tasky27TextBox" runat="server" Text='<%# Bind("Tasky27") %>' />
                            <br />
                            Tasky28:
                            <asp:TextBox ID="Tasky28TextBox" runat="server" Text='<%# Bind("Tasky28") %>' />
                            <br />
                            Tasky29:
                            <asp:TextBox ID="Tasky29TextBox" runat="server" Text='<%# Bind("Tasky29") %>' />
                            <br />
                            Tasky30:
                            <asp:TextBox ID="Tasky30TextBox" runat="server" Text='<%# Bind("Tasky30") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            &nbsp;<br />
                            Task Type:
                            <asp:TextBox ID="TaskTypeTextBox" runat="server" 
                                Text='<%# Bind("TaskType") %>' />
                            <br />
                            User Name:
                            <asp:TextBox ID="UserNameTextBox" runat="server" 
                                Text='<%# Bind("UserName") %>' />
                            <br />
                            Task Date:
                            <asp:TextBox ID="TaskDateTextBox" runat="server" 
                                Text='<%# Bind("TaskDate") %>' />
                            <br />
                            Task Version:
                            <asp:TextBox ID="TaskVerTextBox" runat="server" Text='<%# Bind("TaskVer") %>' />
                            <br />
                            <br />
                            <asp:TextBox ID="Tasky0TextBox" runat="server" Text='<%# Bind("Tasky0") %>' Width="10" />
                            <asp:TextBox ID="Task0TextBox" runat="server" Text='<%# Bind("Task0") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky1TextBox" runat="server" Text='<%# Bind("Tasky1") %>' Width="10" />
                            <asp:TextBox ID="Task1TextBox" runat="server" Text='<%# Bind("Task1") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky2TextBox" runat="server" Text='<%# Bind("Tasky2") %>' Width="10" />
                            <asp:TextBox ID="Task2TextBox" runat="server" Text='<%# Bind("Task2") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky3TextBox" runat="server" Text='<%# Bind("Tasky3") %>' Width="10" />
                            <asp:TextBox ID="Task3TextBox" runat="server" Text='<%# Bind("Task3") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky4TextBox" runat="server" Text='<%# Bind("Tasky4") %>' Width="10" />
                            <asp:TextBox ID="Task4TextBox" runat="server" Text='<%# Bind("Task4") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky5TextBox" runat="server" Text='<%# Bind("Tasky5") %>' Width="10" />
                            <asp:TextBox ID="Task5TextBox" runat="server" Text='<%# Bind("Task5") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky6TextBox" runat="server" Text='<%# Bind("Tasky6") %>' Width="10" />
                            <asp:TextBox ID="Task6TextBox" runat="server" Text='<%# Bind("Task6") %>' Width="450" />
                            <br />                            
                            <asp:TextBox ID="Tasky7TextBox" runat="server" Text='<%# Bind("Tasky7") %>' Width="10" />
                            <asp:TextBox ID="Task7TextBox" runat="server" Text='<%# Bind("Task7") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky8TextBox" runat="server" Text='<%# Bind("Tasky8") %>' Width="10" />
                            <asp:TextBox ID="Task8TextBox" runat="server" Text='<%# Bind("Task8") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky9TextBox" runat="server" Text='<%# Bind("Tasky9") %>' Width="10" />
                            <asp:TextBox ID="Task9TextBox" runat="server" Text='<%# Bind("Task9") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky10TextBox" runat="server" Text='<%# Bind("Tasky10") %>' Width="10" />
                            <asp:TextBox ID="Task10TextBox" runat="server" Text='<%# Bind("Task10") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky11TextBox" runat="server" Text='<%# Bind("Tasky11") %>' Width="10" />
                            <asp:TextBox ID="Task11TextBox" runat="server" Text='<%# Bind("Task11") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky12TextBox" runat="server" Text='<%# Bind("Tasky12") %>' Width="10" />
                            <asp:TextBox ID="Task12TextBox" runat="server" Text='<%# Bind("Task12") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky13TextBox" runat="server" Text='<%# Bind("Tasky13") %>' Width="10" />
                            <asp:TextBox ID="Task13TextBox" runat="server" Text='<%# Bind("Task13") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky14TextBox" runat="server" Text='<%# Bind("Tasky14") %>' Width="10" />
                            <asp:TextBox ID="Task14TextBox" runat="server" Text='<%# Bind("Task14") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky15TextBox" runat="server" Text='<%# Bind("Tasky15") %>' Width="10" />
                            <asp:TextBox ID="Task15TextBox" runat="server" Text='<%# Bind("Task15") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky16TextBox" runat="server" Text='<%# Bind("Tasky16") %>' Width="10" />
                            <asp:TextBox ID="Task16TextBox" runat="server" Text='<%# Bind("Task16") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky17TextBox" runat="server" Text='<%# Bind("Tasky17") %>' Width="10" />
                            <asp:TextBox ID="Task17TextBox" runat="server" Text='<%# Bind("Task17") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky18TextBox" runat="server" Text='<%# Bind("Tasky18") %>' Width="10" />
                            <asp:TextBox ID="Task18TextBox" runat="server" Text='<%# Bind("Task18") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky19TextBox" runat="server" Text='<%# Bind("Tasky19") %>' Width="10" />
                            <asp:TextBox ID="Task19TextBox" runat="server" Text='<%# Bind("Task19") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky20TextBox" runat="server" Text='<%# Bind("Tasky20") %>' Width="10" />
                            <asp:TextBox ID="Task20TextBox" runat="server" Text='<%# Bind("Task20") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky21TextBox" runat="server" Text='<%# Bind("Tasky21") %>' Width="10" />
                            <asp:TextBox ID="Task21TextBox" runat="server" Text='<%# Bind("Task21") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky22TextBox" runat="server" Text='<%# Bind("Tasky22") %>' Width="10" />
                            <asp:TextBox ID="Task22TextBox" runat="server" Text='<%# Bind("Task22") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky23TextBox" runat="server" Text='<%# Bind("Tasky23") %>' Width="10" />
                            <asp:TextBox ID="Task23TextBox" runat="server" Text='<%# Bind("Task23") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky24TextBox" runat="server" Text='<%# Bind("Tasky24") %>' Width="10" />
                            <asp:TextBox ID="Task24TextBox" runat="server" Text='<%# Bind("Task24") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky25TextBox" runat="server" Text='<%# Bind("Tasky25") %>' Width="10" />
                            <asp:TextBox ID="Task25TextBox" runat="server" Text='<%# Bind("Task25") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky26TextBox" runat="server" Text='<%# Bind("Tasky26") %>' Width="10" />
                            <asp:TextBox ID="Task26TextBox" runat="server" Text='<%# Bind("Task26") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky27TextBox" runat="server" Text='<%# Bind("Tasky27") %>' Width="10" />
                            <asp:TextBox ID="Task27TextBox" runat="server" Text='<%# Bind("Task27") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky28TextBox" runat="server" Text='<%# Bind("Tasky28") %>' Width="10" />
                            <asp:TextBox ID="Task28TextBox" runat="server" Text='<%# Bind("Task28") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky29TextBox" runat="server" Text='<%# Bind("Tasky29") %>' Width="10" />
                            <asp:TextBox ID="Task29TextBox" runat="server" Text='<%# Bind("Task29") %>' Width="450" />
                            <br />
                            <asp:TextBox ID="Tasky30TextBox" runat="server" Text='<%# Bind("Tasky30") %>' Width="10" />
                            <asp:TextBox ID="Task30TextBox" runat="server" Text='<%# Bind("Task30") %>' Width="450" />
                            <br />
                            
                            <br />
                            &nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:FormView>
                    
                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:jumpstartConnectionString %>" 
                        DeleteCommand="DELETE FROM [CheckList] WHERE [Checklist] = @original_Checklist AND [TaskType] = @original_TaskType AND [UserName] = @original_UserName AND [TaskDate] = @original_TaskDate AND [TaskVer] = @original_TaskVer AND (([TaskGrade] = @original_TaskGrade) OR ([TaskGrade] IS NULL AND @original_TaskGrade IS NULL)) AND (([Task0] = @original_Task0) OR ([Task0] IS NULL AND @original_Task0 IS NULL)) AND (([Task1] = @original_Task1) OR ([Task1] IS NULL AND @original_Task1 IS NULL)) AND (([Task2] = @original_Task2) OR ([Task2] IS NULL AND @original_Task2 IS NULL)) AND (([Task3] = @original_Task3) OR ([Task3] IS NULL AND @original_Task3 IS NULL)) AND (([Task4] = @original_Task4) OR ([Task4] IS NULL AND @original_Task4 IS NULL)) AND (([Task5] = @original_Task5) OR ([Task5] IS NULL AND @original_Task5 IS NULL)) AND (([Task6] = @original_Task6) OR ([Task6] IS NULL AND @original_Task6 IS NULL)) AND (([Task7] = @original_Task7) OR ([Task7] IS NULL AND @original_Task7 IS NULL)) AND (([Task8] = @original_Task8) OR ([Task8] IS NULL AND @original_Task8 IS NULL)) AND (([Task9] = @original_Task9) OR ([Task9] IS NULL AND @original_Task9 IS NULL)) AND (([Task10] = @original_Task10) OR ([Task10] IS NULL AND @original_Task10 IS NULL)) AND (([Task11] = @original_Task11) OR ([Task11] IS NULL AND @original_Task11 IS NULL)) AND (([Task12] = @original_Task12) OR ([Task12] IS NULL AND @original_Task12 IS NULL)) AND (([Task13] = @original_Task13) OR ([Task13] IS NULL AND @original_Task13 IS NULL)) AND (([Task14] = @original_Task14) OR ([Task14] IS NULL AND @original_Task14 IS NULL)) AND (([Task15] = @original_Task15) OR ([Task15] IS NULL AND @original_Task15 IS NULL)) AND (([Task16] = @original_Task16) OR ([Task16] IS NULL AND @original_Task16 IS NULL)) AND (([Task17] = @original_Task17) OR ([Task17] IS NULL AND @original_Task17 IS NULL)) AND (([Task18] = @original_Task18) OR ([Task18] IS NULL AND @original_Task18 IS NULL)) AND (([Task19] = @original_Task19) OR ([Task19] IS NULL AND @original_Task19 IS NULL)) AND (([Task20] = @original_Task20) OR ([Task20] IS NULL AND @original_Task20 IS NULL)) AND (([Task21] = @original_Task21) OR ([Task21] IS NULL AND @original_Task21 IS NULL)) AND (([Task22] = @original_Task22) OR ([Task22] IS NULL AND @original_Task22 IS NULL)) AND (([Task23] = @original_Task23) OR ([Task23] IS NULL AND @original_Task23 IS NULL)) AND (([Task24] = @original_Task24) OR ([Task24] IS NULL AND @original_Task24 IS NULL)) AND (([Task25] = @original_Task25) OR ([Task25] IS NULL AND @original_Task25 IS NULL)) AND (([Task26] = @original_Task26) OR ([Task26] IS NULL AND @original_Task26 IS NULL)) AND (([Task27] = @original_Task27) OR ([Task27] IS NULL AND @original_Task27 IS NULL)) AND (([Task28] = @original_Task28) OR ([Task28] IS NULL AND @original_Task28 IS NULL)) AND (([Task29] = @original_Task29) OR ([Task29] IS NULL AND @original_Task29 IS NULL)) AND (([Task30] = @original_Task30) OR ([Task30] IS NULL AND @original_Task30 IS NULL)) AND (([CheckHash] = @original_CheckHash) OR ([CheckHash] IS NULL AND @original_CheckHash IS NULL)) AND (([Tasky0] = @original_Tasky0) OR ([Tasky0] IS NULL AND @original_Tasky0 IS NULL)) AND (([Tasky1] = @original_Tasky1) OR ([Tasky1] IS NULL AND @original_Tasky1 IS NULL)) AND (([Tasky2] = @original_Tasky2) OR ([Tasky2] IS NULL AND @original_Tasky2 IS NULL)) AND (([Tasky3] = @original_Tasky3) OR ([Tasky3] IS NULL AND @original_Tasky3 IS NULL)) AND (([Tasky4] = @original_Tasky4) OR ([Tasky4] IS NULL AND @original_Tasky4 IS NULL)) AND (([Tasky5] = @original_Tasky5) OR ([Tasky5] IS NULL AND @original_Tasky5 IS NULL)) AND (([Tasky6] = @original_Tasky6) OR ([Tasky6] IS NULL AND @original_Tasky6 IS NULL)) AND (([Tasky7] = @original_Tasky7) OR ([Tasky7] IS NULL AND @original_Tasky7 IS NULL)) AND (([Tasky8] = @original_Tasky8) OR ([Tasky8] IS NULL AND @original_Tasky8 IS NULL)) AND (([Tasky9] = @original_Tasky9) OR ([Tasky9] IS NULL AND @original_Tasky9 IS NULL)) AND (([Tasky10] = @original_Tasky10) OR ([Tasky10] IS NULL AND @original_Tasky10 IS NULL)) AND (([Tasky11] = @original_Tasky11) OR ([Tasky11] IS NULL AND @original_Tasky11 IS NULL)) AND (([Tasky12] = @original_Tasky12) OR ([Tasky12] IS NULL AND @original_Tasky12 IS NULL)) AND (([Tasky13] = @original_Tasky13) OR ([Tasky13] IS NULL AND @original_Tasky13 IS NULL)) AND (([Tasky14] = @original_Tasky14) OR ([Tasky14] IS NULL AND @original_Tasky14 IS NULL)) AND (([Tasky15] = @original_Tasky15) OR ([Tasky15] IS NULL AND @original_Tasky15 IS NULL)) AND (([Tasky16] = @original_Tasky16) OR ([Tasky16] IS NULL AND @original_Tasky16 IS NULL)) AND (([Tasky17] = @original_Tasky17) OR ([Tasky17] IS NULL AND @original_Tasky17 IS NULL)) AND (([Tasky18] = @original_Tasky18) OR ([Tasky18] IS NULL AND @original_Tasky18 IS NULL)) AND (([Tasky19] = @original_Tasky19) OR ([Tasky19] IS NULL AND @original_Tasky19 IS NULL)) AND (([Tasky20] = @original_Tasky20) OR ([Tasky20] IS NULL AND @original_Tasky20 IS NULL)) AND (([Tasky21] = @original_Tasky21) OR ([Tasky21] IS NULL AND @original_Tasky21 IS NULL)) AND (([Tasky22] = @original_Tasky22) OR ([Tasky22] IS NULL AND @original_Tasky22 IS NULL)) AND (([Tasky23] = @original_Tasky23) OR ([Tasky23] IS NULL AND @original_Tasky23 IS NULL)) AND (([Tasky24] = @original_Tasky24) OR ([Tasky24] IS NULL AND @original_Tasky24 IS NULL)) AND (([Tasky25] = @original_Tasky25) OR ([Tasky25] IS NULL AND @original_Tasky25 IS NULL)) AND (([Tasky26] = @original_Tasky26) OR ([Tasky26] IS NULL AND @original_Tasky26 IS NULL)) AND (([Tasky27] = @original_Tasky27) OR ([Tasky27] IS NULL AND @original_Tasky27 IS NULL)) AND (([Tasky28] = @original_Tasky28) OR ([Tasky28] IS NULL AND @original_Tasky28 IS NULL)) AND (([Tasky29] = @original_Tasky29) OR ([Tasky29] IS NULL AND @original_Tasky29 IS NULL)) AND (([Tasky30] = @original_Tasky30) OR ([Tasky30] IS NULL AND @original_Tasky30 IS NULL))" 
                        InsertCommand="INSERT INTO [CheckList] ([TaskType], [UserName], [TaskDate], [TaskVer], [TaskGrade], [Task0], [Task1], [Task2], [Task3], [Task4], [Task5], [Task6], [Task7], [Task8], [Task9], [Task10], [Task11], [Task12], [Task13], [Task14], [Task15], [Task16], [Task17], [Task18], [Task19], [Task20], [Task21], [Task22], [Task23], [Task24], [Task25], [Task26], [Task27], [Task28], [Task29], [Task30], [CheckHash], [Tasky0], [Tasky1], [Tasky2], [Tasky3], [Tasky4], [Tasky5], [Tasky6], [Tasky7], [Tasky8], [Tasky9], [Tasky10], [Tasky11], [Tasky12], [Tasky13], [Tasky14], [Tasky15], [Tasky16], [Tasky17], [Tasky18], [Tasky19], [Tasky20], [Tasky21], [Tasky22], [Tasky23], [Tasky24], [Tasky25], [Tasky26], [Tasky27], [Tasky28], [Tasky29], [Tasky30]) VALUES (@TaskType, @UserName, @TaskDate, @TaskVer, @TaskGrade, @Task0, @Task1, @Task2, @Task3, @Task4, @Task5, @Task6, @Task7, @Task8, @Task9, @Task10, @Task11, @Task12, @Task13, @Task14, @Task15, @Task16, @Task17, @Task18, @Task19, @Task20, @Task21, @Task22, @Task23, @Task24, @Task25, @Task26, @Task27, @Task28, @Task29, @Task30, @CheckHash, @Tasky0, @Tasky1, @Tasky2, @Tasky3, @Tasky4, @Tasky5, @Tasky6, @Tasky7, @Tasky8, @Tasky9, @Tasky10, @Tasky11, @Tasky12, @Tasky13, @Tasky14, @Tasky15, @Tasky16, @Tasky17, @Tasky18, @Tasky19, @Tasky20, @Tasky21, @Tasky22, @Tasky23, @Tasky24, @Tasky25, @Tasky26, @Tasky27, @Tasky28, @Tasky29, @Tasky30)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT [Checklist], [TaskType], [UserName], [TaskDate], [TaskVer], [TaskGrade], [Task0], [Task1], [Task2], [Task3], [Task4], [Task5], [Task6], [Task7], [Task8], [Task9], [Task10], [Task11], [Task12], [Task13], [Task14], [Task15], [Task16], [Task17], [Task18], [Task19], [Task20], [Task21], [Task22], [Task23], [Task24], [Task25], [Task26], [Task27], [Task28], [Task29], [Task30], [CheckHash], [Tasky0], [Tasky1], [Tasky2], [Tasky3], [Tasky4], [Tasky5], [Tasky6], [Tasky7], [Tasky8], [Tasky9], [Tasky10], [Tasky11], [Tasky12], [Tasky13], [Tasky14], [Tasky15], [Tasky16], [Tasky17], [Tasky18], [Tasky19], [Tasky20], [Tasky21], [Tasky22], [Tasky23], [Tasky24], [Tasky25], [Tasky26], [Tasky27], [Tasky28], [Tasky29], [Tasky30] FROM [CheckList] WHERE ([CheckHash] = @CheckHash)" 
                        
                        
                        UpdateCommand="UPDATE [CheckList] SET [TaskType] = @TaskType, [UserName] = @UserName, [TaskDate] = @TaskDate, [TaskVer] = @TaskVer, [TaskGrade] = @TaskGrade, [Task0] = @Task0, [Task1] = @Task1, [Task2] = @Task2, [Task3] = @Task3, [Task4] = @Task4, [Task5] = @Task5, [Task6] = @Task6, [Task7] = @Task7, [Task8] = @Task8, [Task9] = @Task9, [Task10] = @Task10, [Task11] = @Task11, [Task12] = @Task12, [Task13] = @Task13, [Task14] = @Task14, [Task15] = @Task15, [Task16] = @Task16, [Task17] = @Task17, [Task18] = @Task18, [Task19] = @Task19, [Task20] = @Task20, [Task21] = @Task21, [Task22] = @Task22, [Task23] = @Task23, [Task24] = @Task24, [Task25] = @Task25, [Task26] = @Task26, [Task27] = @Task27, [Task28] = @Task28, [Task29] = @Task29, [Task30] = @Task30, [CheckHash] = @CheckHash, [Tasky0] = @Tasky0, [Tasky1] = @Tasky1, [Tasky2] = @Tasky2, [Tasky3] = @Tasky3, [Tasky4] = @Tasky4, [Tasky5] = @Tasky5, [Tasky6] = @Tasky6, [Tasky7] = @Tasky7, [Tasky8] = @Tasky8, [Tasky9] = @Tasky9, [Tasky10] = @Tasky10, [Tasky11] = @Tasky11, [Tasky12] = @Tasky12, [Tasky13] = @Tasky13, [Tasky14] = @Tasky14, [Tasky15] = @Tasky15, [Tasky16] = @Tasky16, [Tasky17] = @Tasky17, [Tasky18] = @Tasky18, [Tasky19] = @Tasky19, [Tasky20] = @Tasky20, [Tasky21] = @Tasky21, [Tasky22] = @Tasky22, [Tasky23] = @Tasky23, [Tasky24] = @Tasky24, [Tasky25] = @Tasky25, [Tasky26] = @Tasky26, [Tasky27] = @Tasky27, [Tasky28] = @Tasky28, [Tasky29] = @Tasky29, [Tasky30] = @Tasky30 WHERE [Checklist] = @original_Checklist AND [TaskType] = @original_TaskType AND [UserName] = @original_UserName AND [TaskDate] = @original_TaskDate AND [TaskVer] = @original_TaskVer AND (([TaskGrade] = @original_TaskGrade) OR ([TaskGrade] IS NULL AND @original_TaskGrade IS NULL)) AND (([Task0] = @original_Task0) OR ([Task0] IS NULL AND @original_Task0 IS NULL)) AND (([Task1] = @original_Task1) OR ([Task1] IS NULL AND @original_Task1 IS NULL)) AND (([Task2] = @original_Task2) OR ([Task2] IS NULL AND @original_Task2 IS NULL)) AND (([Task3] = @original_Task3) OR ([Task3] IS NULL AND @original_Task3 IS NULL)) AND (([Task4] = @original_Task4) OR ([Task4] IS NULL AND @original_Task4 IS NULL)) AND (([Task5] = @original_Task5) OR ([Task5] IS NULL AND @original_Task5 IS NULL)) AND (([Task6] = @original_Task6) OR ([Task6] IS NULL AND @original_Task6 IS NULL)) AND (([Task7] = @original_Task7) OR ([Task7] IS NULL AND @original_Task7 IS NULL)) AND (([Task8] = @original_Task8) OR ([Task8] IS NULL AND @original_Task8 IS NULL)) AND (([Task9] = @original_Task9) OR ([Task9] IS NULL AND @original_Task9 IS NULL)) AND (([Task10] = @original_Task10) OR ([Task10] IS NULL AND @original_Task10 IS NULL)) AND (([Task11] = @original_Task11) OR ([Task11] IS NULL AND @original_Task11 IS NULL)) AND (([Task12] = @original_Task12) OR ([Task12] IS NULL AND @original_Task12 IS NULL)) AND (([Task13] = @original_Task13) OR ([Task13] IS NULL AND @original_Task13 IS NULL)) AND (([Task14] = @original_Task14) OR ([Task14] IS NULL AND @original_Task14 IS NULL)) AND (([Task15] = @original_Task15) OR ([Task15] IS NULL AND @original_Task15 IS NULL)) AND (([Task16] = @original_Task16) OR ([Task16] IS NULL AND @original_Task16 IS NULL)) AND (([Task17] = @original_Task17) OR ([Task17] IS NULL AND @original_Task17 IS NULL)) AND (([Task18] = @original_Task18) OR ([Task18] IS NULL AND @original_Task18 IS NULL)) AND (([Task19] = @original_Task19) OR ([Task19] IS NULL AND @original_Task19 IS NULL)) AND (([Task20] = @original_Task20) OR ([Task20] IS NULL AND @original_Task20 IS NULL)) AND (([Task21] = @original_Task21) OR ([Task21] IS NULL AND @original_Task21 IS NULL)) AND (([Task22] = @original_Task22) OR ([Task22] IS NULL AND @original_Task22 IS NULL)) AND (([Task23] = @original_Task23) OR ([Task23] IS NULL AND @original_Task23 IS NULL)) AND (([Task24] = @original_Task24) OR ([Task24] IS NULL AND @original_Task24 IS NULL)) AND (([Task25] = @original_Task25) OR ([Task25] IS NULL AND @original_Task25 IS NULL)) AND (([Task26] = @original_Task26) OR ([Task26] IS NULL AND @original_Task26 IS NULL)) AND (([Task27] = @original_Task27) OR ([Task27] IS NULL AND @original_Task27 IS NULL)) AND (([Task28] = @original_Task28) OR ([Task28] IS NULL AND @original_Task28 IS NULL)) AND (([Task29] = @original_Task29) OR ([Task29] IS NULL AND @original_Task29 IS NULL)) AND (([Task30] = @original_Task30) OR ([Task30] IS NULL AND @original_Task30 IS NULL)) AND (([CheckHash] = @original_CheckHash) OR ([CheckHash] IS NULL AND @original_CheckHash IS NULL)) AND (([Tasky0] = @original_Tasky0) OR ([Tasky0] IS NULL AND @original_Tasky0 IS NULL)) AND (([Tasky1] = @original_Tasky1) OR ([Tasky1] IS NULL AND @original_Tasky1 IS NULL)) AND (([Tasky2] = @original_Tasky2) OR ([Tasky2] IS NULL AND @original_Tasky2 IS NULL)) AND (([Tasky3] = @original_Tasky3) OR ([Tasky3] IS NULL AND @original_Tasky3 IS NULL)) AND (([Tasky4] = @original_Tasky4) OR ([Tasky4] IS NULL AND @original_Tasky4 IS NULL)) AND (([Tasky5] = @original_Tasky5) OR ([Tasky5] IS NULL AND @original_Tasky5 IS NULL)) AND (([Tasky6] = @original_Tasky6) OR ([Tasky6] IS NULL AND @original_Tasky6 IS NULL)) AND (([Tasky7] = @original_Tasky7) OR ([Tasky7] IS NULL AND @original_Tasky7 IS NULL)) AND (([Tasky8] = @original_Tasky8) OR ([Tasky8] IS NULL AND @original_Tasky8 IS NULL)) AND (([Tasky9] = @original_Tasky9) OR ([Tasky9] IS NULL AND @original_Tasky9 IS NULL)) AND (([Tasky10] = @original_Tasky10) OR ([Tasky10] IS NULL AND @original_Tasky10 IS NULL)) AND (([Tasky11] = @original_Tasky11) OR ([Tasky11] IS NULL AND @original_Tasky11 IS NULL)) AND (([Tasky12] = @original_Tasky12) OR ([Tasky12] IS NULL AND @original_Tasky12 IS NULL)) AND (([Tasky13] = @original_Tasky13) OR ([Tasky13] IS NULL AND @original_Tasky13 IS NULL)) AND (([Tasky14] = @original_Tasky14) OR ([Tasky14] IS NULL AND @original_Tasky14 IS NULL)) AND (([Tasky15] = @original_Tasky15) OR ([Tasky15] IS NULL AND @original_Tasky15 IS NULL)) AND (([Tasky16] = @original_Tasky16) OR ([Tasky16] IS NULL AND @original_Tasky16 IS NULL)) AND (([Tasky17] = @original_Tasky17) OR ([Tasky17] IS NULL AND @original_Tasky17 IS NULL)) AND (([Tasky18] = @original_Tasky18) OR ([Tasky18] IS NULL AND @original_Tasky18 IS NULL)) AND (([Tasky19] = @original_Tasky19) OR ([Tasky19] IS NULL AND @original_Tasky19 IS NULL)) AND (([Tasky20] = @original_Tasky20) OR ([Tasky20] IS NULL AND @original_Tasky20 IS NULL)) AND (([Tasky21] = @original_Tasky21) OR ([Tasky21] IS NULL AND @original_Tasky21 IS NULL)) AND (([Tasky22] = @original_Tasky22) OR ([Tasky22] IS NULL AND @original_Tasky22 IS NULL)) AND (([Tasky23] = @original_Tasky23) OR ([Tasky23] IS NULL AND @original_Tasky23 IS NULL)) AND (([Tasky24] = @original_Tasky24) OR ([Tasky24] IS NULL AND @original_Tasky24 IS NULL)) AND (([Tasky25] = @original_Tasky25) OR ([Tasky25] IS NULL AND @original_Tasky25 IS NULL)) AND (([Tasky26] = @original_Tasky26) OR ([Tasky26] IS NULL AND @original_Tasky26 IS NULL)) AND (([Tasky27] = @original_Tasky27) OR ([Tasky27] IS NULL AND @original_Tasky27 IS NULL)) AND (([Tasky28] = @original_Tasky28) OR ([Tasky28] IS NULL AND @original_Tasky28 IS NULL)) AND (([Tasky29] = @original_Tasky29) OR ([Tasky29] IS NULL AND @original_Tasky29 IS NULL)) AND (([Tasky30] = @original_Tasky30) OR ([Tasky30] IS NULL AND @original_Tasky30 IS NULL))">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="CheckHash" QueryStringField="CheckHash" 
                                Type="String" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="original_Checklist" Type="Int32" />
                            <asp:Parameter Name="original_TaskType" Type="String" />
                            <asp:Parameter Name="original_UserName" Type="String" />
                            <asp:Parameter Name="original_TaskDate" Type="DateTime" />
                            <asp:Parameter Name="original_TaskVer" Type="String" />
                            <asp:Parameter Name="original_TaskGrade" Type="String" />
                            <asp:Parameter Name="original_Task0" Type="String" />
                            <asp:Parameter Name="original_Task1" Type="String" />
                            <asp:Parameter Name="original_Task2" Type="String" />
                            <asp:Parameter Name="original_Task3" Type="String" />
                            <asp:Parameter Name="original_Task4" Type="String" />
                            <asp:Parameter Name="original_Task5" Type="String" />
                            <asp:Parameter Name="original_Task6" Type="String" />
                            <asp:Parameter Name="original_Task7" Type="String" />
                            <asp:Parameter Name="original_Task8" Type="String" />
                            <asp:Parameter Name="original_Task9" Type="String" />
                            <asp:Parameter Name="original_Task10" Type="String" />
                            <asp:Parameter Name="original_Task11" Type="String" />
                            <asp:Parameter Name="original_Task12" Type="String" />
                            <asp:Parameter Name="original_Task13" Type="String" />
                            <asp:Parameter Name="original_Task14" Type="String" />
                            <asp:Parameter Name="original_Task15" Type="String" />
                            <asp:Parameter Name="original_Task16" Type="String" />
                            <asp:Parameter Name="original_Task17" Type="String" />
                            <asp:Parameter Name="original_Task18" Type="String" />
                            <asp:Parameter Name="original_Task19" Type="String" />
                            <asp:Parameter Name="original_Task20" Type="String" />
                            <asp:Parameter Name="original_Task21" Type="String" />
                            <asp:Parameter Name="original_Task22" Type="String" />
                            <asp:Parameter Name="original_Task23" Type="String" />
                            <asp:Parameter Name="original_Task24" Type="String" />
                            <asp:Parameter Name="original_Task25" Type="String" />
                            <asp:Parameter Name="original_Task26" Type="String" />
                            <asp:Parameter Name="original_Task27" Type="String" />
                            <asp:Parameter Name="original_Task28" Type="String" />
                            <asp:Parameter Name="original_Task29" Type="String" />
                            <asp:Parameter Name="original_Task30" Type="String" />
                            <asp:Parameter Name="original_CheckHash" Type="String" />
                            <asp:Parameter Name="original_Tasky0" Type="String" />
                            <asp:Parameter Name="original_Tasky1" Type="String" />
                            <asp:Parameter Name="original_Tasky2" Type="String" />
                            <asp:Parameter Name="original_Tasky3" Type="String" />
                            <asp:Parameter Name="original_Tasky4" Type="String" />
                            <asp:Parameter Name="original_Tasky5" Type="String" />
                            <asp:Parameter Name="original_Tasky6" Type="String" />
                            <asp:Parameter Name="original_Tasky7" Type="String" />
                            <asp:Parameter Name="original_Tasky8" Type="String" />
                            <asp:Parameter Name="original_Tasky9" Type="String" />
                            <asp:Parameter Name="original_Tasky10" Type="String" />
                            <asp:Parameter Name="original_Tasky11" Type="String" />
                            <asp:Parameter Name="original_Tasky12" Type="String" />
                            <asp:Parameter Name="original_Tasky13" Type="String" />
                            <asp:Parameter Name="original_Tasky14" Type="String" />
                            <asp:Parameter Name="original_Tasky15" Type="String" />
                            <asp:Parameter Name="original_Tasky16" Type="String" />
                            <asp:Parameter Name="original_Tasky17" Type="String" />
                            <asp:Parameter Name="original_Tasky18" Type="String" />
                            <asp:Parameter Name="original_Tasky19" Type="String" />
                            <asp:Parameter Name="original_Tasky20" Type="String" />
                            <asp:Parameter Name="original_Tasky21" Type="String" />
                            <asp:Parameter Name="original_Tasky22" Type="String" />
                            <asp:Parameter Name="original_Tasky23" Type="String" />
                            <asp:Parameter Name="original_Tasky24" Type="String" />
                            <asp:Parameter Name="original_Tasky25" Type="String" />
                            <asp:Parameter Name="original_Tasky26" Type="String" />
                            <asp:Parameter Name="original_Tasky27" Type="String" />
                            <asp:Parameter Name="original_Tasky28" Type="String" />
                            <asp:Parameter Name="original_Tasky29" Type="String" />
                            <asp:Parameter Name="original_Tasky30" Type="String" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TaskType" Type="String" />
                            <asp:Parameter Name="UserName" Type="String" />
                            <asp:Parameter Name="TaskDate" Type="DateTime" />
                            <asp:Parameter Name="TaskVer" Type="String" />
                            <asp:Parameter Name="TaskGrade" Type="String" />
                            <asp:Parameter Name="Task0" Type="String" />
                            <asp:Parameter Name="Task1" Type="String" />
                            <asp:Parameter Name="Task2" Type="String" />
                            <asp:Parameter Name="Task3" Type="String" />
                            <asp:Parameter Name="Task4" Type="String" />
                            <asp:Parameter Name="Task5" Type="String" />
                            <asp:Parameter Name="Task6" Type="String" />
                            <asp:Parameter Name="Task7" Type="String" />
                            <asp:Parameter Name="Task8" Type="String" />
                            <asp:Parameter Name="Task9" Type="String" />
                            <asp:Parameter Name="Task10" Type="String" />
                            <asp:Parameter Name="Task11" Type="String" />
                            <asp:Parameter Name="Task12" Type="String" />
                            <asp:Parameter Name="Task13" Type="String" />
                            <asp:Parameter Name="Task14" Type="String" />
                            <asp:Parameter Name="Task15" Type="String" />
                            <asp:Parameter Name="Task16" Type="String" />
                            <asp:Parameter Name="Task17" Type="String" />
                            <asp:Parameter Name="Task18" Type="String" />
                            <asp:Parameter Name="Task19" Type="String" />
                            <asp:Parameter Name="Task20" Type="String" />
                            <asp:Parameter Name="Task21" Type="String" />
                            <asp:Parameter Name="Task22" Type="String" />
                            <asp:Parameter Name="Task23" Type="String" />
                            <asp:Parameter Name="Task24" Type="String" />
                            <asp:Parameter Name="Task25" Type="String" />
                            <asp:Parameter Name="Task26" Type="String" />
                            <asp:Parameter Name="Task27" Type="String" />
                            <asp:Parameter Name="Task28" Type="String" />
                            <asp:Parameter Name="Task29" Type="String" />
                            <asp:Parameter Name="Task30" Type="String" />
                            <asp:Parameter Name="CheckHash" Type="String" />
                            <asp:Parameter Name="Tasky0" Type="String" />
                            <asp:Parameter Name="Tasky1" Type="String" />
                            <asp:Parameter Name="Tasky2" Type="String" />
                            <asp:Parameter Name="Tasky3" Type="String" />
                            <asp:Parameter Name="Tasky4" Type="String" />
                            <asp:Parameter Name="Tasky5" Type="String" />
                            <asp:Parameter Name="Tasky6" Type="String" />
                            <asp:Parameter Name="Tasky7" Type="String" />
                            <asp:Parameter Name="Tasky8" Type="String" />
                            <asp:Parameter Name="Tasky9" Type="String" />
                            <asp:Parameter Name="Tasky10" Type="String" />
                            <asp:Parameter Name="Tasky11" Type="String" />
                            <asp:Parameter Name="Tasky12" Type="String" />
                            <asp:Parameter Name="Tasky13" Type="String" />
                            <asp:Parameter Name="Tasky14" Type="String" />
                            <asp:Parameter Name="Tasky15" Type="String" />
                            <asp:Parameter Name="Tasky16" Type="String" />
                            <asp:Parameter Name="Tasky17" Type="String" />
                            <asp:Parameter Name="Tasky18" Type="String" />
                            <asp:Parameter Name="Tasky19" Type="String" />
                            <asp:Parameter Name="Tasky20" Type="String" />
                            <asp:Parameter Name="Tasky21" Type="String" />
                            <asp:Parameter Name="Tasky22" Type="String" />
                            <asp:Parameter Name="Tasky23" Type="String" />
                            <asp:Parameter Name="Tasky24" Type="String" />
                            <asp:Parameter Name="Tasky25" Type="String" />
                            <asp:Parameter Name="Tasky26" Type="String" />
                            <asp:Parameter Name="Tasky27" Type="String" />
                            <asp:Parameter Name="Tasky28" Type="String" />
                            <asp:Parameter Name="Tasky29" Type="String" />
                            <asp:Parameter Name="Tasky30" Type="String" />
                            <asp:Parameter Name="original_Checklist" Type="Int32" />
                            <asp:Parameter Name="original_TaskType" Type="String" />
                            <asp:Parameter Name="original_UserName" Type="String" />
                            <asp:Parameter Name="original_TaskDate" Type="DateTime" />
                            <asp:Parameter Name="original_TaskVer" Type="String" />
                            <asp:Parameter Name="original_TaskGrade" Type="String" />
                            <asp:Parameter Name="original_Task0" Type="String" />
                            <asp:Parameter Name="original_Task1" Type="String" />
                            <asp:Parameter Name="original_Task2" Type="String" />
                            <asp:Parameter Name="original_Task3" Type="String" />
                            <asp:Parameter Name="original_Task4" Type="String" />
                            <asp:Parameter Name="original_Task5" Type="String" />
                            <asp:Parameter Name="original_Task6" Type="String" />
                            <asp:Parameter Name="original_Task7" Type="String" />
                            <asp:Parameter Name="original_Task8" Type="String" />
                            <asp:Parameter Name="original_Task9" Type="String" />
                            <asp:Parameter Name="original_Task10" Type="String" />
                            <asp:Parameter Name="original_Task11" Type="String" />
                            <asp:Parameter Name="original_Task12" Type="String" />
                            <asp:Parameter Name="original_Task13" Type="String" />
                            <asp:Parameter Name="original_Task14" Type="String" />
                            <asp:Parameter Name="original_Task15" Type="String" />
                            <asp:Parameter Name="original_Task16" Type="String" />
                            <asp:Parameter Name="original_Task17" Type="String" />
                            <asp:Parameter Name="original_Task18" Type="String" />
                            <asp:Parameter Name="original_Task19" Type="String" />
                            <asp:Parameter Name="original_Task20" Type="String" />
                            <asp:Parameter Name="original_Task21" Type="String" />
                            <asp:Parameter Name="original_Task22" Type="String" />
                            <asp:Parameter Name="original_Task23" Type="String" />
                            <asp:Parameter Name="original_Task24" Type="String" />
                            <asp:Parameter Name="original_Task25" Type="String" />
                            <asp:Parameter Name="original_Task26" Type="String" />
                            <asp:Parameter Name="original_Task27" Type="String" />
                            <asp:Parameter Name="original_Task28" Type="String" />
                            <asp:Parameter Name="original_Task29" Type="String" />
                            <asp:Parameter Name="original_Task30" Type="String" />
                            <asp:Parameter Name="original_CheckHash" Type="String" />
                            <asp:Parameter Name="original_Tasky0" Type="String" />
                            <asp:Parameter Name="original_Tasky1" Type="String" />
                            <asp:Parameter Name="original_Tasky2" Type="String" />
                            <asp:Parameter Name="original_Tasky3" Type="String" />
                            <asp:Parameter Name="original_Tasky4" Type="String" />
                            <asp:Parameter Name="original_Tasky5" Type="String" />
                            <asp:Parameter Name="original_Tasky6" Type="String" />
                            <asp:Parameter Name="original_Tasky7" Type="String" />
                            <asp:Parameter Name="original_Tasky8" Type="String" />
                            <asp:Parameter Name="original_Tasky9" Type="String" />
                            <asp:Parameter Name="original_Tasky10" Type="String" />
                            <asp:Parameter Name="original_Tasky11" Type="String" />
                            <asp:Parameter Name="original_Tasky12" Type="String" />
                            <asp:Parameter Name="original_Tasky13" Type="String" />
                            <asp:Parameter Name="original_Tasky14" Type="String" />
                            <asp:Parameter Name="original_Tasky15" Type="String" />
                            <asp:Parameter Name="original_Tasky16" Type="String" />
                            <asp:Parameter Name="original_Tasky17" Type="String" />
                            <asp:Parameter Name="original_Tasky18" Type="String" />
                            <asp:Parameter Name="original_Tasky19" Type="String" />
                            <asp:Parameter Name="original_Tasky20" Type="String" />
                            <asp:Parameter Name="original_Tasky21" Type="String" />
                            <asp:Parameter Name="original_Tasky22" Type="String" />
                            <asp:Parameter Name="original_Tasky23" Type="String" />
                            <asp:Parameter Name="original_Tasky24" Type="String" />
                            <asp:Parameter Name="original_Tasky25" Type="String" />
                            <asp:Parameter Name="original_Tasky26" Type="String" />
                            <asp:Parameter Name="original_Tasky27" Type="String" />
                            <asp:Parameter Name="original_Tasky28" Type="String" />
                            <asp:Parameter Name="original_Tasky29" Type="String" />
                            <asp:Parameter Name="original_Tasky30" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="TaskType" Type="String" />
                            <asp:Parameter Name="UserName" Type="String" />
                            <asp:Parameter Name="TaskDate" Type="DateTime" />
                            <asp:Parameter Name="TaskVer" Type="String" />
                            <asp:Parameter Name="TaskGrade" Type="String" />
                            <asp:Parameter Name="Task0" Type="String" />
                            <asp:Parameter Name="Task1" Type="String" />
                            <asp:Parameter Name="Task2" Type="String" />
                            <asp:Parameter Name="Task3" Type="String" />
                            <asp:Parameter Name="Task4" Type="String" />
                            <asp:Parameter Name="Task5" Type="String" />
                            <asp:Parameter Name="Task6" Type="String" />
                            <asp:Parameter Name="Task7" Type="String" />
                            <asp:Parameter Name="Task8" Type="String" />
                            <asp:Parameter Name="Task9" Type="String" />
                            <asp:Parameter Name="Task10" Type="String" />
                            <asp:Parameter Name="Task11" Type="String" />
                            <asp:Parameter Name="Task12" Type="String" />
                            <asp:Parameter Name="Task13" Type="String" />
                            <asp:Parameter Name="Task14" Type="String" />
                            <asp:Parameter Name="Task15" Type="String" />
                            <asp:Parameter Name="Task16" Type="String" />
                            <asp:Parameter Name="Task17" Type="String" />
                            <asp:Parameter Name="Task18" Type="String" />
                            <asp:Parameter Name="Task19" Type="String" />
                            <asp:Parameter Name="Task20" Type="String" />
                            <asp:Parameter Name="Task21" Type="String" />
                            <asp:Parameter Name="Task22" Type="String" />
                            <asp:Parameter Name="Task23" Type="String" />
                            <asp:Parameter Name="Task24" Type="String" />
                            <asp:Parameter Name="Task25" Type="String" />
                            <asp:Parameter Name="Task26" Type="String" />
                            <asp:Parameter Name="Task27" Type="String" />
                            <asp:Parameter Name="Task28" Type="String" />
                            <asp:Parameter Name="Task29" Type="String" />
                            <asp:Parameter Name="Task30" Type="String" />
                            <asp:Parameter Name="CheckHash" Type="String" />
                            <asp:Parameter Name="Tasky0" Type="String" />
                            <asp:Parameter Name="Tasky1" Type="String" />
                            <asp:Parameter Name="Tasky2" Type="String" />
                            <asp:Parameter Name="Tasky3" Type="String" />
                            <asp:Parameter Name="Tasky4" Type="String" />
                            <asp:Parameter Name="Tasky5" Type="String" />
                            <asp:Parameter Name="Tasky6" Type="String" />
                            <asp:Parameter Name="Tasky7" Type="String" />
                            <asp:Parameter Name="Tasky8" Type="String" />
                            <asp:Parameter Name="Tasky9" Type="String" />
                            <asp:Parameter Name="Tasky10" Type="String" />
                            <asp:Parameter Name="Tasky11" Type="String" />
                            <asp:Parameter Name="Tasky12" Type="String" />
                            <asp:Parameter Name="Tasky13" Type="String" />
                            <asp:Parameter Name="Tasky14" Type="String" />
                            <asp:Parameter Name="Tasky15" Type="String" />
                            <asp:Parameter Name="Tasky16" Type="String" />
                            <asp:Parameter Name="Tasky17" Type="String" />
                            <asp:Parameter Name="Tasky18" Type="String" />
                            <asp:Parameter Name="Tasky19" Type="String" />
                            <asp:Parameter Name="Tasky20" Type="String" />
                            <asp:Parameter Name="Tasky21" Type="String" />
                            <asp:Parameter Name="Tasky22" Type="String" />
                            <asp:Parameter Name="Tasky23" Type="String" />
                            <asp:Parameter Name="Tasky24" Type="String" />
                            <asp:Parameter Name="Tasky25" Type="String" />
                            <asp:Parameter Name="Tasky26" Type="String" />
                            <asp:Parameter Name="Tasky27" Type="String" />
                            <asp:Parameter Name="Tasky28" Type="String" />
                            <asp:Parameter Name="Tasky29" Type="String" />
                            <asp:Parameter Name="Tasky30" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

