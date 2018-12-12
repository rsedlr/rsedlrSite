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
        <span id="christmasCountdown"></span>
        <h1>seconds till christmas</h1>
      </div>
    </div>
  </div>
</body>
<script>
  const nowTime = new Date();
  const christmasTime = new Date(2018, 12, 25);
  const timeTillChristmas = christmasTime - nowTime;
  var christmasCountdown = document.getElementById('christmasCountdown');
  christmasCountdown.innerHTML = `${timeTillChristmas.getDay()}days, ${timeTillChristmas.getHours()}hours, ${timeTillChristmas.getMinutes()}minutes, ${timeTillChristmas.getSeconds()}seconds`;
</script>
</html>