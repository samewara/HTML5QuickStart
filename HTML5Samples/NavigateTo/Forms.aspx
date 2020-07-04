<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="HTML5Samples.NavigateTo.Forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Forms</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>
    Forms - More Meaningful Tags
</h2>
<p>
    <ul>
        <li>New Input Types & Attributes <a class="toggleNextElement">[...]</a>
            <form class="toggleMeNoMargin" action="#" autocomplete="off" oninput="score.value = rscore.valueAsNumber">      
                <ul>
                    <li>email : <input type="email" multiple required autofocus placeholder="sample@sample.com" /><input type="submit" value="go"/></li>                    
                    <li>url : <input type="url" /><input type="submit" value="go"/></li>
                    <li>number :  <input type="number" /></li>                    
                    <li>date time : <input type="date"/><input type="time"/></li>
                    <li>search : <input type="search"/><input type="submit" value="go"/></li>
                    <li>range : <input type="range" max="100" min="80" step="2" title="Your AES score" name="rscore"/><output class="alignTop" name="score">90</output></li>
                    <li>color : <input type="color"/></li>                    
                </ul>
            </form>  
        </li>        
        <li>New Elements <a class="toggleNextElement">[...]</a>
            <form class="toggleMeNoMargin" action="#" autocomplete="off" novalidate>
                <ul>
                    <li>datalist : <input type="text" id="somenames" list="fullList" />
                                        <datalist id="fullList">
                                            <option value="Sandeep">
                                            <option value="Deepak">
                                            <option value="Sandy">
                                            <option value="Deepu">                                            
                                        </datalist>
                    </li>
                    <li>keygen</li> 
                    <li>output</li>
                </ul>
            </form>
        </li> 
        <li>New Attributes <a class="toggleNextElement">[...]</a>
            <form class="toggleMeNoMargin" action="#" autocomplete="off">      
                <ul>
                    <li>spellcheck : <input type="text" spellcheck="false" placeholder="Without Spellcheck"> <input type="text" spellcheck="true" placeholder="With Spellcheck"></li>
                    <li>autofocus</li> 
                    <li>list</li>
                    <li>required</li>                
                    <li>placeholder</li>                
                    <li>min and max</li>
                    <li>multiple</li>                    
                </ul>
            </form>
        </li>
        <li>New Events <a class="toggleNextElement">[...]</a>
            <form class="toggleMeNoMargin">
                <ul>                
                    <li>orientationchange</li>
                    <li>resize</li>
                    <li>online</li>
                    <li>offline</li>
                </ul>
            </form>
        </li>       
        <li>New Selector <a class="toggleNextElement">[...]</a>
            <form class="toggleMeNoMargin" action="#" autocomplete="off">
                <ul>
                    <li>document.querySelector() - Return the first element in the page which matches the specified selector rules
                        <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
<pre class="toggleMe code">  
    // Returns the first element in the document with the class "myclass"                              
    var el = document.querySelector(".myclass");                         
</pre>
                    </li>
                    <li>document.querySelectorAll() - Returns all elements which match the specified rules
                        <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
<pre class="toggleMe code">                                
    // Returns the list of all the element in the document with the class "myclass"
    var els = document.querySelectorAll(".myclass");                     
</pre>
                    </li>
                </ul>
            </form>
        </li>
    </ul>
</p>
</asp:Content>
