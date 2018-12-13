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
          <h1>You've got mail</h1>
          <h2>but you cant open it till christmas:</h2>
        </div>
        <div class="big-box">
          <div class="little-box">
            <h1>
              <span id="day"></span> Days,
              <span id="hur"></span> Hours,
              <span id="min"></span> Minutes,
              <span id="sec"></span> Seconds
            </h1>
          </div>
        </div>
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

      $('#sec').text(sec);
      $('#min').text(min);
      $('#hur').text(hur);
      $('#day').text(day);

      setTimeout(christmasCountdown, 1000);
    }
    christmasCountdown();
  </script>
</html>