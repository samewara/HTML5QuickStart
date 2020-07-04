<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebStorage.aspx.cs" Inherits="HTML5Samples.NavigateTo.WebStorage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Web Storage</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>
    Web Storage
</h2>
<p>
    <ul>
        <li>Cookies - included with every HTTP request, slow, unencrypted & limited to about 4KB</li>
        <li>New Storage - good storage space(5MB) on the client, persists and transmitted to the server only when asked <a class="toggleNextElement">[...]</a>  
            <ul class="toggleMeNoMargin">
                <li>localStorage: stores data with no expiration date
                    <ul>
                        <li>Key/Value pair storage system</li>
                        <li>Shared between window/tab for a same domain</li>
                        <li>Data available until explicitly deleted by the user</li>
                    </ul>
                </li>
                <li>sessionStorage: stores data for one session
                    <ul>
                        <li>Key/Value pair storage system</li>
                        <li>Specific to particular window/tab</li>
                    </ul>
                </li>
                <li>
                    Storage Interface : API to create, read, update or delete data on the client side                     
    <pre class="code">                                
    interface Storage {
        // Get the value of an item identified by its key
        getter any getItem(DOMString key); 

        // used to create or modify an item
        setter creator void setItem(DOMString key, any data); 

        // Delete an item identified by its key
        deleter void removeItem(DOMString key); 

        // Delete all items
        void clear(); 

        // Number of items.
        readonly attribute unsigned long length; 

        // Get the key of an item with a zero based index
        getter DOMString key(unsigned long index); 
    };         
    </pre>
                </li>
            </ul>
        </li>
        <li>Browser Support
            <a class="toggleNextElement">[...]</a>
            <p class="toggleMe">                        
                <img class="fitToPage" alt="" src="../Images/WebStorageBrowserSupport.png"/>
                <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
            </p>    
        </li>  
        <li><a href="WebStorageSample.aspx">Sample Demonstration</a></li>             
    </ul>
</p>
</asp:Content>
