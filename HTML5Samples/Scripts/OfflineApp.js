function checkSupport() {
    if (typeof (window.applicationCache) !== "undefined") {
        document.getElementById("supportstatus").innerHTML = "HTML5 Offline Application is supported in your browser.";
    }
    else {
        document.getElementById("supportstatus").innerHTML = "HTML5 Offline Application is <strong>not</strong> supported in your browser.";
    }
}

///////////////////////////////////////////

var cacheStatusMessages = [];
cacheStatusMessages[0] = 'uncached';
cacheStatusMessages[1] = 'idle';
cacheStatusMessages[2] = 'checking';
cacheStatusMessages[3] = 'downloading';
cacheStatusMessages[4] = 'updateready';
cacheStatusMessages[5] = 'obsolete';


var appCache = window.applicationCache;
appCache.addEventListener('cached', logEvent, false);
appCache.addEventListener('checking', logEvent, false);
appCache.addEventListener('noupdate', logEvent, false);

appCache.addEventListener('downloading', logEvent, false);
appCache.addEventListener('progress', logEvent, false);
appCache.addEventListener('updateready', function() {
    window.applicationCache.swapCache();
    console.log('Update was ready. Swap Cache done.');
}, false);

appCache.addEventListener('obsolete', logEvent, false);
appCache.addEventListener('error', logEvent, false);

function logEvent(e) {
    var online, status, type, message;
    online = (navigator.onLine) ? 'yes' : 'no';
    status = cacheStatusMessages[appCache.status];
    type = e.type;
    
    message = 'online: ' + online;
    message += ', event: ' + type;
    message += ', status: ' + status;

    console.log(message);

    if (type == 'obsolete')
        alert('Manifest got deleted. Offline will not work anymore.');
    if (type == 'error')
        alert('Error:' + e.message);
}