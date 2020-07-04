<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeoLocationSample.aspx.cs" Inherits="HTML5Samples.NavigateTo.GeoLocationSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <nav class="breadcrumb">
      <a></a> ->
      <a href="TableOfContents.aspx" rel="up up">Table of Contents</a> ->
      <a href="GeoLocation.aspx" rel="up">GeoLocation</a> ->
      <a>GeoLocation Sample</a>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="../Scripts/GeoLocation.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <h2>
        GeoLocation Sample
    </h2>
    <br/>
    <input type="button" onclick="checkSupport();" value="Check Support"/><br/>
    <span id="supportstatus">                  
    </span>
    
    <h3>Sample 1: Get Location</h3><a class="toggleNextElement">[Show / Hide]</a>        
    <fieldset class="toggleMeNoMargin">                
        <h4>Current Position: <input type="button" onclick="getLocation();" value="Go"/></h4> 
        <br/>
        <table>
            <tr>
                <td colspan="2">
                    <span id="errorstatus"></span>
                </td>
            </tr>
            <tr>
                <td><b>Latitude:</b></td>
                <td id="latitude">?</td>
            </tr>
            <tr>
                <td><b>Longitude:</b></td>
                <td id="longitude">?</td>
            </tr>
            <tr>
                <td><b>TimeStamp:</b></td>
                <td id="timestamp">?</td>
            </tr>           
        </table>
        <br/>
        <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
        <pre class="toggleMe code">
    // navigator.geolocation.getCurrentPosition(success_callback, error_callback, {other parameters}); 
    // The watchPosition() function has the same structure as getCurrentPosition()
    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(updateLocation, handleLocationError, {
                timeout: 1000000,
                maximumAge: 1000,
                enableHighAccuracy: false
            });
        }
        else {
            document.getElementById("supportstatus").innerHTML = "HTML5 Geolocation is <strong>not</strong> supported in your browser.";
        }
    }

    function updateLocation(position) {
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;
        var timeTaken = new Date(position.timestamp);
        ...
    }

    function handleLocationError(error) {
        switch(error.code)
        {
            ...
        }
    }
        </pre>
    </fieldset>

    <h3>Sample 2 : Display Map</h3><a class="toggleNextElement">[Show / Hide]</a>        
    <fieldset class="toggleMeNoMargin">                
        <h4>Location in Map: <input type="button" onclick="showMap();" value="Go"/></h4> 
        <br/>
        <div id="mapView" class="mapDimension1"></div>
        <br/>
        <a class="toggleNextElement smallSize">[Show / Hide Code]</a>
        <pre class="toggleMe code">
    // include the Maps API JavaScript using a script tag.
    &lt;script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"&gt;&lt;/script&gt;

    // navigator.geolocation.getCurrentPosition
    function showMap() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showMapLocation, handleLocationError, {
                timeout: 1000000,
                maximumAge: 1000,
                enableHighAccuracy: true
            });
        }
    }

    // create an object literal to hold map properties and create a "map" object & "marker" objects
    function showMapLocation(position) {
        var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
        var myOptions = {
            zoom: 16,
            center: latlng,
            mapTypeControl: false,
            navigationControlOptions: { style: google.maps.NavigationControlStyle.SMALL },
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("mapView"), myOptions);
    
        var marker = new google.maps.Marker({
                position: latlng,
                map: map,
                title: "You are here! (Accuracy: " + position.coords.accuracy + " meter radius)"
            });
    }
        </pre>
    </fieldset>
</asp:Content>
