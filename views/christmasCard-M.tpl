
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
  <div class="col-6">
    <div class ="wrap" id="wrap">
      <div class="card card--inner" style="align-content: center" onclick="openCard();">
        <h2 id="cardMainMessage" style="margin: 15px 0; padding: 0 10px">{{!message}}</h2>
      </div>
      <div class="card card--front back" onclick="openCard();">
        % if name.upper() == 'DAD':
          <button type="button" id="dadGiftBtn" style="margin: 10px auto; transform: rotateY(180deg); height: 60px; width: 200px; font-size: 30px; font-weight: bold">Click me :)</button>
        % end
      </div>
      <div class="card card--front" onclick="openCard();">
        <h2 id="cardFrontMessage">Merry<br>Christmas<br><span id="name">{{name}}</span></h2>
        <p style="display: block; color: red">(click me)</p>
      </div>
    </div>
    <button type="button" onclick="openCard();" id="button" style="margin: 10px auto; display: none">Open Card</button>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script>
    $(document).ready(function () {
      var nameSpan = document.getElementById('name');
      var name = nameSpan.innerText.toUpperCase();  
      if (name == 'GRANDAD') {
        document.documentElement.style.backgroundImage = `url('/static/pic/norton.png')`;
        document.documentElement.style.backgroundSize = '120px 60px';
        document.documentElement.style.backgroundPosition = '0 10px';
      } else if (name == 'PIXIE') {
        document.documentElement.style.backgroundImage = `url('/static/pic/bone.png')`;
        document.documentElement.style.backgroundSize = '348px 207px';
        document.documentElement.style.backgroundPosition = '0 3px';
      } else {
        switch (name) {
          case 'EVEY':
            var colour = 'rgb(255, 0, 255)';
            break;
          case 'DAD':
            var colour = 'rgb(0, 0, 0)';
            break;
          case 'EVIE':
            var colour = 'rgb(0, 0, 255)'
            break;
          case 'JOEY':
            var colour = 'rgb(85, 0, 182)'
            break;
          default:
            var colour = 'rgb(12, 78, 14)'
        }
        document.documentElement.style.backgroundColor = colour;
      }
      $('#dadGiftBtn').click(function () {
        window.location.href = '/dadsGift';
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
