
<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="https://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/alphabet.js"></script>
<body>
  <canvas id="myCanvas"></canvas>
  <script type="text/javascript" src="https://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/bubbles.js"></script>
  <script type="text/javascript" src="main.js"></script>
  <h3> move cursor over the name </h3>
<script>
  var red = [0, 100, 63];
  var orange = [40, 100, 60];
  var green = [75, 100, 40];
  var blue = [196, 77, 55];
  var purple = [280, 50, 60];

  var myName = "Reiss";
  letterColors = [red, orange, green];
  bubbleShape = "circle";

  drawName(myName, letterColors);
  bounceBubbles();
</script>