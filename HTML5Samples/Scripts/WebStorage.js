function checkSupport() {
    if (typeof (Storage) !== "undefined") {
        document.getElementById("supportstatus").innerHTML = "HTML5 Web Storage is supported in your browser.";
    }
    else {
        document.getElementById("supportstatus").innerHTML = "HTML5 Web Storage is <strong>not</strong> supported in your browser.";
    }
}

///////////////////////////////////////////


function SaveToSessionStorage() {
    window.sessionStorage.mySessionKeyX = 'Saved Directly in Session';
    window.sessionStorage.setItem("mySessionKeyY" ,"Saved Using Set Item");
    //alert(window.sessionStorage.mySessionKey);
}

function SaveToLocalStorage() {
    window.localStorage.myLocalKeyA = 'Saved Directly in Local';
    window.localStorage.setItem("myLocalKeyB", "Saved Using Set Item");
    //alert(window.localStorage.myLocalKey);
}

function GetFromSessionStorage() {
    alert("Value X: " + window.sessionStorage.getItem("mySessionKeyX"));
    //alert("Value Y: " + window.sessionStorage.getItem("mySessionKeyY"));
}

function GetFromLocalStorage() {
    //alert("Value A: " + window.localStorage.getItem("myLocalKeyA"));
    alert("Value B: " + window.localStorage.getItem("myLocalKeyB"));
}

function RemoveFromSessionStorage() {
    window.sessionStorage.removeItem("mySessionKeyX");
    //window.sessionStorage.removeItem("mySessionKeyY");
}

function RemoveFromLocalStorage() {
    window.localStorage.removeItem("myLocalKeyA");
    //window.localStorage.removeItem("myLocalKeyB");
}

/////////////////////////////////////////////
// Tracking changes to the storage area

if (window.addEventListener) {
    window.addEventListener("storage", handle_storage, true);
} else {
    window.attachEvent("onstorage", handle_storage);
};

function handle_storage(e) {
    alert(e);
    if (!e) { e = window.event; }
    // key that was added, removed, or modified
    alert(e.key);

    // the previous value (now overwritten), or null if a new item was added
    alert(e.oldValue);

    // the new value, or null if an item was removed
    alert(e.newValue);

    // the page which called a method that triggered this change
    if (e.url != null)
        alert(e.url);
    else
        alert(e.uri);
}

function updateLCounter() {
    if (localStorage.hits) {
        localStorage.hits = Number(localStorage.hits) + 1;
    } else {
        localStorage.hits = 1;
    }

    alert("length:" + localStorage.length);
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
// “QUOTA_EXCEEDED_ERR” is the exception that will get thrown if you exceed your storage quota of 5 megabytes