<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MordenizrExample.aspx.cs" Inherits="HTML5Samples.NavigateTo.MordenizrExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="ToolsToStart.aspx" rel="up">Tools</a> ->
      <a>Mordernizr Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Mordernizr Example
    </h2>
    <p>
        <h5>How Mordernizr works?</h5>
        <ul>
            <li>Runs automatically once referenced</li>
            <li>Creates a global object called Modernizr</li>
            <li>Contains a set of Boolean properties for each feature it can detect</li>
            <li>Sample Implementation
    <pre class="code">                            
    &lt;script src="modernizr.min.js"&gt;&lt;/script&gt;
    &lt;script type="text/javascript"&gt;
    if (Modernizr.canvas) {
        // Congrats! Canvas is supported on your browser.
    } else {
        // Sorry! No native canvas support available on your browser.
    }
    &lt;/script&gt;      
    </pre>
            </li>
        </ul>
    </p>
</asp:Content>
