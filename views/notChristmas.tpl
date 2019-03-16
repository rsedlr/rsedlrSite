<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png">
    <!-- <meta name="description" content="">
    <meta name="author" content=""> -->
    <title>You've got mail</title>
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <link href="/static/notChristmas.css" rel="stylesheet">
  </head>
  <body>
    <div class="container" style="position: relative; margin: 0px auto auto">
      <div class="big-box">
        <h1 style="font-size: 5rem; margin: 5px" id="mainText">{{name}} you've got mail</h1>
      </div>
      <div class="big-box">
        <h1 style="margin: 5px">but you cant open it till christmas:</h2>
      </div>
      <div class="big-box">
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