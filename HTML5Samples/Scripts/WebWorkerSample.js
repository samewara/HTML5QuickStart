var isRunning = false;

function DoActivity(wData) {
    if (!isRunning) {
        postMessage(wData + " : Stopped!");
        self.close();
        return;
    }
    else {
        postMessage(wData + " : " + new Date());
        
        // Found that I have to put some delay before calling the method back 
        // Looks like delay gives some time to pass on the message to Worker
        
        setTimeout(function () { DoActivity(wData); }, 1000);
        
        // Initially I tried a dummy for loop for delay but that was not working properly as worker was not getting stopped
        // Probably because the setTimeout() function is non-blocking and will return immediately and for will hang the thread
    }
}

function messageHandler(e) {
    if (!isRunning) {
        postMessage(e.data + " : Starting...");
        isRunning = true;
        DoActivity(e.data);
    } else {
        postMessage(e.data + " Stopping...");
        isRunning = false;
    }
}

addEventListener("message", messageHandler, true);