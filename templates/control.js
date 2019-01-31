$(document).ready(function () {
  // var curOutput = document.getElementById("curOutput");
  // var curOut = $("#curOutput").text().slice(0,-1);
  var output = document.getElementById("value");
  var s = document.getElementById("myRange");
  // var OnOff = document.getElementById("OnOffBtn");
  // var StatOutput = document.getElementById('StatusVal');
  var canvas = document.getElementById('canvas');
  var LED_circle = document.getElementById('LED_circle');
  var r = 255, b = 255;
  output.innerHTML = s.value + '%';
  var heat = $("#StatusVal").text();
  var valueDict = {'heat': $("#StatusVal"), 'pc': $("#PC_status"), 'lights_T': $("#T-lights_status"), 'lights_B': $("#B-lights_status"), 'fans': $("#fans_status"), 'curPercent': $("#curOutput")}
  getVals();
  window.setInterval(getVals, 30000);
  if (getCookie('christmas') == 'True') {
    canvas.style.display = 'inherit'; 
  } else {
    canvas.style.display = 'none';       
    $('#btn-christmas').text('Christmas on')
  }

  function getVals() {
    postVal('pc');
    postVal('lights_T');
    postVal('lights_B');
    postVal('fans');
    curCircle(parseInt($("#curOutput").text().slice(0,-1))) //get current stat from initial bottle page load and remove % sign then turn into int
  }
  // function testPostVal() {
  //   console.log(arguments);
  //   var value = arguments.join('-');
  //   var xhttp = new XMLHttpRequest();
  //   xhttp.onreadystatechange = function() {
  //     if (this.readyState == 4 && this.status == 200) {
  //       console.log(value);
  //       value.split('-');
  //       console.log(value);
  //       if ('heat' in value) {
  //         console.log('heat is in value');
  //         responseVal = this.responseText.split('-');
  //         valueDict['heat'].text(responseVal[0]);
  //         valueDict['curPercent'].text(responseVal[1] + "%");
  //       } else {
  //         console.log('heat is NOT in value');
  //         for (var val; val < value.length; val++) {
  //           valueDict[value].text(this.responseText);
  //         }
  //       }
  //       updateAllCircles();
  //     }
  //   };
  //   console.log(`/values/${value}`);
  //   xhttp.open("POST", `/values/${value}`, true);
  //   xhttp.send();
  // }
  function postVal(value) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        if (value == 'heat') {
          responseVal = this.responseText.split('-');
          valueDict['heat'].text(responseVal[0]);
          valueDict['curPercent'].text(responseVal[1] + "%");
        } else {
          valueDict[value].text(this.responseText);
        }
        updateAllCircles();
      }
    };
    xhttp.open("POST", `/values/${value}`, true);
    xhttp.send();
  }
  function updateAllCircles() {
    var heat = $("#StatusVal").text();
    var pc = $("#PC_status").text();
    var lights_T = $("#T-lights_status").text();
    var lights_B = $("#B-lights_status").text();
    var fans = $("#fans_status").text();
    document.getElementById('StatCircle').style.backgroundColor = (heat == 'ON') ? 'rgb(0, 255, 0)' : (heat == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('PC_circle').style.backgroundColor = (pc == 'ON') ? 'rgb(0, 255, 0)' : (pc == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('T-lights_circle').style.backgroundColor = (lights_T == 'ON') ? 'rgb(0, 255, 0)' : (lights_T == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('B-lights_circle').style.backgroundColor = (lights_B == 'ON') ? 'rgb(0, 255, 0)' : (lights_B == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('fans_circle').style.backgroundColor = (fans == 'ON') ? 'rgb(0, 255, 0)' : (fans == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    curCircle(parseInt($("#curOutput").text().slice(0,-1)));
  }
  function submitHeat(per) {
    fetch(new Request('/submit/' + heat + '/' + per), {method: 'PUT'});
    console.log('/submit/' + heat + '/' + per);
    postVal("heat");
  }
  function submitURL(url) {
    fetch(new Request(url), {method: 'PUT'});
  }
  // function changeVal(val) {
  //   s.value = val;
  //   output.innerHTML = val + '%';
  //   UpdateCircle();
  // }
  function hide(id) {
    var e = document.getElementById(id);
    if (e.style.display == 'block') {
      e.style.display = 'none';  // or visibility: 'hidden'
    } else {
      e.style.display = 'block';  // or visibility: 'visible'
    }
  }
  function curCircle(curPercantage) {
    if (curPercantage > 50) {
      r = 255;
      b = Math.round(255 * (100 - curPercantage) / 50);
    } else {
      r = Math.round(255 * curPercantage / 50);
      b = 255;
    }
    document.getElementById('ValCircle').style.backgroundColor = 'rgb(' + r + ',0,' + b + ')';
  }
  function UpdateCircle() {
    var s = document.getElementById('myRange');
    output.innerHTML = s.value + '%';
    if (s.value > 50) {
      r = 255;
      b = Math.round(255 * (100 - s.value) / 50);
    } else {
      r = Math.round(255 * s.value / 50);
      b = 255;
    }
    document.getElementById('moreCircle').style.backgroundColor = 'rgb(' + r + ',0,' + b + ')';
  }
  function setCookie(name,value,days) {
    var expires = "";
    if (days) {
      var date = new Date();
      date.setTime(date.getTime() + (days*24*60*60*1000));
      expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + (value || "")  + expires + "; path=/";
  }
  function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
      var c = ca[i];
      while (c.charAt(0)==' ') c = c.substring(1,c.length);
      if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
  }
  function eraseCookie(name) {   
    document.cookie = name+'=; Max-Age=-99999999;';  
  }
  $('#MoreOptions').click(function () {
    hide('MoreOptionsContainer');
    if ($('#MoreOptions').text() == 'More') {
      $('#MoreOptions').text('Less');
    } else {
      $('#MoreOptions').text('More');
    }
  });
  $('#offBtn').click(function () {
    heat = 'OFF';
    submitHeat($("#curOutput").text().slice(0,-1));
  });
  $('#onBtn').click(function () {
    heat = 'ON';
    submitHeat($("#curOutput").text().slice(0,-1));
  });
  $('#LowBtn').click(function () {
    heat = 'ON'
    submitHeat(25);
  });
  $('#MedBtn').click(function () {
    heat = 'ON';
    submitHeat(50);
  });
  $('#HighBtn').click(function () {
    heat = 'ON';
    submitHeat(75);
  });
  $('#btn-christmas').click(function () {
    if (canvas.style.display != 'none') {
      canvas.style.display = 'none';       
      $(this).text('Christmas on');
      setCookie('christmas', 'False');
    } else {
      canvas.style.display = 'inherit'; 
      $(this).text('Christmas off');
      setCookie('christmas', 'True');
    } 
  });
  $('#btn-sound').click(function () {
    alert('sound has not been added yet :/');
  }); 
  $('#SubmitBtn').click(function () {
    submitHeat($("#value").text().slice(0,-1));
  });
  $('#PC_button').click(function () {
    submitURL('/relayControl/pc');
    postVal("pc");
  });
  $('#T-lightsButton').click(function () {
    submitURL('/relayControl/lights_T');
    postVal("lights_T");
  });
  $('#B-lightsButton').click(function () {
    submitURL('/relayControl/lights_B');
    postVal("lights_B");
  });
  $('#fansButton').click(function () {
    submitURL('/relayControl/fans');
    postVal("fans");
  });
  $('.led-btn').click(function () {
    // postVal()
  }); 
  $('#LED_btn_rd').click(function () {
    submitURL('/relayControl/led_rd');
    LED_circle.style.backgroundColor = '#f00'
  });
  $('#LED_btn_gr').click(function () {
    submitURL('/relayControl/led_gr');
    LED_circle.style.backgroundColor = '#0f0'
  });
  $('#LED_btn_bl').click(function () {
    submitURL('/relayControl/led_bl');
    LED_circle.style.backgroundColor = '#00f'
  });
  $('#LED_btn_rb').click(function () {
    submitURL('/relayControl/led_rb');
    LED_circle.style.backgroundColor = '#f0f'
  });
  s.addEventListener("input", function () {
    UpdateCircle();
  });
  $('body').bootstrapMaterialDesign();
});