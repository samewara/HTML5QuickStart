function checkSupport() {
    if (typeof (HTMLCanvasElement) !== "undefined") {
        document.getElementById("supportstatus").innerHTML = "HTML5 Canvas is supported in your browser.";
    }
    else {
        document.getElementById("supportstatus").innerHTML = "HTML5 Canvas is <strong>not</strong> supported in your browser.";
    }
}

///////////////////////////////////////////

var canvas = document.getElementById('myCanvas');
var context = canvas.getContext('2d');

var myRectangle = {
    x: 5,
    y: 5,
    width: 40,
    height: 80,
    borderWidth: 3
};

context.translate(10, 0);
drawRect(myRectangle, context);
drawArcTo(context);
drawArc(context);
drawSomeDesign(context);
drawRect2(context);
drawRect3(context);
// this will be at new place due to translation
drawArcTo(context);
// back to normal
context.translate(0, 0);
drawArcTo(context);
drawSpring(context);
context.translate(0, 0);

function drawRect(myRectangle, context) {
    context.beginPath();
    context.rect(myRectangle.x, myRectangle.y, myRectangle.width, myRectangle.height);
    context.fillStyle = '#8ED6EE';
    context.fill();
    context.lineWidth = myRectangle.borderWidth;
    context.strokeStyle = 'black';
    context.stroke();
    context.closePath();
}

function drawArcTo(context) {
    context.beginPath();
    context.moveTo(150, 10);
    context.arcTo(80, 45, 3, 200, 90);
    context.fillStyle = 'Yellow';
    context.fill();

    context.strokeStyle = 'Purple';
    context.stroke();
    context.closePath();
}

function drawArc(context) {
    context.beginPath();
    context.arc(190, 30, 20, 1, 10);
    context.fillStyle = 'Green';
    context.fill();

    context.strokeStyle = 'Blue';
    context.stroke();
    context.closePath();
}

function drawSomeDesign(context) {
    context.fillStyle = "rgb(200,0,0)";
    context.fillRect(115, 90, 70, 30);
    //END:shape
    context.fillStyle = "rgb(0,200,0)";
    context.fillRect(120, 100, 70, 30);
    context.fillStyle = "rgb(0,0,200)";
    context.fillRect(130, 110, 70, 30);
    context.strokeStyle = "rgb(200,0,0)";
    context.lineWidth = 2;
    context.beginPath();
    context.moveTo(110, 100);
    context.lineTo(200, 130);
    context.strokeStyle = 'white';
    context.stroke();
    //context.save();
    context.closePath();
}

function drawRect2(context) {
    //context.restore();
    context.beginPath();

    context.moveTo(50, 120);
    context.lineTo(70, 120);
    context.lineTo(70, 140);
    context.lineTo(50, 140);
    context.lineTo(50, 120);

    context.lineWidth = myRectangle.borderWidth;
    context.strokeStyle = 'gray';
    context.stroke();
    context.fillStyle = "rgb(200,100,100)";
    context.fill();
    context.closePath();
}

function drawRect3(context) {
    context.translate(-10, -10);
    context.beginPath();

    context.moveTo(50, 120);
    context.lineTo(70, 120);
    context.lineTo(70, 140);
    context.lineTo(50, 140);
    context.lineTo(50, 120);

    context.lineWidth = myRectangle.borderWidth;
    context.strokeStyle = 'gray';
    context.stroke();
    context.fillStyle = "rgb(200,200,400)";
    context.fill();
    context.closePath();
}

// Copied from an example I was given. NOT MY WORK - SANDEEP MEWARA
// Would be happy to credit the original writer, if I know.

window.requestAnimFrame = (function (callback) {
    return window.requestAnimationFrame ||
    window.webkitRequestAnimationFrame ||
    window.mozRequestAnimationFrame ||
    window.oRequestAnimationFrame ||
    window.msRequestAnimationFrame ||
    function (callback) {
        window.setTimeout(callback, 1000 / 60);
    };
})();

function animate(theta, lastTime) {
    // update
    var date = new Date();
    var time = date.getTime();
    var timeDiff = time - lastTime;
    theta += timeDiff / 400;
    lastTime = time;

    var scale = 0.4 * (Math.sin(theta) + 1.3);

    // clear
    context.clearRect(0, 0, canvas.width, canvas.height);

    // draw
    context.save();
    context.translate(-220, 0);

    context.save();
    context.scale(1, scale);
    drawSpring(context);
    context.restore();

    context.lineWidth = 2;
    context.strokeStyle = "#0096FF"; // blue-ish color
    context.stroke();

    context.translate(250, 107 * scale);
    drawWeight(context);
    context.restore();

    // request new frame
    requestAnimFrame(function () {
        animate(theta, lastTime);
    });
}

function drawSpring(context) {
    context.beginPath();
    context.translate(250, 0);
    
    for (var y = 0; y < 107; y++) {
        // Sine wave equation
        var x = 20 * Math.sin(y / 3.05);
        context.lineTo(x, y);
    }
}

function drawWeight(context) {
    var size = 30;
    context.save();
    context.fillStyle = "red";
    context.fillRect(-size / 2, 0, size, size);
    context.restore();
}

window.onload = function () {
    var theta = 0;
    var date = new Date();
    var time = date.getTime();
    animate(theta, time);
};

