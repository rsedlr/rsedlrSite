
<!doctype html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png">
<title>Merry Christmas</title>
<link rel="stylesheet" type="text/css" href="/static/christmasCard.css">
<ul class="lightrope" style="top: 0; left: 0;">
  <li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>
</ul>
<div class="col-6">
  <div class ="wrap" id="wrap">
    <div class="card card--inner" style="align-content: center">
      <h2>{{message}}</h2>
    </div>
    <div class="card card--front back" onclick="openCard();"></div>
    <div class="card card--front" onclick="openCard();">
      <h2>Merry <br>Christmas<br>{{name}}</h2>
    </div>
  </div>
  <button type="button" onclick="openCard();" id="button" style="margin: 10px auto">Open Card</button>
</div>
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
</script>