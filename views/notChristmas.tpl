<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png">
    <!-- <meta name="description" content="">
    <meta name="author" content=""> -->
    <title>You've got mail</title>
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <link href="static/christmasWallpaper.css" rel="stylesheet">
    <link href="static/notChristmas.css" rel="stylesheet">
  </head>
  <body>
    % include('templates/christmasWallpaper.html')
    <div style="width: 100%; position: absolute; top: 0; left: 0;">
      <div class="container" style="position: relative; margin: 0px auto auto">
        <div class="big-box">
          <h1 style="font-size: 4rem;">You've got mail</h1>
        </div>
        <div class="big-box">
          <h2>but you cant open it till christmas:</h2>
        </div>
        <div class="big-box">
          <!-- <div class="countContainer">
            <div class="content">
              <div class="day">85</div>
              <div class="hur">22</div>
              <div class="min">33</div>
              <div class="sec">54</div>
            </div>
            <div class="title">
              <span>Days</span>
              <span>Hours</span>
              <span>Minutes</span>
              <span>Seconds</span>
            </div>
          </div>
        </div> -->
        <div id="clockdiv">
          <div class="inner">
            <span class="days"></span>
            <div class="smalltext">Days</div>
          </div>
          <div class="inner">
            <span class="hours"></span>
            <div class="smalltext">Hours</div>
          </div>
          <div class="inner">
            <span class="minutes"></span>
            <div class="smalltext">Minutes</div>
          </div>
          <div class="inner">
            <span class="seconds"></span>
            <div class="smalltext">Seconds</div>
          </div>
        </div>
        <!-- <div class="big-box">
          <h1>
            <span class="day"></span> Days,
            <span class="hur"></span> Hours,
            <span class="min"></span> Minutes,
            <span class="sec"></span> Seconds
          </h1>
        </div> -->
      </div>
    </div>
  </body>
  <script>  
    function christmasCountdown() {
      const nowTime = new Date();
      const christmasTime = new Date("2018-12-25");
      var remTime = christmasTime.getTime() - nowTime.getTime();

      var sec = Math.floor(remTime / 1000);
      var min = Math.floor(sec / 60);
      var hur = Math.floor(min / 60);
      var day = Math.floor(hur / 24);

      hur %= 24;
      min %= 60;
      sec %= 60;

      $('.sec').text(sec);
      $('.min').text(min);
      $('.hur').text(hur);
      $('.day').text(day);

      setTimeout(christmasCountdown, 1000);
    }
    christmasCountdown();
  </script>
</html>