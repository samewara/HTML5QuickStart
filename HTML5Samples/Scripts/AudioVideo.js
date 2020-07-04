function CMute(controlId) {
    $(controlId).attr('muted', true);
}

function CUnMute(controlId) {
    $(controlId).attr('muted', false);
}

function CPause(controlId) {
    if (!($(controlId).get(0).paused))
        $(controlId).get(0).pause();
}

function CPlay(controlId) {
    // Have to get the native DOM element as jQuery knows nothing about .play method on the wrapped array returned by the $('#audioORvideo') selector
    $(controlId).get(0).play();
}

function CFullScreen(controlId) {
    // Only Chrome code currently. 
    $(controlId)[0].webkitRequestFullScreen();
}