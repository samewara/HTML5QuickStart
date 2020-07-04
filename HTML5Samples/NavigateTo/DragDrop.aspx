<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DragDrop.aspx.cs" Inherits="HTML5Samples.NavigateTo.DragDrop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Drag & Drop</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Drag & Drop
    </h2>
    <p>
        <ul>
            <li>An object can be dragged to a different location</li>
            <li>Attribute, Method & Events <a class="toggleNextElement">[...]</a>
                <ul class="toggleMeNoMargin">                    
                    <li><code>draggable</code></li>
                    <li><code>ondragstart</code></li>
                    <li><code>setData</code></li>
                    <li><code>getData</code></li>
                    <li><code>ondragover</code></li>
                    <li><code>ondrop</code></li>
                </ul>
            </li>        
            <li>Browser Support
                <a class="toggleNextElement">[...]</a>
                <p class="toggleMe">                        
                    <img class="fitToPage" alt="" src="../Images/DragDropBrowserSupport.png"/>
                    <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
                </p>    
            </li>  
            <li><a href="DragDropSample.aspx">Sample Demonstration</a></li>
        </ul>   
    </p>
</asp:Content>
