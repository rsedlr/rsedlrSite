<!doctype html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
  <title>Evil-Corp</title>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/links.html')
    % include('templates/control.js')
</head>
<body>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
     % include('templates/Header.html')
  <div id="Main" class="row">
    <div class="col-xl-6 col-lg-12 mainWidthMax" style="margin: 15px auto 35px;">
      <h1 style="color:red;"><b>Heating control</b></h1>
      <div class="row">
        <div class="col-sm-6 col-xs-12">
          <div class="circle bigCircle" id="ValCircle" style="background: rgb(255, 0, 255); font-size: 78px; margin: 20px auto 20px auto;">
            <span id="curOutput">{{curPercent}}%</span>
          </div>
        </div>
        <div class="col-sm-6 col-xs-12">
          <div class="circle bigCircle" id="StatCircle" style="background: rgb(255, 0, 0); margin: 20px auto;">
            <span id="StatusVal">{{heat}}</span>
          </div>
        </div>
      </div>
      <div id="buttonContainer">
        <div id="buttonRow1" class="row">
          <div class="col-sm-6 col-xs-12">
            <div class="centreBtnDiv">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="background: rgb(255, 0, 0);" id="offBtn">OFF</button>
            </div>
          </div>
          <div class="col-sm-6 col-xs-12">
            <div class="centreBtnDiv">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="background: rgb(0, 255, 0);" id="onBtn">ON</button>
            </div>
          </div>
        </div>
        <div id="buttonRow2" class="row">
          <div class="col-sm-6 col-xs-12">
            <div class="centreBtnDiv">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="background: rgb(128, 0, 255);" id="LowBtn">Low</button>
            </div>
          </div>
          <div class="col-sm-6 col-xs-12">
            <div class="centreBtnDiv">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="background: rgb(255, 0, 255);" id="MedBtn">Medium</button>
            </div>
          </div>
        </div>
        <div id="buttonRow3" class="row">
          <div class="col-sm-6 col-xs-12">
            <div class="centreBtnDiv">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="background: rgb(255, 0, 128);" id="HighBtn">High</button>
            </div>
          </div>
          <div class="col-sm-6 col-xs-12">
            <div class="centreBtnDiv">
              <button type="button" class="btn btn-lg mainbtn my-primary-w" style="background: rgb(255, 255, 255);" id="MoreOptions">More</button>
            </div>
          </div>
        </div>
      </div>
      <div id="MoreOptionsContainer" class="row disNone container" style="margin: 5px auto;">
        <div class="row">
          <div class="col-md-4 col-sm-5 col-xs-12">
            <div class="circle medCircle" id="moreCircle" style="background: rgb(255, 0, 255); margin: 5px auto;">
                <span id="value"></span>
            </div>
          </div>
          <div class="col-md-8 col-sm-7 col-xs-12" style="padding-left: 10%; margin: auto;">
            <div class="row" style="margin-bottom: 10px">
              <h1 style="color:red;"><b>Temperature</b></h1>
            </div>
            <div class="row">
              <div id="sliderDiv" style="width: 100%">
                <span class="bmd-form-group is-filled"> 
                  <input type="range" min="0" max="100" value="50" class="slider" id="myRange"></div>
                </span>
              <div class="row" style="width: 110%;">
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(0, 0, 255)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(64, 0, 255)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(127, 0, 255)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(191, 0, 255)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(255, 0, 255)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(255, 0, 255)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(255, 0, 191)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(255, 0, 127)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(255, 0, 64)" />
                </svg>
                <svg height="40" width="10%">
                  <circle cx="50%" cy="24" r="13" fill="rgb(255, 0, 0)" />
                </svg>
              </div>
            </div>
          </div>  
          <div style="padding: 30px 30px 0px">
            <button type="button" class="btn btn-lg otherbtn my-primary-w" id="SubmitBtn">Submit</button>  <!-- onclick="window.location.href='/function/submit'" -->
          </div>
          <!-- <div class="col-md-4 col-12">
            <button type="button" class="btn btn-lg otherbtn" onclick="window.location.href='/function/onOff'" id="OnOffBtn">ON/OFF</button>
          </div> -->   
        </div>
      </div>
    </div>
    <div class="col-xl-6 col-lg-12 mainWidthMax" style="margin: 20px auto;">
      <h1 style="color:red; margin-bottom: 25px;"><b>Relay Control</b></h1>
      <div class="row boxRow">
        <button type="button" class="btn btn-lg mainbtn my-primary-w" style="margin: 0px; width: 200px;" id="PC_button">PC power</button>
        <!-- <h1 style="padding: 5px 20px; color: white;"></h1> -->
        <div id="PC_circle" class="circle smallCircle" style="background: rgb(255, 0, 0); float: right; margin: -5px 2px auto auto;">
          <span id="PC_status" class="disNone">{{pc}}</span>
        </div>
      </div>
      <div class="row boxRow">
        <button type="button" class="btn btn-lg mainbtn my-primary-w" style="margin: 0px; width: 200px;" id="T-lightsButton">lights-T</button>
        <!-- <h1 style="padding: 5px 20px; color: white;"></h1> -->
        <div id="T-lights_circle" class="circle smallCircle" style="background: rgb(255, 0, 0); float: right; margin: -5px 2px auto auto;">
          <span id="T-lights_status" class="disNone">{{lights_T}}</span>
        </div>
      </div>
      <div class="row boxRow">
        <button type="button" class="btn btn-lg mainbtn my-primary-w" style="margin: 0px; width: 200px;" id="B-lightsButton">lights-B</button>
        <!-- <h1 style="padding: 5px 20px; color: white;"></h1> -->
        <div id="B-lights_circle" class="circle smallCircle" style="background: rgb(255, 0, 0); float: right; margin: -5px 2px auto auto;">
          <span id="B-lights_status" class="disNone">{{lights_B}}</span>
        </div>
      </div>
      <div class="row boxRow">
        <button type="button" class="btn btn-lg mainbtn my-primary-w" style="margin: 0px; width: 200px;" id="fansButton">Fans</button>
        <!-- <h1 style="padding: 5px 20px; color: white;"></h1> -->
        <div id="fans_circle" class="circle smallCircle" style="background: rgb(255, 0, 0); float: right; margin: -5px 2px auto auto;">
          <span id="fans_status" class="disNone">{{fans}}</span>
        </div>
      </div>
    </div>
  </div>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/bottom.html')
</body>
</html>
<!--
Slide in text {
  .slide-in {
    z-index: 10; /* to position it in front of the other content */
    position: absolute;
    overflow: hidden; /* to prevent scrollbar appearing */
  }
  .slide-in.from-right {
    right: 0;
    top: 230;
  }
  .slide-in-content {
    padding: 5px 20px;
    background: #eee;
    transition: all .5s ease;
  }
  .slide-in.from-right .slide-in-content {
    transform: translateX(100%);
    -webkit-transform: translateX(100%);
  }
  .slide-in.show .slide-in-content {
    transform: translateX(0);
    -webkit-transform: translateX(0);
  }
  <div class="slide-in from-right">
    <div class="slide-in-content">
      <h2 style="padding-bottom: 10px;"><span id="StatusVal"></span></h2>
    </div>
  </div>

  $('#OnOffBtn').click(function() {
    $('.slide-in').toggleClass('show');
    setTimeout(function () {
      $('.slide-in').toggleClass('show');
    }, 1600);
  });
}

 for (let {cssRules} of document.styleSheets) {
  for (let {selectorText, style} of cssRules) {
     if (selectorText === ".slider::-webkit-slider-thumb") {
       style.backgroundColor = color;
     }
   }
 }


-->