
<!doctype html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png">
<title>Merry Christmas</title>
<style>
  @import url("https://fonts.googleapis.com/css?family=Dancing+Script");
  body {
    margin: 0;
    background-color: #4CAF50;
    /*background: radial-gradient(circle at center, rgba(50,50,50,1) 0%,rgba(14,14,14,1) 35%) */
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    perspective: 1000px;
    transform-style: preserve-3d;
  }

  img {
    max-width: 100%;
  }

  *, *:after, *:before {
    box-sizing: border-box;
  }

  h2 {
    font-family: "Dancing Script", serif;
    font-weight: normal;
    font-size: 45px;
    color: #009500;
    text-align: center;
  }

  .wrap {
    width: 350px;
    height: 300px;
    position: relative;
    transform: rotateX(30deg);
    transform-style: preserve-3d;
    box-shadow: 0 4px 2px rgba(0, 0, 0, 0.3);
  }

  .card {
    height: 100%;
    width: 100%;
    background-color: #fff;
    border-radius: 2px;
    position: relative;
    border: 8px solid #B60003;
    text-align: center;
  }
  .card--front {
    display: flex;
    align-items: center;
    justify-content: center;
    transition: all 1.5s cubic-bezier(0.4, 0, 0.2, 1);
    transform-origin: center left;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 2;
    backface-visibility: hidden;
    -webkit-backface-visibility: hidden;
  }
  .card--front.open {
    transform: rotateY(-180deg);
  }
  .card--front.back {
    z-index: 0;
    backface-visibility: visible;
    -webkit-backface-visibility: visible;
  }
  .card--inner {
    overflow: hidden;
    padding: 15px;
  }
  .card--inner h2 {
    font-size: 32px;
  }
  .card--inner img {
    max-width: 60%;
    margin-top: 1.5em;
  }
  .card--inner.open:before {
    transform: translateX(-155%);
    opacity: 0.1;
  }
  .card--inner:before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.3);
    z-index: 1;
    opacity: 1;
    transition: all 1s ease-in-out;
  }

  button {
    -webkit-appearance: none;
    background: #E53935;
    border: 5px solid #9f1815;
    border-width: 0 0 5px;
    padding: 10px 20px;
    width: 150px;
    text-align: center;
    display: block;
    transform: rotateX(30deg);
    margin-top: 20px;
    box-shadow: 0 4px 2px rgba(0, 0, 0, 0.3);
  }
  button:active {
    border-bottom-width: 2px;
    margin-top: 23px;
    outline: none;
  }
  button:focus {
    outline: none;
  }
</style>

<div class="wrap" id="wrap">
  <div class="card card--inner">
    <h2><br>And A Happy <br>New Year!</h2>
  </div>
  <div class="card card--front back" onclick="openCard();"></div>
  <div class="card card--front" onclick="openCard();">
    <h2>Merry <br>Christmas</h2>
  </div>
</div>

<button type="button" onclick="openCard();" id="button">Open Card</button>
<script>
function openCard() {
  var button = document.getElementById('button');
  
  if(button.innerHTML == 'Open Card') {
    button.innerHTML = 'Close Card';
  } else {
    button.innerHTML = 'Open Card';
  }
  
  var cards = document.querySelectorAll('.card');
  for(var i = 0; i < cards.length; i++) {
    cards[i].classList.toggle('open');
  }
}
</script>