<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="HTML5Samples._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <nav class="breadcrumb">
        <a></a> ->
        <a href="NavigateTo/TableOfContents.aspx" rel="up">Table of Contents</a>
    </nav>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">    
    <h2 align="center">
        Welcome to HTML5 Learning Centre!
    </h2>     
    <article>
        <p align="center">
            <img class="HTML5LogoBig" alt="HTML5" src="Images/HTML5.png"/> 
        </p>
        <h1 align="center">                        
            <a href="NavigateTo/TableOfContents.aspx">START</a>
        </h1>
    </article>
</asp:Content>
