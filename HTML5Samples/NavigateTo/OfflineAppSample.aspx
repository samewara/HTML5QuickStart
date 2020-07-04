<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OfflineAppSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.OfflineAppSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="OfflineApp.aspx" rel="up">Offline Application</a> ->
      <a>Offline Application Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="../Scripts/OfflineApp.js"></script>
    <h2>
        Offline Application Sample
    </h2>
    <br/>
    <input type="button" onclick="checkSupport();" value="Check Support"/><br/>
    <span id="supportstatus">                  
    </span>
    
    <h3>Offline capability...</h3>       
    <p>Look for console logs too...</p>
        <br/>
        <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
        <pre class="toggleMe code">         
    // 	Cache manifest – versioning & date
    //	Cache – resources to cache with html page  [chrome appcache clearly shows in: chrome://appcache-internals/]
    //	Network – files that will not be cached and will always be online
    //	Fallback – display for all uncached pages/resources [precedence below Network]

    // all relative URLs listed in a manifest are resolved relative to the manifest file
    // IIS - configure it to serve .appcache files with the MIME type text/cache-manifest
        </pre>

</asp:Content>

