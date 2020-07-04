<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TableOfContents.aspx.cs" Inherits="HTML5Samples.NavigateTo.TableOfContents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
        <a></a> ->
        <a>Table of Contents</a>    
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">    
    <h2>
        Table of Contents
    </h2>    
    <article>            
        <p>
            <ul>
                <li><a href="Introduction.aspx">Introduction</a></li>
                <li><a href="ToolsToStart.aspx">Tools</a></li>
                <li><a href="Structure.aspx">Structure</a></li>
                <li><a href="Forms.aspx">Forms</a></li>          
                <li><a href="DragDrop.aspx">Drag & Drop</a></li>      
                <li><a href="AudioVideo.aspx">Audio & Video</a></li>
                <li><a href="GeoLocation.aspx">GeoLocation</a></li>
                <li><a href="WebStorage.aspx">Web Storage</a></li>
                <li><a href="WebWorkers.aspx">Web Workers</a></li>
                <li><a href="WebSocket.aspx">Web Socket</a></li>
                <li><a href="Canvas.aspx">Canvas</a></li>
                <li><a href="OfflineApp.aspx">Offline Application</a></li>
                <li><a href="DeviceSupport.aspx">Device Support</a></li>
            </ul>
        </p>            
    </article>
</asp:Content>