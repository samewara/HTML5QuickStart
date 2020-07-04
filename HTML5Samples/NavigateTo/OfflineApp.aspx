<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OfflineApp.aspx.cs" Inherits="HTML5Samples.NavigateTo.OfflineApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Offline Application</a>    
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>
    Offline App
</h2>
<p>
    <ul>
        <li>Cache Manifest File <a class="toggleNextElement">[...]</a>
            <ul class="toggleMeNoMargin">
                <li><code>CACHE</code></li>
                <li><code>NETWORK</code></li>
                <li><code>FALLBACK</code></li>
                <li>Sample<pre class="code">                                
    CACHE MANIFEST 
    # Version 1.0.0 

    CACHE: 
    index.html
    inprogress.html
    Site.css
    html5_logo.png

    NETWORK: 
    *

    FALLBACK: 
    / fallback.html         
                    </pre>
                </li>
            </ul>
        </li>
        <li><code>applicationCache</code> status <a class="toggleNextElement">[...]</a>
            <ul class="toggleMeNoMargin">
                <li><code>0 UNCACHED</code> : cache is empty</li>
                <li><code>1 IDLE</code> : cache is latest</li>
                <li><code>2 CHECKING</code> : checking for a new updated version of the cache</li>
                <li><code>3 DOWNLOADING</code> : downloading the new cache</li>
                <li><code>4 UPDATEREADY</code> : ready to be used</li>
                <li><code>5 OBSOLETE</code> : cache is marked obsolete</li>
            </ul>
        </li>
        <li>Browser Support
            <a class="toggleNextElement">[...]</a>
            <p class="toggleMe">                        
                <img class="fitToPage" alt="" src="../Images/OfflineAppBrowserSupport.png"/>
                <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
            </p>    
        </li>  
        <li><a href="OfflineAppSample.aspx">Sample Demonstration</a></li>                         
    </ul>
</p>
</asp:Content>
