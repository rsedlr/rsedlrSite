<!doctype html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="robots" content="noindex">
<head>
  <title>Heating</title>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  % include('assets/links.html')
  <link rel="stylesheet" type="text/css" href="/static/hStylesheet.css">
  <script src="/static/hControl.js"></script>
</head>
<body class="body-color-1">
  % include('assets/h-header.html')
  <div id="Main" class="row">
    <div class="col-xl-6 col-lg-12 mainWidthMax" style="margin: 15px auto 35px;">
      <h1 style="color:red; text-align: center;"><b>H's heating control</b></h1>
      <div class="row">
        <div class="col-12">
          <div class="circle bigCircle" id="StatCircle" style="background: rgb(255, 0, 0); margin: 20px auto;">
            <span id="StatusVal">{{heat}}</span>
          </div>
        </div>
      </div>
      <div id="buttonContainer">
        <div id="buttonRow1" class="row">
          <div class="col-md-6 col-sm-12">
            <div class="centreBtnDiv">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="background: rgb(255, 0, 0); font-size: 40px !important;" id="offBtn">OFF</button>
            </div>
          </div>
          <div class="col-md-6 col-sm-12">
            <div class="centreBtnDiv">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="background: rgb(0, 255, 0); font-size: 40px !important;" id="onBtn">ON</button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="centreBtnDiv">
            <button type="button" class="btn btn-lg mainbtn my-primary-w" style="background: #ffffff; margin-top: 20px" id="help">Show Help</button>
          </div>
        </div>
      </div>
      <div id="helpContainer" class="row disNone aboutBox" style="margin: 5px auto;">
        <span style="font-size: 20px; color: white;">
          press the ON button to turn the heating on.<br>
          press the OFF button to turn it off :)
        </span>
      </div>
    </div>
  </div>
  % include('assets/bottom.html')
</body>
</html>
