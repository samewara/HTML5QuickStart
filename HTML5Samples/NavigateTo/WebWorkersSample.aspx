<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebWorkersSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.WebWorkersSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="WebWorkers.aspx" rel="up">Web Workers</a> ->
      <a>Web Workers Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Web Workers Sample
    </h2>
    <br/>
    <input type="button" onclick="checkSupport();" value="Check Support"/>    
    <button onclick="document.location = document.location;">Reload</button>
    <br/>
    <span id="supportstatus">                  
    </span>
    
    <h5>Workers in action:</h5>
    <label for="workerCount">Number of Workers: </label>
    <select id="workerCount">
        <option selected>1</option>
        <option>2</option>
        <option>4</option>
        <option>8</option>
        <option>16</option>
    </select>

    <button id="startWorker" onclick="startstopWorker();">Start</button>
    <button id="stopWorker" onclick="startstopWorker();" disabled="">Stop</button>
    <button id="terminateWorker" onclick="terminateWorker();" disabled="">Terminate</button>
    <br/>

    <div id="logOutput" class="workerDivFixed"></div>
    <br/>
    <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
    <pre class="toggleMeNoMargin code">     
    // create a new Worker object 
    var worker = new Worker('WebWorkerSample.js');

    // start it by calling the postMessage() method
    worker.postMessage(); 

    // Communication between a worker and its parent page is done using an event model via postMessage() 
    // Main script:
    worker.addEventListener('message', function(e) {
        console.log('Worker said: ', e.data);
    }, false);

    //Internal Script (the worker):
    self.addEventListener('message', function(e) {
        self.postMessage(e.data);
    }, false);
   
    // The page and worker do not share the same instance, a duplicate is created on each pass. 
    // Most browsers implement this feature by automatically JSON encoding/decoding the value on either end.
    </pre>
<script type="text/javascript" src="../Scripts/../Scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="../Scripts/../Scripts/jquery-1.4.1-vsdoc.js"></script>
<script type="text/javascript" src="../Scripts/WebWorker.js"></script>
</asp:Content>
