<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Structure.aspx.cs" Inherits="HTML5Samples.NavigateTo.Structure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Structure</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Structure - Page Segmentation
    </h2>
    <p>
        <ul>
            <li><code>&lt;!DOCTYPE&gt;</code>  <a class="toggleNextElement">[...]</a>
                <ul class="toggleMeNoMargin">
                    <li>An instruction to the web browser about what version of HTML the page is written in.</li>
                    <li>In HTML 4.01, tag refers to a DTD (Document Type Definition), as HTML 4.01 was based on SGML (Standard Generalized Markup Language).</li>
                    <li>HTML5 is not based on SGML, and therefore does not require a reference to a DTD.</li>
                </ul>                
            </li>  
            <li>Structure comparison with HTML4 design
                <a class="toggleNextElement">[...]</a>
                <p class="toggleMe" align="center">                
                    <img class="keepOriginalSize" src="../Images/PageStructureOld.png" alt=""/>&nbsp;&nbsp;<img class="keepOriginalSize" src="../Images/PageStructureNew.png" alt=""/>
                </p>                
            </li>
            <li>New elements adds semantics to the page <a class="toggleNextElement">[...]</a>
                <ul class="toggleMeNoMargin">
                    <li><code>Header</code></li>
                    <li><code>Nav</code></li>
                    <li><code>Footer</code></li>
                    <li><code>Section</code></li>
                    <li><code>Article</code></li>                                                            
                </ul>                
            </li>
            <li>Depricated Elements & Attributes
                <a class="toggleNextElement">[...]</a>
                <p class="toggleMe">                        
                    <img class="keepOriginalSize" alt="" src="../Images/DeprecatedTags.jpg"/>                    
                </p>
            </li>
            <li>Browser Support
                <a class="toggleNextElement">[...]</a>
                <p class="toggleMe">                        
                    <img class="fitToPage" alt="" src="../Images/SemanticElementsBrowserSupport.png"/>
                    <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
                </p>    
            </li>
            <li><a href="StructureSample.aspx">Sample Demonstration</a></li>     
        </ul>
    </p>

</asp:Content>