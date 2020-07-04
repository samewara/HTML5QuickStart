<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebWorkers.aspx.cs" Inherits="HTML5Samples.NavigateTo.WebWorkers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Web Workers</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>
    Web Workers
</h2>
<p>
    <ul>
        <li>A JavaScript file that allows to perform tasks in a background process in parallel of the main browser process</li>
        <li>Objects accessible <a class="toggleNextElement">[...]</a>            
            <ul class="toggleMeNoMargin">
                <li><code>navigator</code></li>
                <li><code>location</code></li>
                <li><code>importScripts()</code></li>
                <li><code>XMLHttpRequest</code></li>
                <li><code>setTimeout()</code> & <code>setInterval()</code></li>
                <li>JavaScript objects</li>
            </ul>            
        </li>
        <li>Browser Support
            <a class="toggleNextElement">[...]</a>
            <p class="toggleMe">                        
                <img class="fitToPage" alt="" src="../Images/WebWorkersBrowserSupport.png"/>
                <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
            </p>    
        </li>  
        <li><a href="WebWorkersSample.aspx">Sample Demonstration</a></li>                          
    </ul>
</p>
</asp:Content>
