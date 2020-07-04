<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeviceSupport.aspx.cs" Inherits="HTML5Samples.NavigateTo.DeviceSupport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Device Support</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>
    Device Support
</h2>
<h4>Key to Mobile page optimization</h4>
<p>
    <ul>
        <li>Viewport Meta Tag - Controls browsers page display <a class="toggleNextElement">[...]</a>
            <ul class="toggleMeNoMargin">            
                <li><code>width</code></li>
                <li><code>height</code></li>
                <li><code>initial-scale</code></li>
                <li><code>minimum-scale</code></li>
                <li><code>maximum-scale</code></li>
                <li><code>user-scalable</code></li>
                <li>Sample :
                    <pre class="code">                                
    &lt;meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes"/&gt;         
                    </pre>
                </li>
            </ul>            
        </li>        
        <li>CSS Media Queries - Media based style <a class="toggleNextElement">[...]</a>
            <ul class="toggleMeNoMargin">     
                <li>External stylesheet :
                    <pre class="code">  
    &lt;link rel="stylesheet"  media="handheld, only screen and (max-device-width: 320px)" href="phone.css"&gt;
    &lt;link rel="stylesheet"  media="only screen and (min-width: 641px) and (max-width: 800px)" href="ipad.css"&gt;
                    </pre>
                </li>
                <li>Within the &lt;style&gt; element (or in css file) as a media rule:
                    <pre class="code">      
    &lt;style&gt;
      @media only screen and (max-width: 480px){
        /* rules defined inside here are only applied to browsers that support CSS media queries and the browser window is 480px or smaller */
      }
    &lt;/style&gt;
                    </pre>
                </li>
                <li>Imported stylesheet within the <code>&lt;style&gt;</code> element:
                    <pre class="code">      
    @import "smallscreen.css" only screen and (max-width: 480px);
                    </pre>
                </li>
            </ul>
        </li>        
    </ul>
</p>
</asp:Content>
