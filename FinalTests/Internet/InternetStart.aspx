<%@ Page Language="VB" MasterPageFile="~/MasterPage1.master" AutoEventWireup="false" CodeFile="InternetStart.aspx.vb" Inherits="TestingCenter_Internet_FinalStart" title="Internet Final Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br /><br />
 
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
                                <h2>Internet <br />Final Exam</h2>
                            </div>
                        </div>
                    </div>
                    <!--! end of Section Title -->
                    <!-- Begin Content Section -->
                    <div class="row">
                        <div class="twelve columns">
                           <div id="quiz-container" style="text-align:center; vertical-align: middle;">
       <asp:ImageButton runat="server" ImageUrl="../../images/quiz/startcert.png" ID="startButton" Text="Begin the Exam" class="white test button radius"
                                    OnClick="startButton_Click" ImageAlign="Middle" />
                          </div>                                                                       
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>             
</asp:Content>

