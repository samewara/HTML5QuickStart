<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Introduction.aspx.cs" Inherits="HTML5Samples.NavigateTo.Introduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Introduction</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        The New HTML Standard
    </h2>
    <p>
        <ul>
            <li>Previous version was HTML 4.01 (in 1999)</li>            
            <li>WHATWG joined with the W3C in 2006
                <ul>
                    <li>WHATWG (Web Hypertext Application Technology Working Group) was working with web forms & applications</li>
                    <li>W3C (World Wide Web Consortium) was working with XHTML 2.0</li>   
                </ul>
            </li>
            <li>Thoughts - <a href="http://www.w3.org/TR/html-design-principles/" target="_blank">HTML Design Principles [^]</a> 
            <a class="toggleNextElement">[...]</a>                
                <ul class="toggleMeNoMargin">                    
                    <li>Reduce the need for external plugins</li>
                    <li>Better error handling</li>
                    <li>More markup to replace scripting</li>
                    <li>device independent</li>
                    <li>Back Compatibility to handle deprecated tags</li>
                    <li>Fallback mechanism to degrade gracefully</li>
                    <li>Simple changes for an easy adoption</li>
                </ul>                
            </li>
            <li>Few Dates  <a class="toggleNextElement">[...]</a>
                <ul class="toggleMeNoMargin">
                    <li>Current HTML5 Working Draft is from April 11th, 2011</li>
                    <li>Candidate Recommendation is planned for 2012 </li>
                    <li>Proposed Recommendation is planned for 2022</li>
                    <li>HTML5 Specification finalized - Dec 17, 2012</li>
                </ul>
            </li>                    
        </ul>
    </p>
</asp:Content>
