function checkSupport() {
    if (typeof (Worker) !== "undefined") {
        document.getElementById("supportstatus").innerHTML = "HTML5 Web Workers is supported in your browser.";
    }
    else {
        document.getElementById("supportstatus").innerHTML = "HTML5 Web Workers is <strong>not</strong> supported in your browser.";
    }
}

//////////////////////////////

var worker;
var workers = [];
var isRunning = false;
var outputDiv = document.getElementById('logOutput');

//

function startstopWorker() {
    isRunning = !isRunning;
    toggleButtons();    
    
    if (isRunning) {
        // Started
        outputDiv.innerHTML = "";
        var wCount = $("#workerCount").val();
        if (wCount > 1)
            initializeMultipleWorker(wCount);
        else
            initializeWorker();
    }
    else {
        // Stopped
        worker.postMessage("Stopping...");
    }
    // worker.postMessage('#1');
}

function initializeWorker() {
    worker = new Worker('../Scripts/WebWorkerSample.js');
    worker.addEventListener("message", messageHandler, true);
    worker.addEventListener("error", errorHandler, true);
    worker.postMessage('#1');
}

function initializeMultipleWorker(numberOfTimes) {
    for (var i = 1; i <= numberOfTimes; i++) {
        worker = new Worker('../Scripts/WebWorkerSample.js');
        worker.addEventListener("message", messageHandler, true);
        worker.addEventListener("error", errorHandler, true);
        worker.index = i;
        workers[i] = worker;
        worker.postMessage('#' + i);
    }
    $("#stopWorker").attr("disabled", true);
}

function terminateWorker() {
    if ($("#workerCount").val() > 1)
        terminateMultipleWorkers();
    else {
        isRunning = !isRunning;
        updateOutputWindow("Terminated!");
        worker.terminate();
        toggleButtons();   
    }
}

function toggleButtons() {
    $("#startWorker").attr("disabled", isRunning);
    $("#stopWorker").attr("disabled", !isRunning);
    $("#terminateWorker").attr("disabled", !isRunning);
}

function messageHandler(e) {
    updateOutputWindow(e.data);
}

function errorHandler(e) {
    updateOutputWindow("ERROR!!! " + e.message);
} 

function updateOutputWindow(outMsg) {
    var oldOutput = outputDiv.innerHTML;
    outputDiv.innerHTML = oldOutput + "<br />" + outMsg;
    $("#logOutput").scrollTop($('#logOutput')[0].scrollHeight);
}

function terminateMultipleWorkers() {
    isRunning = !isRunning;
    for (var i = 1; i < workers.length; i++) {
        workers[i].terminate();
        updateOutputWindow("Terminated #" + i + "!!!");
    }
    toggleButtons();
}