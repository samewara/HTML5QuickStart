<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AudioVideoSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.AudioVideoSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="AudioVideo.aspx" rel="up">Audio & Video</a> ->
      <a>Audio & Video Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="../Scripts/AudioVideo.js"></script>
    <h2>
        Audio & Video Sample
    </h2>
    <p>        
        <label>Audio with multiple source:</label>
        <br/>

        <audio id="sampleAudio" controls>
            <source src="../Files/AudioSample.mp3">
            <source src="../Files/AudioSample.wav">
            <source src="../Files/AudioSample.ogg">  
            Your browser does not support the audio element.          
        </audio>
        <input type="button" value="Mute" onclick="CMute(sampleAudio);"/>
        <input type="button" value="Unmute" onclick="CUnMute(sampleAudio);"/>
        <input type="button" value="Pause" onclick="CPause(sampleAudio);"/>
        <input type="button" value="Play" onclick="CPlay(sampleAudio);"/>
        
        <br />
        <div class="seperator"></div>
        <label>Video with single source:</label>
        <br/>             
        
        <video id="sampleVideo" controls src="../Files/VideoSample.mp4">
             <track src="../Files/sampleSubtitles.vtt" srclang="en" kind="subtitles" label="English subtitles">
            Your browser does not support the audio element.
        </video>
        <input type="button" value="Mute" onclick="CMute(sampleVideo);"/>
        <input type="button" value="Unmute" onclick="CUnMute(sampleVideo);"/>
        <input type="button" value="Pause" onclick="CPause(sampleVideo);"/>
        <input type="button" value="Play" onclick="CPlay(sampleVideo);"/>
        <input type="button" value="Fullscreen" onclick="CFullScreen(sampleVideo);"/>
        <br/>
    </p>
    <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
    <pre class="toggleMe code"> 
        // Add MimeType in your webserver (IIS) for linkup
        &lt;audio id="sampleAudio" autoplay controls&gt;
            &lt;source src=&quot;../Files/AudioSample.mp3&quot;&gt;
            &lt;source src=&quot;../Files/AudioSample.wav&quot;&gt;
            &lt;source src=&quot;../Files/AudioSample.ogg&quot;&gt;
        &lt;/audio&gt;         

        &lt;video id="sampleVideo" controls src=&quot;../Files/VideoSample.mp4&quot; onmouseover="this.play()" onmouseout="this.pause()"&gt;
            &lt;track src="../Files/sampleSubtitles.vtt" srclang="en" kind="subtitles" label="English subtitles"&gt;
            Your browser does not support the audio element.
        &lt;/video&gt;

        &lt;input type="button" value="Pause" onclick="CPause(sampleVideo);"/&gt;
        function CPause(controlId) {
            if (!($(controlId).get(0).paused))
                $(controlId).get(0).pause();
        }
    </pre>
</asp:Content>
