<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png">
  <!-- <meta name="description" content="">
  <meta name="author" content=""> -->
  <title>¯\_(ツ)_/¯</title>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
  <link href="static/notChristmas.css" rel="stylesheet">
</head>
<body>
  <div class="container">
    <div id="big-box">
      <div id="little-box">
        <h2>If you're reading this then you have recieved a christmas card, but you cant open it till christmas:</h2>
        <h1>
          <span id="day"></span> Days,
          <span id="hur"></span> Hours,
          <span id="min"></span> Minutes,
          <span id="sec"></span> Seconds
        </h1>
      </div>
    </div>
  </div>
</body>
<script>  
  function countdown() {
    const nowTime = new Date();
    const christmasTime = new Date("2018-12-25");
    var remTime = christmasTime.getTime() - nowTime.getTime();

    var sec = Math.floor(remTime / 1000);
    var min = Math.floor(sec / 60);
    var hur = Math.floor(min / 60) % 24;
    var day = Math.floor(hur / 24);

    hur %= 24;
    min %= 60;
    sec %= 60;

    $('#sec').text(sec);
    $('#min').text(min);
    $('#hur').text(hur);
    $('#day').text(day);

    setTimeout(countdown, 1000);
  }
  countdown();
</script>
</html>