<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StructureSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.StructureSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="Structure.aspx" rel="up">Structure</a> ->
      <a>Structure Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <img class="fullscreen" title="Reader Mode" alt="" src="../Images/ShowFullscreen.PNG" onclick="fullScreen();"/>
    <hgroup>
        <h1>Structure Sample - Penning Everything Interesting…</h1>
    </hgroup>
    <article id="MyBlog">
        <header>        
            <h2>My first blog entry!</h2>
        </header>
        <p>I was thinking what to write about. I read few articles at times that I feel like sharing across, probably could have been a good start but then I wanted to have something of my own to start with.</p>
        <p>So, I thought, why not share one of the article that I wrote recently?</p> 
        <p>Please do have a look at the article for details on what was the feature and challenges around it: <a href="http://www.codeproject.com/Articles/487972/How-to-extend-a-WPF-Textbox-to-Custom-Picker" target="_blank">How to extend a WPF Textbox to Custom Picker</a></p>
        <link href="#MyBlog" >[…]</link>        
        <br/>
        <footer>
        <section>
            <h4>One Thought on 'My first blog entry…'</h4>            
            <article id="comment_1">
                <link href="#comment_1" />   
                <h5>Comment by: Guruji</h5>   
                <p>Very well written Sandeep. Love the enthu and energy you have for sharing your knowledge and making the .NET developers life easy!</p>
            </article>
            <article id="comment_2">
                <link href="#comment_2" /> 
                <h5>Comment by: SuperStar</h5>  
                <p>Looks like a good start...Good going!</p>
            </article>
        </section>
        </footer>
    </article>
    <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
    <pre class="toggleMe code">                            
    &lt;img class="fullscreen" title="Reader Mode" alt="" src="../Images/ShowFullscreen.PNG" onclick="fullScreen();"/&gt;                                
    &lt;hgroup&gt;
        &lt;h1&gt;Penning Everything Interesting…&lt;/h1&gt;
    &lt;/hgroup&gt;
    &lt;article id="MyBlog"&gt;
        &lt;header&gt;        
            &lt;h2&gt;My first blog entry!&lt;/h2&gt;
        &lt;/header&gt;
        &lt;p&gt;I was thinking what to write about. I read few articles at times that I feel like sharing across, probably ...&lt;/p&gt;               
        &lt;br/&gt;
        &lt;footer&gt;
        &lt;section&gt;
            &lt;h4&gt;One Thought on 'My first blog entry…'&lt;/h4&gt;            
            &lt;article id="comment_1"&gt;
                &lt;link href="#comment_1" /&gt;   
                &lt;h5&gt;Comment by: Guruji&lt;/h5&gt;   
                &lt;p&gt;Very well written Sandeep. Love the enthu and energy you have for sharing your knowledge and making the .NET developers life easy!&lt;/p&gt;
            &lt;/article&gt;
            &lt;article id="comment_2"&gt;
                &lt;link href="#comment_2" /&gt; 
                &lt;h5&gt;Comment by: SuperStar&lt;/h5&gt;  
                &lt;p&gt;Looks like a good start...Good going!&lt;/p&gt;
            &lt;/article&gt;
        &lt;/section&gt;
        &lt;/footer&gt;
    &lt;/article&gt;
    </pre>
    <br/>
    <p align="left">
    <a href="Structure.aspx">Back</a>
    </p>
</asp:Content>