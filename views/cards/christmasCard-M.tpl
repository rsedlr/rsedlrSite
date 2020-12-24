<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="robots" content="noindex" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="icon"
      href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png"
    />
    <title>Merry Christmas</title>
    <link href="/static/cards/christmasWallpaper.css?v=1.10" rel="stylesheet" />
    <link
      rel="stylesheet"
      type="text/css"
      href="/static/cards/christmasCard.css?v=1.10"
    />
  </head>
  <body>
    % include('assets/main/wrappingPaper.html')
    <canvas id="canvas"></canvas>

    <header class="masterhead">
      <div class="container">
        <div id="wrapperWrap">
          <div class="wrap" id="wrap">
            <div
              class="card card--inner"
              style="align-content: center"
              onclick="openCard();"
            >
              <h2 id="cardMainMessage" style="margin: 15px 0; padding: 0 10px">
                {{ !message }}
              </h2>
            </div>
            <div class="card card--front back" onclick="openCard();">
              % if name.upper() == 'DAD':
              <button
                type="button"
                id="dadGiftBtn"
                style="
                  margin: 10px auto;
                  transform: rotateY(180deg);
                  height: 60px;
                  width: 200px;
                  font-size: 30px;
                  font-weight: bold;
                "
              >
                Click me :)
              </button>
              % end
            </div>
            <div class="card card--front" onclick="openCard();">
              <h2 id="cardFrontMessage" style="width: 100%">
                Merry<br />Christmas<br /><span id="name">{{ name }}</span
                ><br /><span style="font-size: 1rem">(click me)</span>
              </h2>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- 
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
        <h2 id="cardFrontMessage" style="width: 100%">Merry<br>Christmas<br><span id="name">{{name}}</span><br><span style="font-size: 1rem">(click me)</span></h2>
      </div>
    </div>
    <button type="button" onclick="openCard();" id="button" style="margin: 10px auto; display: none">Open Card</button>
  </div> -->
    <!-- <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script> -->
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <!-- ^needed? -->
    <script type="text/javascript" src="/static/main/snow.js"></script>
    <script>
      $(document).ready(function () {
        var nameSpan = document.getElementById('name')
        var name = nameSpan.innerText.toUpperCase()
        if (name == 'GRANDAD') {
          document.documentElement.style.backgroundImage = `url('/static/pic/norton.png')`
          document.documentElement.style.backgroundSize = '120px 60px'
          document.documentElement.style.backgroundPosition = '0 10px'
        } else if (name == 'PIXIE') {
          document.documentElement.style.backgroundImage = `url('/static/pic/bone.png')`
          document.documentElement.style.backgroundSize = '348px 207px'
          document.documentElement.style.backgroundPosition = '0 3px'
        } else {
          switch (name) {
            case 'EVEY':
              var colour = 'rgb(255, 0, 255)'
              break
            case 'DAD':
              var colour = 'rgb(0, 0, 0)'
              break
            case 'EVIE':
              var colour = 'rgb(0, 0, 255)'
              break
            case 'JOEY':
              var colour = 'rgb(85, 0, 182)'
              break
            default:
              var colour = 'rgb(12, 78, 14)'
          }
          document.documentElement.style.backgroundColor = colour
        }
        $('#dadGiftBtn').click(function () {
          window.location.href = '/dadsGift'
        })
      })

      function openCard() {
        var cards = document.querySelectorAll('.card')
        var wrap = document.getElementById('wrap')
        for (var i = 0; i < cards.length; i++) {
          cards[i].classList.toggle('open')
          wrap.classList.toggle('open')
        }
      }
    </script>
  </body>
</html>
