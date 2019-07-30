<!doctype html>
<html lang="en">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <head>
    <title>Evil-Corp</title>
    % include('assets/heatDemo/links.html')
    % import os ; snowJS = os.path.getsize("assets/heatDemo/snow.js") ; controlJS = os.path.getsize("assets/heatDemo/control.js") ; controlCSS = os.path.getsize("assets/heatDemo/control.css")
    <link rel="stylesheet" type="text/css" href="/static/heatDemo/control.css?filever={{controlCSS}}">
    <script type='text/javascript' src='/static/heatDemo/snow.js?filever={{snowJS}}'></script>  
    <script type='text/javascript' src="/static/heatDemo/control.js?filever={{controlJS}}"></script>  
  </head>
  <body>
    % include('assets/heatDemo/Header.html')
    <canvas id="canvas" style="width: 100%; height: 100%; display: none;"></canvas>
    <div id="Main" class="container">
      <div id="MainRow" class="row">
        <div class="col-lg-12 col-xl-6 heat-col">
          <div class="boxCol">
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
        </div>
        <div class="col-lg-12 col-xl-6 heat-col">
          <div class="boxCol" id="relayBox">
            <h1 style="color:red; margin-bottom: 25px;"><b>Relay Control</b></h1>
            <div id="buttonContainer">
              <div id="relayRow1" class="row">
                <div class="col-sm-6 col-xs-12">
                  <div class="centreBtnDiv">
                    <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(255, 0, 0);" id="PC_button">PC power</button>
                    <span id="PC_status" class="disNone">{{pc}}</span>
                  </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                  <div class="centreBtnDiv">
                    <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(255, 0, 0);" id="T-lights_button">lights</button>
                    <span id="T-lights_status" class="disNone">{{lights_T}}</span>
                  </div>
                </div>
              </div>
              <div id="relayRow2" class="row">
                <div class="col-sm-6 col-xs-12">
                  <div class="centreBtnDiv">
                    <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(255, 0, 0);" id="fans_D_button">Desk Fan</button>
                    <span id="fans_D_status" class="disNone">{{fans_D}}</span>
                  </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                  <div class="centreBtnDiv">
                    <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(255, 0, 0);" id="fans_T_button">Top Fan</button>
                    <span id="fans_T_status" class="disNone">{{fans_T}}</span>
                  </div>
                </div>
              </div>
            </div>    
            <div id="relayRow3" class="row">
              <div class="col-sm-6 col-xs-12">
                <div class="centreBtnDiv">
                  <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(255, 0, 0);" id="demo1">demo 1</button>
                </div>
              </div>
              <div class="col-sm-6 col-xs-12">
                <div class="centreBtnDiv">
                  <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(0, 255, 0);" id="demo2">demo 2</button>
                </div>
              </div>
            </div>
            <div id="relayRow4" class="row">
              <div class="col-sm-6 col-xs-12">
                <div class="centreBtnDiv">
                  <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(0, 255, 0);" id="demo3">demo 3</button>
                </div>
              </div>
              <div class="col-sm-6 col-xs-12">
                <div class="centreBtnDiv">
                  <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(255, 0, 0);" id="demo4">demo 4</button>
                </div>
              </div>
            </div>
            <div id="relayRow5" class="row">
              <div class="col-sm-6 col-xs-12">
                <div class="centreBtnDiv">
                  <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(255, 0, 0);" id="demo5">demo 5</button>
                </div>
              </div>
              <div class="col-sm-6 col-xs-12">
                <div class="centreBtnDiv">
                  <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="width: 200px;   background: rgb(0, 255, 0);" id="demo6">demo 6</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div id="MainRow2" class="row">
        <div class="col-lg-12 col-xl-6 heat-col">
          <div class="boxCol" id="led_box_desk">
            <h1 style="color:red; margin-bottom: 25px;"><b>Desk LED control</b></h1>
              <div class="row boxRow" style="height: auto;">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="margin: 5px auto; background: rgb(255, 0, 0); width: 180px" id="D-led_button">ON/OFF</button>
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="margin: 5px auto; background: rgb(255, 0, 0); width: 180px" id="D-led_colour">Colour</button>
              <!-- <div id="led_circle" class="circle smallCircle" style="background: rgb(255, 0, 0); float: right; margin: -5px 2px auto auto;"></div> -->
                <span id="D-led_status" class="disNone">{{led_D}}</span>
              <!-- </div> -->
              <div id="D_led_buttonContainer" style="margin-top: 20px;">
                <div id="led_buttonRow1" class="row">
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(255, 0, 0);" id="led_btn_D_red">Red</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(0, 255, 0);" id="led_btn_D_green">Green</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(0, 0, 255);" id="led_btn_D_blue">Blue</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                        <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(255, 72, 0);" id="led_btn_D_orange">Orange</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(140, 0, 255);" id="led_btn_D_purple">Purple</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(255, 0, 255);" id="led_btn_D_rainbow">Rainbow</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-12 col-xl-6 heat-col">
          <div class="boxCol" id="led_box_ceiling">
            <h1 style="color:red; margin-bottom: 25px;"><b>Ceiling LED control</b></h1>
            <div class="row boxRow" style="height: auto;">
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="margin: 5px auto; background: rgb(255, 0, 0); width: 180px" id="C-led_button">ON/OFF</button>
              <button type="button" class="btn btn-lg mainbtn my-primary-wl" style="margin: 5px auto; background: rgb(255, 0, 0); width: 180px" id="C-led_colour">Colour</button>
              <!-- <h1 style="padding: 5px 20px; color: white;"></h1> -->
              <!-- <div id="led2_circle" class="circle smallCircle" style="background: rgb(255, 0, 0); float: right; margin: -5px 2px auto auto;"></div> -->
              <!-- <div id="C-lights_circle" class="circle smallCircle" style="background: rgb(255, 0, 0); float: right; margin: -5px 2px auto 13px;"> -->
                <span id="C-led_status" class="disNone">{{led_C}}</span>
              <!-- </div> -->
              <div id="C_led_buttonContainer" style="margin-top: 20px;">
                <div id="led2_buttonRow1" class="row">
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(255, 0, 0);" id="led_btn_C_red">Red</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(0, 255, 0);" id="led_btn_C_green">Green</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(0, 0, 255);" id="led_btn_C_blue">Blue</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                        <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(255, 72, 0);" id="led_btn_C_orange">Orange</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(140, 0, 255);" id="led_btn_C_purple">Purple</button>
                  </div>
                  <div class="col-sm-4 col-xs-6 col-6">
                      <button type="button" class="btn btn-lg smallBtn my-primary-wl" style="background: rgb(255, 0, 255);" id="led_btn_C_rainbow">Rainbow</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  % include('assets/heatDemo/bottom.html')
  </body>
</html>
