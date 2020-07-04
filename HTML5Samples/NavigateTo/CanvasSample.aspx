<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CanvasSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.CanvasSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="Canvas.aspx" rel="up">Canvas</a> ->
      <a>Canvas Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Canvas Sample
    </h2>
    <br/>
    <input type="button" onclick="checkSupport();" value="Check Support"/><br/>
    <span id="supportstatus">                  
    </span>
    
    <h4>Various Shapes</h4>               
    <canvas id="myCanvas" class="canvasSample" width="320" height="150"></canvas>
    <br/>
    <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
    <pre class="toggleMeNoMargin code">         
    // Define Canvas tag
    &lt;canvas id="myCanvas" width="200" height="100"&gt;&lt;/canvas&gt;

    // Access in JavaScript to draw in it at runtime
    var canvas = document.getElementById("myCanvas");
    var context = canvas.getContext("2d");
    context.fillStyle='Red';
    context.fillRect(0,0,150,75);
    </pre>    

    <script type="text/javascript" src="../Scripts/Canvas.js"></script>
</asp:Content>
