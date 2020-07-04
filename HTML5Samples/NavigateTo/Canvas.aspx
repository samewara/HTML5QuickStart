<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Canvas.aspx.cs" Inherits="HTML5Samples.NavigateTo.Canvas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Canvas</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>
    Canvas - Death of Jpeg
</h2>
<p>
    <ul>
        <li>Draw graphics on a webpage at runtime</li>
        <li>Drawing done in JavaScript</li>
        <li>Usage
            <ul>
                <li>define <code>canvas</code> element</li>
                <li>get 2-D context</li>
                <li>draw</li>
            </ul>
        </li>
        <li>Drawing Shapes, Texts, Images using Paths</li>
        <li>Transforms <a class="toggleNextElement">[...]</a>
            <ul class="toggleMeNoMargin">
                <li><code>save()</code></li>
                <li><code>restore()</code></li>
                <li><code>translate()</code></li>
                <li><code>rotate()</code></li>
                <li><code>scale()</code></li>
            </ul>
        </li>      
        <li>SVG - another alernative</li>
        <li>Browser Support
            <a class="toggleNextElement">[...]</a>
            <p class="toggleMe">                        
                <img class="fitToPage" alt="" src="../Images/CanvasBrowserSupport.png"/>
                <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
            </p>    
        </li>  
        <li><a href="CanvasSample.aspx">Sample Demonstration</a></li>              
    </ul>
</p>
</asp:Content>
