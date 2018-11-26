
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/alphabet.js"></script>
<body>
  <canvas id="myCanvas" height="600" width="2500"></canvas>
  <script type="text/javascript" src="https://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/bubbles.js"></script>
</body>
<script>
  var red = [0, 100, 63];
  var orange = [40, 100, 60];
  var green = [75, 100, 40];
  var blue = [196, 77, 55];
  var purple = [280, 50, 60];
  var white = [255, 255, 255]

  mouseResponseThreshold = 50;
  friction = 0.8;
  rotationForce = 0.03;

  var myName = "Testing";
  letterColors = [white];
  bubbleShape = "circle";

  drawName(myName, letterColors);
  bounceBubbles();
</script>