<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebSocketSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.WebSocketSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="WebSocket.aspx" rel="up">Web Socket</a> ->
      <a>Web Socket Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="../Scripts/WebSocket.js"></script>
    <h2>
        Web Socket Sample
    </h2>
    <br/>
    <input type="button" onclick="checkSupport();" value="Check Support"/><br/>
    <span id="supportstatus">                  
    </span>
    <br/>
    <br/>
    <div>Send & Recieve Messages : <button id="wsTest" onclick="WebSocketTest()">Run WebSocket</button>  </div>
    <br/>

    <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
    <pre class="toggleMeNoMargin code">         
    // Open a Web Socket
    var ws = new WebSocket("ws://banl07r9ameaf/HTML5Demo/");
    ws.onopen = function () {
        // Send data
        ws.send("Message sent to server");
        alert("Message was sent to server.");
    };
    ws.onmessage = function (evt) {
        //Recieve data
        var receivedmsg = evt.data;
        alert("Message is received from server"+ receivedmsg);
    };
    ws.onclose = function () {
        // Close a Websocket
        alert("Connection is closed.");
    };
    ws.onerror = function (evt) {
            // Log Error
            alert("ERROR!!! " + evt.message);
    };
    </pre>
</asp:Content>

