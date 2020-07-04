<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToolsToStart.aspx.cs" Inherits="HTML5Samples.NavigateTo.ToolsToStart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Tools</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
       Helpful Tools to work with HTML5
    </h2>
    <p>
        <ul>
            <li>Browser Support - HTML5 is still a work in progress
                <a class="toggleNextElement">[...]</a>
                <p class="toggleMe">
                    <img class="keepOriginalSize" alt="" src="../Images/DesktopBrowserSupport.png"/><br/>
                    <img class="keepOriginalSize" alt="" src="../Images/MobileBrowserSupport.png"/><br/>
                    <img class="keepOriginalSize" alt="" src="../Images/TabletBrowserSupport.png"/>
                </p>
                <ul>
                    <li><a href="http://html5test.com/" target="_blank">HTML5 Test [^]</a> - provides a HTML5 score with detail on what can be used</li>
                    <li><a href="http://caniuse.com/" target="_blank">Can I Use [^]</a> - provides a table comparison of major browsers for different features</li>
                    <li><a href="http://www.css3generator.com/" target="_blank">CSS3 Generator [^]</a> - provides a quick style code</li>            
                </ul>                                
            </li>
            <li>Feature Detection
                <ul>
                    <li>Common/Old way - Create dynamic element and see if any property exists for the same</li>
                    <li>An open source (MIT-licensed) <a href="http://www.modernizr.com" target="_blank">JavaScript library [^]</a> - 
                        <a href="MordenizrExample.aspx">Mordernizr Example</a>
                    </li>

                </ul> 
            </li>            
            <li>User Agents Switcher - Websites identify browsers by their user agents. <a class="toggleNextElement">[...]</a>
                <p align="center" class="toggleMe">
                    <img class="keepOriginalSize" alt="" src="../Images/SampleUserAgentSwitcher.png"/>                    
                </p>
            </li>
            <li>Developer Tools - provides several features for exploring and understanding Web pages. <a class="toggleNextElement">[...]</a> 
                <p class="toggleMe">
                    <img class="keepFixedSize" alt="" src="../Images/IEDeveloperTools.PNG"/>
                    <img class="keepFixedSize" alt="" src="../Images/ChromeDeveloperTools.PNG"/>
                    <img class="keepFixedSize" alt="" src="../Images/FireFoxDeveloperTools.PNG"/>
                </p>
            </li>                  
        </ul>
    </p>
</asp:Content>
