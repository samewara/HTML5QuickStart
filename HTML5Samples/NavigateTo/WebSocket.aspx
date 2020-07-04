<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebSocket.aspx.cs" Inherits="HTML5Samples.NavigateTo.WebSocket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Web Socket</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>
    Web Sockets
</h2>
<p>
    <ul>
        <li>Two-way communication over one (TCP) socket</li>
        <li>Protocols - <code>ws:</code> & <code>wss:</code></li>
        <li>Connection upgraded from HTTP to WS</li>
        <li>Post handshake, messages are sent using frames(2 bytes)</li>
        <li>Server notifies the client of new messages</li>       
        <li>Attributes, Methods & Events <a class="toggleNextElement">[...]</a>            
            <ul class="toggleMeNoMargin">
                <li><code>readyState</code></li>
                <li><code>bufferedAmount</code></li>
                <li><code>onopen</code></li>
                <li><code>onmessage</code></li>
                <li><code>onclose</code></li>
                <li><code>onerror</code></li>
                <li><code>send()</code></li>
                <li><code>close()</code></li>
            </ul>            
        </li>
        <li>Usage
            <ul>
                <li>create web socket</li>
                <li>define event listeners</li>
                <li>send message</li>
            </ul>
        </li>
        <li>Reduces latency & size</li>
        <li>Browser Support
            <a class="toggleNextElement">[...]</a>
            <p class="toggleMe">                        
                <img class="fitToPage" alt="" src="../Images/WebSocketBrowserSupport.png"/>
                <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
            </p>    
        </li>  
        <li><a href="WebSocketSample.aspx">Sample Demonstration</a></li>                             
    </ul>
</p>
</asp:Content>
