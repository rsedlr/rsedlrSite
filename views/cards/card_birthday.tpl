<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="robots" content="noindex" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="" />
    <title>Happy Birthday {{ name }}!</title>
    <link
      rel="stylesheet"
      type="text/css"
      href="/static/cards/card_birthday.css"
    />
  </head>
  <body>
    <header class="masterhead">
      <div class="container">
        <div id="wrapperWrap">
          <div class="wrap" id="wrap">
            <div
              class="card card--inner withShadow"
              style="align-content: center"
              onclick="openCard();"
            >
              <h2 id="cardMainMessage" style="margin: 15px 0; padding: 0 10px">
                {{ !message }}
              </h2>
            </div>
            <div class="card card--front back" onclick="openCard();">
              % if name.upper() == 'MUM':
              <div style="padding: 25px; height: 100%; position: relative">
                <div id="mumBtn">This is a voucher for picture frames</div>
              </div>
              % end
            </div>
            <div class="card card--front withShadow" onclick="openCard();">
              <h2
                id="cardFrontMessage"
                style="width: 100%; transition: none; font-size: 4rem"
              >
                Happy<br />
                Birthday<br />
                <span id="name">{{ name }}</span
                ><br />
                <span style="font-size: 1rem">(click me)</span>
              </h2>
            </div>
          </div>
        </div>
      </div>
    </header>
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script>
      function openCard() {
        var cards = document.querySelectorAll('.card')
        var wrap = document.getElementById('wrap')

        wrap.classList.toggle('open')
        for (var i = 0; i < cards.length; i++) {
          cards[i].classList.toggle('open')
        }
      }

      const queryString = window.location.search
      const urlParams = new URLSearchParams(queryString)

      const mainCol = urlParams.get('c')
      if (mainCol && (mainCol.length == 3 || mainCol.length == 6)) {
        $(document.body).css('--main', '#' + mainCol)
      }
      const trimCol = urlParams.get('t')
      if (trimCol && (trimCol.length == 3 || trimCol.length == 6)) {
        $(document.body).css('--trim', '#' + trimCol)
      }
    </script>
  </body>
</html>

<!-- // $('#mumBtn').click(function () {
      //   window.location.href =
      //     'https://drive.google.com/open?id=1OqFgN0nXuRVFSD8VGVu42K_JINAdNWpo'
      // })

      // var nameSpan = document.getElementById('name')
      // var name = nameSpan.innerText.toUpperCase()
      // if (name == 'GRANDAD') {
      //   document.documentElement.style.backgroundImage = `url('/static/pic/norton.png')`;
      //   document.documentElement.style.backgroundSize = '348px 207px';
      //   document.documentElement.style.backgroundPosition = '0 3px';
      // } else {
      // switch (name) {
      //   case 'NANNY M':
      //     $(document.body).css('--main-col', 'rgb(132, 0, 255)')
      //     break
      //   case 'NANNY A':
      //     $(document.body).css('--main-col', 'rgb(255, 0, 170)')
      //     break
      //   case 'MUM':
      //     $(document.body).css('--main-col', '#63a4aa')
      //     // $(document.html).addClass('mum')
      //     var root = document.getElementsByTagName('html')[0]
      //     root.className += ' mum'
      //     break
      //   // default:
      //   //   var colour = 'rgb(158, 0, 66)';
      // } -->
