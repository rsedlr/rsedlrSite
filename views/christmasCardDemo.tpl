<!doctype html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png">
  <title>Merry Christmas</title>
  <link rel="stylesheet" type="text/css" href="/static/christmasCard.css">
</head>
<body>
  <ul class="lightrope" style="top: 0; left: 0;">
    <li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>
  </ul>
  <header class="masterhead">
    <div class="container">
      <div id="wrapperWrap">
        <div class ="wrap" id="wrap">
          <div class="card card--inner" style="align-content: center" onclick="openCard();">
            <h2 id="cardMainMessage" style="margin: 15px 0; padding: 0 10px">{{!message}}</h2>
          </div>
          <div class="card card--front back" onclick="openCard();">
            % if name.upper() == 'NAME DEMO':
              <button type="button" id="cardBtn" style="margin: 10px auto; transform: rotateY(180deg); height: 60px; width: 200px; font-size: 30px; font-weight: bold">click me</button>
            % end
          </div>
          <div class="card card--front" onclick="openCard();">
            <h2 id="cardFrontMessage" style="width: 100%">Merry<br>Christmas<br><span id="name">{{name}}</span><br><span style="font-size: 1rem">(click me)</span></h2>
          </div>
        </div>
        <button type="button" onclick="openCard();" id="button" style="margin: 10px auto; display: none">Open Card</button>
        <p style="display: none" id="hiddenVar">{{colour}}</p>
      </div>
    </div>
  </header>
  <section>
    <div class="container">
      <div style="margin: auto; color: black; height: 200px; width: 100px; background-color: blue; text-align: center;">
        hello
      </div>
    </div>
  </section>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script>
    $(document).ready(function () {
      var name = document.getElementById('hiddenVar').innerText.toUpperCase();  
      if (name == 'CUSTOM BACKGROUND') {
        document.documentElement.style.backgroundImage = `url('/static/pic/bone.png')`;
        document.documentElement.style.backgroundSize = '240px 120px';
        document.documentElement.style.backgroundPosition = '0 10px';
      } else {
        switch (name) {
          case 'BLACK':
            var colour = 'rgb(0, 0, 0)';
            break;
          case 'BLUE':
            var colour = 'rgb(0, 0, 255)';
            break;
          case 'RED':
            var colour = 'rgb(255, 0, 0)'
            break;
          case 'PINK':
            var colour = 'rgb(255, 0, 182)'
            break;
          case 'PURPLE':
            var colour = 'rgb(140, 0, 255)'
            break;
          case 'ORANGE':
            var colour = 'rgb(255, 131, 0)'
            break;
          case 'GREY':
            var colour = 'rgb(132, 132, 132)'
            break;
          default:
            var colour = 'rgb(12, 78, 14)'
        }
        document.documentElement.style.backgroundColor = colour;
      }
      $('#cardBtn').click(function () {
        alert('ouch');
      });
    });

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
  </script>
</body>
</html>
