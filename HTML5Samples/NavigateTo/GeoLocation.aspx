<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeoLocation.aspx.cs" Inherits="HTML5Samples.NavigateTo.GeoLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up">Table of Contents</a> ->
      <a>GeoLocation</a>      
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>
    GeoLocation
</h2>
<p>
    <ul>
        <li>User permission necessary</li>
        <li><code>navigator.geolocation</code>
            <ul>
                <li><code>getCurrentPosition</code> : get's location once</li>
                <li><code>watchPosition</code> : regularly keeps polling</li>
                <li><code>clearWatch</code> : stop's watching position</li>
            </ul>
        </li>
        <li>Parameters <a class="toggleNextElement">[...]</a>
            <ul class="toggleMeNoMargin">                
                <li><code>position</code>  
                    <ul>
                        <li><code>coords</code> (Coordinates) : contains information on user location
                            <ul>
                                <li><code>latitude</code></li>
                                <li><code>longitude</code></li>
                                <li><code>altitude</code></li>
                                <li><code>accuracy</code></li>
                                <li><code>altitudeAccuracy</code></li>
                                <li><code>speed</code></li>
                                <li><code>heading</code></li>
                            </ul>
                        </li>
                        <li><code>timestamp</code> (DOMTimeStamp) : time when user location was obtained
                        </li>
                    </ul>
                </li>
                <li><code>PositionError</code> : error callback object argument
                    <ul>
                        <li><code>UNKNOWN_ERROR = 0</code></li>
                        <li><code>PERMISSION_DENIED = 1</code></li>
                        <li><code>POSITION_UNAVAILABLE = 2</code></li>
                        <li><code>TIMEOUT = 3</code></li>
                        <li><code>code</code></li>
                        <li><code>message</code></li>                        
                    </ul>
                </li>
                <li><code>PositionOptions</code> : specifies options when getting user location
                    <ul>
                        <li><code>enableHighAccuracy</code></li>
                        <li><code>timeout</code></li>
                        <li><code>maximumAge</code></li>
                    </ul>
                </li>
            </ul>
        </li>        
        <li>Browser Support
            <a class="toggleNextElement">[...]</a>
            <p class="toggleMe">                        
                <img class="fitToPage" alt="" src="../Images/GeoLocationBrowserSupport.png"/>
                <img class="fitToPage" alt="" src="../Images/SupportLegend.png"/>
            </p>    
        </li>  
        <li><a href="GeoLocationSample.aspx">Sample Demonstration</a></li>                      
    </ul>
</p>
</asp:Content>
