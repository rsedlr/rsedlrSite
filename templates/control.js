$(document).ready(function () {
  var curOutput = document.getElementById("curOutput");
  var curOut = $("#curOutput").text().slice(0,-1);
  var output = document.getElementById("value");
  var s = document.getElementById("myRange");
  var OnOff = document.getElementById("OnOffBtn");
  var StatOutput = document.getElementById('StatusVal');
  var r = 255, b = 255;
  output.innerHTML = s.value + '%';
  var heat = $("#StatusVal").text();
  var valueDict = {'heat': $("#StatusVal"), 'pc': $("#PC_status"), 'lights_T': $("#T-lights_status"), 'lights_B': $("#B-lights_status"), 'fans': $("#fans_status"), 'curPercent': $("#curOutput")}
  postVal('pc');
  postVal('lights_T');
  postVal('lights_B');
  postVal('fans');
  curCircle(parseInt($("#curOutput").text().slice(0,-1))) //get current stat from initial bottle page load and remove % sign then turn into int
  
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
  $('#MoreOptions').click(function () {
    hide('MoreOptionsContainer');
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
  s.addEventListener("input", function () {
    UpdateCircle();
  });
  $('body').bootstrapMaterialDesign();
});