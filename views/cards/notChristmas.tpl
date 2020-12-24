<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png">
    <meta name="description" content="Christmas card">
    <meta name="author" content="Reiss Edler - rsedlr@protonmail.com">
    <title>You've got mail</title>
    <link href="/static/cards/christmasWallpaper.css?v=1.11" rel="stylesheet">
    <link href="/static/cards/notChristmas.css?v=1.11" rel="stylesheet">
  </head>
  <body>
    % include('assets/main/wrappingPaper.html')
    <canvas id="canvas"></canvas>

    <div class="container" style="position: relative; margin: 0px auto auto">
      <div class="big-box">
        <h1 style="font-size: 5rem; margin: 5px; padding-bottom: 5px;" id="mainText">
          {{name}} <br> 
          you've got mail
        </h1>
      </div>

      <div class="big-box">
        <h1 style="margin: 5px; margin-bottom: 10px;">You can open your Christmas card in:</h2>

        <div id="clockdiv">
          <div class="inner">
            <span class="day"></span>
            <div class="smalltext">Days</div>
          </div>
          <div class="inner">
            <span class="hur"></span>
            <div class="smalltext">Hours</div>
          </div>
          <div class="inner">
            <span class="min"></span>
            <div class="smalltext">Minutes</div>
          </div>
          <div class="inner">
            <span class="sec"></span>
            <div class="smalltext">Seconds</div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
  <script type='text/javascript' src='/static/main/snow.js'></script>  
  <script>  
    function christmasCountdown() {
      const nowTime = new Date();
      const christmasTime = new Date("2020-12-25");
      var remTime = christmasTime.getTime() - nowTime.getTime();
      if (remTime <= 0) {
        window.location.reload();
      }

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