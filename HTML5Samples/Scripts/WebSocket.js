function checkSupport() {
    if (typeof (WebSocket) !== "undefined") {
        document.getElementById("supportstatus").innerHTML = "HTML5 Web Socket is supported in your browser.";
    }
    else {
        document.getElementById("supportstatus").innerHTML = "HTML5 Web Socket is <strong>not</strong> supported in your browser.";
    }
}

/*
Learned from web:
The WebSocket features in .NET 4.5 and IIS 8 (including Express) require Windows 8 
because they use a native Windows component (websocket.dll) that is new to Windows 8.

Once you are running on Windows 8, you can turn on the IIS WebSocket module under 
"Turn Windows features on or off" -> Internet Information Services ->World Wide Web Services 
-> Application Development Features -> WebSocket Protocol 
*/
function WebSocketTest() {
    if ("WebSocket" in window) {
        // Open a Web Socket
        var ws = new WebSocket("ws://banl07r9ameaf/HTML5Demo/");
        ws.onopen = function () {
            // Send data
            ws.send("Message sent to server");
            alert("Message was sent to server.");
        };
        ws.onmessage = function (evt) {
            //Recieve data
            var receivedmsg = evt.data;
            alert("Message is received from server"+ receivedmsg);
        };
        ws.onclose = function () {
            // Close a Websocket
            alert("Connection is closed.");
        };
        ws.onerror = function (evt) {
            // Log Error
            alert("ERROR!!! " + evt.message);
        };
    }
}
