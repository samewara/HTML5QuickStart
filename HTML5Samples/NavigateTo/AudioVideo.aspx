<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AudioVideo.aspx.cs" Inherits="HTML5Samples.NavigateTo.AudioVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>Audio & Video</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Audio & Video</h2>
<h4>Death of plugins like Flash & Silverlight</h4>

<p>
    <ul>
        <li>Methods & Attributes  <a class="toggleNextElement">[...]</a>            
            <ul class="toggleMeNoMargin">
                <li><code>play()</code>: To play the media</li>
                <li><code>pause()</code>: To pause the media</li>
                <li><code>canPlayType()</code>: To check if your browser can play a certain media resource type</li>
                <li><code>src</code>: Path of the media file. Can also use the <code>&lt;source&gt;</code> element within a <code>&lt;video&gt;</code> or <code>&lt;audio&gt;</code> element to provide multiple sources.</li>
                <li><code>autoplay</code>: To play the media automatically</li>
                <li><code>controls</code>: To display the controls (play/pause/volume/etc) on the media</li>
                <li><code>loop</code>: To play in loop</li>
                <li><code>muted</code>: To mute the volume</li>
                <li><code>playbackRate</code>: To vary the speed of the media</li>
            </ul>
        </li>
        <li>Events  <a class="toggleNextElement">[...]</a>            
            <ul class="toggleMeNoMargin">
                <li><code>play</code>: raised when the media is played</li>
                <li><code>pause</code>: raised when the media is paused</li>
                <li><code>timeupdate</code>: raised when the current playback position has changed</li>
                <li><code>volumechange</code>: raised when the volume of the media has changed</li>
                <li><code>ratechange</code>: raised when the playback rate of the media has changed</li>
                <li><code>ended</code>: raised when the media has finished playing</li>
                <li><code>seeking</code>: raised when the end user is seeking in the media</li>
                <li><code>seeked</code>: raised when the seeking attribute has changed to false</li>
            </ul>
        </li>
        <li>Supported formats
            <ul>
                <li>Audio: MP3, Wav, and Ogg</li>
                <li>Video: MP4, WebM, and Ogg</li>
            </ul>
        </li>
        <li>Browser Support
            <a class="toggleNextElement">[...]</a>
            <p class="toggleMe">                        
                <img class="fitToPage" alt="" src="../Images/AudioVideoBrowserSupport.png"/>
                <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
            </p>    
        </li>  
        <li><a href="AudioVideoSample.aspx">Sample Demonstration</a></li> 
    </ul>
</p>
</asp:Content>
