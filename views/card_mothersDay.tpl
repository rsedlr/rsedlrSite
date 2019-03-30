<!doctype html>
<html lang="en">
<head>
  <meta name="robots" content="noindex">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="icon" href="">
  <title>Happy Mothers Day</title>
  <link rel="stylesheet" type="text/css" href="/static/card_mothersDay.css">
</head>
<body>
  <header class="masterhead">
    <div class="container">
      <div id="wrapperWrap">
        <div class ="wrap" id="wrap">
          <div class="card card--inner" style="align-content: center" onclick="openCard();">
            <h2 id="cardMainMessage" style="margin: 15px 0; padding: 0 10px">{{!message}}</h2>
          </div>
          <div class="card card--front back" onclick="openCard();">
          </div>
          <div class="card card--front" onclick="openCard();">
            <h2 id="cardFrontMessage" style="width: 100%">Happy<br>Mothers<br>Day<br><span id="name">{{name}}</span><br><span style="font-size: 1rem">(click me)</span></h2>
          </div>
        </div>
        <button type="button" onclick="openCard();" id="button" style="margin: 10px auto; display: none">Open Card</button>
      </div>
    </div>
  </header>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script>
    function openCard() {
      var button = document.getElementById('button');
      if (button.innerHTML == 'Open Card') {
        button.innerHTML = 'Close Card';
      } else {
        button.innerHTML = 'Open Card';
      }
      var cards = document.querySelectorAll('.card');
      for (var i = 0; i < cards.length; i++) {
        cards[i].classList.toggle('open');
      }
    }

    $(document).ready(function () {
      var nameSpan = document.getElementById('name');
      var name = nameSpan.innerText.toUpperCase();  
      // if (name == 'GRANDAD') {
      //   document.documentElement.style.backgroundImage = `url('/static/pic/norton.png')`;
      //   document.documentElement.style.backgroundSize = '348px 207px';
      //   document.documentElement.style.backgroundPosition = '0 3px';
      // } else {
      switch (name) {
        case 'NANNY M':
          $(document.body).css("--main-col", 'rgb(132, 0, 255)');
          break;
        case 'NANNY A':
          $(document.body).css("--main-col", 'rgb(255, 0, 170)');
          break;
        case 'MUM':
          $(document.body).css("--main-col", '#63a4aa');
          break;
        // default:
        //   var colour = 'rgb(158, 0, 66)';
      }
    });
  </script>
</body>
</html>
