<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="FilesFoldersStart.aspx.vb" Inherits="Practice_FilesFolders_TestStart" title="Files & Folders Practice Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <!-- Begin Container -->
    <div class="container">
        <div class="row">
            <!-- Begin Main Conent -->
            <div class="nine columns large" id="mainContent">
                <!-- Begin Section Header -->
                <div class="row">
                    <div class="eight columns">
                    </div>
                    <!--! end of Section Header -->
                    <!-- Begin Section Title -->
                    <div class="row">
                        <div class="twelve columns">
                            <div class="pageHeader questionHeader">
                            <h4>Files and Folders</h4>
                                <h2>Practice Quiz</h2>
                            </div>
                        </div>
                    </div>
                    <!-- end of Section Title -->
                    <!-- Begin Content Section -->
                    <div class="row">
                        <div class="twelve columns">
                           <div id="quiz-container" style="text-align:center; vertical-align: middle;">
                    
                     <asp:ImageButton runat="server" ImageUrl="../../images/quiz/start.png" ID="startButton" Text="Begin the Quiz" class="white test button radius"
                                    OnClick="startButton_Click" ImageAlign="Middle" />
                          </div>                                                                       
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>   
            
</asp:Content>

