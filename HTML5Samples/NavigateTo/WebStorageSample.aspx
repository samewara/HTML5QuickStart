<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebStorageSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.WebStorageSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="WebStorage.aspx" rel="up">Web Storage</a> ->
      <a>Web Storage Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="../Scripts/WebStorage.js"></script>
    <h2>
        Web Storage Sample
    </h2>
    <br/>
    <input type="button" onclick="checkSupport();" value="Check Support"/><br/>
    <span id="supportstatus">                  
    </span>
    
    <h3>Sample 1: Use storage area</h3><a class="toggleNextElement">[Show / Hide]</a>        
    <fieldset class="toggleMeNoMargin">                
        <h4>Usage</h4> 
        <br/>
        <table>
            <tr>
                <td></td>
                <td class="alignCenter">
                    <b>Local</b>                    
                </td>
                <td></td>
                <td class="alignCenter">
                    <b>Session</b>
                </td>
            </tr>
            <tr>
                <td><b>Set: </b></td>
                <td>                    
                    <input type="button" onclick="SaveToLocalStorage();" value="Go"/>
                </td>
                <td></td>
                <td class="alignCenter">
                    <input type="button" onclick="SaveToSessionStorage();" value="Go"/>                    
                </td>
            </tr>
            <tr>
                <td><b>Get: </b></td>
                <td>                    
                    <input type="button" onclick="GetFromLocalStorage();" value="Go"/>
                </td>
                <td></td>
                <td class="alignCenter">
                    <input type="button" onclick="GetFromSessionStorage();" value="Go"/>                    
                </td>
            </tr>
            <tr>
                <td><b>Clear: </b></td>
                <td>                    
                    <input type="button" onclick="RemoveFromLocalStorage();" value="Go"/>
                </td>
                <td></td>
                <td class="alignCenter">
                    <input type="button" onclick="RemoveFromSessionStorage();" value="Go"/>                    
                </td>
            </tr>        
        </table>
        <br/>
        <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
        <pre class="toggleMe code">         
    function SaveToSessionStorage() {
        window.sessionStorage.mySessionKeyX = 'Saved Directly in Session';
        window.sessionStorage.setItem("mySessionKeyY" ,"Saved Using Set Item");
    }

    function SaveToLocalStorage() {
        window.localStorage.myLocalKeyA = 'Saved Directly in Local';
        window.localStorage.setItem("myLocalKeyB", "Saved Using Set Item");
    }
    
    function GetFromSessionStorage() {
        alert("Value X: " + window.sessionStorage.getItem("mySessionKeyX"));
    }

    function GetFromLocalStorage() {
        alert("Value B: " + window.localStorage.getItem("myLocalKeyB"));
    }

    function RemoveFromSessionStorage() {
        window.sessionStorage.removeItem("mySessionKeyX");
    }

    function RemoveFromLocalStorage() {
        window.localStorage.removeItem("myLocalKeyB");
    }
        </pre>
    </fieldset>

    <h3>Sample 2: Tracking changes</h3><a class="toggleNextElement">[Show / Hide]</a>        
    <fieldset class="toggleMeNoMargin">                
        <h4>Track</h4> 
        <br/>
        <table>
            <tr>
                <td><b>Local Storage:</b></td>
                <td id="currentLValue">?</td>
                <td><input type="button" value="Up" onclick="updateLCounter();"/></td>
            </tr>
            <tr>
                <td><b>Session Storage:</b></td>
                <td id="currentSValue">?</td>
                <td><input type="button" value="Up" onclick="updateSCounter();"/></td>
            </tr>
            <tr>
                <td><b>Clear:</b></td>
                <td id="retVal">?</td>
                <td>
                    <input type="button" value="All" onclick="clearAll();"/>
                </td>
            </tr>           
        </table>
        <br/>
        <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
        <pre class="toggleMe code">         
    function updateLCounter() {
        if (localStorage.hits) {
            localStorage.hits = Number(localStorage.hits) + 1;
        } else {
            localStorage.hits = 1;
        }
        document.getElementById('currentLValue').innerHTML = localStorage.hits;
        document.getElementById('retVal').innerHTML = "";
    }

    function updateSCounter() {
        if (sessionStorage.hits) {
            sessionStorage.hits = Number(sessionStorage.hits) + 1;
        } else {
            sessionStorage.hits = 1;
        }
        document.getElementById('currentSValue').innerHTML = sessionStorage.hits;
        document.getElementById('retVal').innerHTML = "";
    }

    function clearAll() {
        localStorage.clear();
        sessionStorage.clear();
        document.getElementById('retVal').innerHTML = "Done!";
        document.getElementById('currentLValue').innerHTML = "0";
        document.getElementById('currentSValue').innerHTML = "0";
    }
        </pre>
    </fieldset>
</asp:Content>
