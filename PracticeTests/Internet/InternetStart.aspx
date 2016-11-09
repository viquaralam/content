<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false"
    CodeFile="InternetStart.aspx.vb" Inherits="Practice_Internet_TestStart" Title="Internet Practice Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                                <h2>Internet</h2>
                                <h2>Practice Quiz</h2>
                            </div>
                        </div>
                    </div>
                    <!--! end of Section Title -->
                    <!-- Begin Content Section -->
                    <div class="row">
                        <div class="twelve columns">
                            <div id="quiz-container" style="text-align: center; vertical-align: middle;">
                                <!--<asp:Button ID="startButton" runat="server" Text="Start" 
                        OnClick="startButton_Click" Width="52px" /> -->
                                <asp:ImageButton runat="server" ImageUrl="../../images/quiz/start.png" ID="ImageButton1"
                                    Text="Begin the Quiz" class="white test button radius" OnClick="startButton_Click"
                                    ImageAlign="Middle" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
