function fullScreen() {
    var elem = document.getElementById('mainSection');
    // Make this element full screen asynchronously  
    elem.webkitRequestFullScreen();
    //elem.mozRequestFullScreen();
    
    //For Exit, we need to call
    //elem.webkitExitFullScreen();
}

$(document).ready(function () {
    $('.toggleNextElement').click(function () {
        $(this).nextAll('.toggleMe:first').toggle();
        $(this).nextAll('.toggleMeNoMargin:first').toggle();
    });
});