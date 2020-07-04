<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DragDropSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.DragDropSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="DragDrop.aspx" rel="up">Drag & Drop</a> ->
      <a>Drag & Drop Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="../Scripts/DragDrop.js"></script>
    <h2>
        Drag & Drop Sample
    </h2>
    <br/>                    
    <h5>Drag image into square(s)</h5> 
    <br/>
        <table>
            <tr>
                <td>
                    <div id="bin1" ondrop="dropIt(event)" ondragover="allowDropDragOver(event)" class="dragDropBin">
                        <img id="dragImage" src="../Images/HTML5LogoSmall.png" draggable="true" ondragstart="dragStart(event)" class="dragImage">
                    </div>
                </td>
                <td><div id="bin2" ondrop="dropIt(event)" ondragover="allowDropDragOver(event)" class="dragDropBin"></div></td>
            </tr>
            <tr>
                <td><div id="bin3" ondrop="dropIt(event)" ondragover="allowDropDragOver(event)" class="dragDropBin"></div></td>
                <td><div id="bin4" ondrop="dropIt(event)" ondragover="allowDropDragOver(event)" class="dragDropBin"></div></td>
            </tr>
        </table>
    <br/>
    <a class="toggleNextElement">[Show / Hide Code]</a>
    <pre class="toggleMe code">         
    function allowDropDragOver(e) {
        e.preventDefault();
    }

    function dragStart(e) {
        e.dataTransfer.setData("dragItemID", e.target.id);
    }

    function dropIt(e) {
        e.preventDefault();
        var dataId = e.dataTransfer.getData("dragItemID");
        e.target.appendChild( document.getElementById(dataId));
    }    
    </pre>
    <%--TODO: Sample 2 for dragdrop desktop item on defined div--%>
</asp:Content>
