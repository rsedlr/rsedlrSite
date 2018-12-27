
// not all my code, some is from: https://codepen.io/loktar00/pen/CHpGo
$(document).ready(function () {
  (function() {
    var requestAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame ||
    function(callback) {
      window.setTimeout(callback, 1000 / 60);
    };
    window.requestAnimationFrame = requestAnimationFrame;
  })();

  var flakes = [],
    canvas = document.getElementById("canvas"),
    ctx = canvas.getContext("2d"),
    flakeCount = 800,
    mX = -100,
    mY = -100
    canvas.style.removeProperty('height');
    canvas.style.removeProperty('width');
    setSize();

  function snow() {
    // console.log(document.getElementById('canvas').style.display);
    if (document.getElementById('canvas').style.display != 'none') {
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      for (var i = 0; i < flakeCount; i++) {
        var flake = flakes[i],
          x = mX,
          y = mY,
          minDist = 150,
          x2 = flake.x,
          y2 = flake.y;
        var dist = Math.sqrt((x2 - x) * (x2 - x) + (y2 - y) * (y2 - y)),
          dx = x2 - x,
          dy = y2 - y;
        if (dist < minDist) {
          var force = minDist / (dist * dist),
          xcomp = (x - x2) / dist,
          ycomp = (y - y2) / dist,
          deltaV = force / 2;
          flake.velX -= deltaV * xcomp;
          flake.velY -= deltaV * ycomp;
        } else {
          flake.velX *= .98;
          if (flake.velY <= flake.speed) {
            flake.velY = flake.speed
          }
          flake.velX += Math.cos(flake.step += .05) * flake.stepSize;
        }
        ctx.fillStyle = "rgba(255,255,255," + flake.opacity + ")";
        flake.y += flake.velY;
        flake.x += flake.velX;
        if (flake.y >= canvas.height || flake.y <= 0) {
          reset(flake);
        }
        if (flake.x >= canvas.width || flake.x <= 0) {
          reset(flake);
        }
        ctx.beginPath();
        ctx.arc(flake.x, flake.y, flake.size, 0, Math.PI * 2);
        ctx.fill();
      }
      requestAnimationFrame(snow);
    }
  };

  function reset(flake) {
    flake.x = Math.floor(Math.random() * canvas.width);
    flake.y = 0;
    flake.size = (Math.random() * 3) + 2;
    flake.speed = (Math.random() * 1) + 0.5;
    flake.velY = flake.speed;
    flake.velX = 0;
    flake.opacity = (Math.random() * 0.5) + 0.3;
  }

  function init() {
    for (var i = 0; i < flakeCount; i++) {
      var x = Math.floor(Math.random() * canvas.width),
        y = Math.floor(Math.random() * canvas.height),
        size = (Math.random() * 3) + 2,
        speed = (Math.random() * 1) + 0.5,
        opacity = (Math.random() * 0.5) + 0.3;

      flakes.push({
        speed: speed,
        velY: speed,
        velX: 0,
        x: x,
        y: y,
        size: size,
        stepSize: (Math.random()) / 30,
        step: 0,
        opacity: opacity
      });
    }
    snow();
  };

  function setSize() {
    // if ($(document).height() > $(window).height()) {
    //   canvas.width = window.innerWidth - 10;
    //   canvas.height = document.body.clientHeight;
    // } else {
    //   canvas.width = window.innerWidth;
    //   canvas.height = window.innerHeight-71
    // }
    canvas.width = ($(document).height() > $(window).height()) ? window.innerWidth - 10 : window.innerWidth; // -10 to cancel out scrollbar
    canvas.height = (document.body.clientHeight > window.innerHeight) ? document.body.clientHeight : window.innerHeight-71;
  }

  canvas.addEventListener("mousemove", function(e) {
    mX = e.offsetX;
    mY = e.offsetY;  // -72  
  });

  canvas.addEventListener("mouseout", function(e) {
    mX = -500;
    mY = -500;
  });

  window.addEventListener("resize",function(){
    setSize();
  })

  new ResizeObserver(setSize).observe(document.body);
  init();
});