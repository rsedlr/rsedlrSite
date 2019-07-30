$(document).ready(function () {
  // var curOutput = document.getElementById("curOutput");
  // var curOut = $("#curOutput").text().slice(0,-1);
  var output = document.getElementById("value");
  var s = document.getElementById("myRange");
  // var OnOff = document.getElementById("OnOffBtn");
  // var StatOutput = document.getElementById('StatusVal');
  var canvas = document.getElementById('canvas');
  var ValCircle = document.getElementById('ValCircle');
  var r = 255, b = 255;
  output.innerHTML = s.value + '%';
  var heat = $("#StatusVal").text();
  var valueDict = {'heat': $("#StatusVal"), 
                   'pc': $("#PC_status"), 
                   'lights_T': $("#T-lights_status"), 
                   'led_D': $("#D-led_status"), 
                   'led_C': $("#C-led_status"), 
                   'fans_D': $("#fans_D_status"), 
                   'fans_T': $("#fans_T_status"), 
                   'curPercent': $("#curOutput")}
  var colours = {'red': 'rgb(255, 0, 0)', 
                 'green': 'rgb(0, 255, 0)', 
                 'blue': 'rgb(0, 0, 255', 
                 'orange': 'rgb(255, 72, 0)', 
                 'purple': 'rgb(140, 0, 255)', 
                 'rainbow': 'rgb(255, 0, 255)'};
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
    postVal('led_D');
    postVal('led_C');
    postVal('fans_D');
    postVal('fans_T');
    curCircle(parseInt($("#curOutput").text().slice(0,-1))) //get current stat from initial bottle page load and remove % sign then turn into int
  }

  // function testPostVal() {
  //   console.log(arguments);
  //   var value = arguments.join('-');
  //   var xhttp = new XMLHttpRequest();
  //   xhttp.onreadystatechange = function() {
  //     if (this.readyState == 4 && this.status == 200) {
  //       value.split('-');
  //       if ('heat' in value) {
  //         responseVal = this.responseText.split('-');
  //         valueDict['heat'].text(responseVal[0]);
  //         valueDict['curPercent'].text(responseVal[1] + "%");
  //       } else {
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
    var led_C = $("#C-led_status").text();
    var led_D = $("#D-led_status").text();
    var lights_T = $("#T-lights_status").text();
    var fans_D = $("#fans_D_status").text();
    var fans_T = $("#fans_T_status").text();
    document.getElementById('StatCircle').style.backgroundColor = (heat == 'ON') ? 'rgb(0, 255, 0)' : (heat == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('PC_button').style.backgroundColor = (pc == 'ON') ? 'rgb(0, 255, 0)' : (pc == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('C-led_button').style.backgroundColor = (led_C == 'ON') ? 'rgb(0, 255, 0)' : (led_C == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('D-led_button').style.backgroundColor = (led_D == 'ON') ? 'rgb(0, 255, 0)' : (led_D == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('T-lights_button').style.backgroundColor = (lights_T == 'ON') ? 'rgb(0, 255, 0)' : (lights_T == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('fans_D_button').style.backgroundColor = (fans_D == 'ON') ? 'rgb(0, 255, 0)' : (fans_D == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
    document.getElementById('fans_T_button').style.backgroundColor = (fans_T == 'ON') ? 'rgb(0, 255, 0)' : (fans_T == 'OFF') ? 'rgb(255, 0, 0)' : 'rgb(255, 255, 0)';
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
  
  function slide(id, duration=2000) {
    if ($(id).is(":hidden")) {
      $(id).slideDown(duration);
    } else {
      $(id).slideUp(duration);
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
    ValCircle.style.backgroundColor = 'rgb(' + r + ', 0, ' + b + ')';
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
    document.getElementById('moreCircle').style.backgroundColor = 'rgb(' + r + ', 0, ' + b + ')';
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
    document.cookie = name + '=; Max-Age=-99999999;';  
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
  $('#T-lights_button').click(function () {
    submitURL('/relayControl/lights_T');
    postVal("lights_T");
  });
  $('#D-led_button').click(function () {
    submitURL('/relayControl/led_D');
    postVal("led_D");
  });
  $('#C-led_button').click(function () {
    submitURL('/relayControl/led_C');
    postVal("led_C");
  });
  $('#fans_D_button').click(function () {
    submitURL('/relayControl/fans_D');
    postVal("fans_D");
  });
  $('#fans_T_button').click(function () {
    submitURL('/relayControl/fans_T');
    postVal("fans_T");
  });
  $('#D-led_colour').click(function () {
    $('#D_led_buttonContainer').slideToggle();
  });
  $('#C-led_colour').click(function () {
    $('#C_led_buttonContainer').slideToggle();
  });

  ['D-led_colour', 'C-led_colour'].forEach(circle => {  // loops over led colour controls
    // $('#D_led_buttonContainer','#C_led_buttonContainer').slideToggle();
    ['red', 'green', 'blue', 'orange', 'purple', 'rainbow'].forEach(colour => {  // loops over colour buttons
      $(`#led_btn_${circle[0]}_${colour}`).click(function () {
        submitURL(`/relayControl/led_${circle[0]}_${colour}`);
        document.getElementById(circle).style.backgroundColor = colours[colour];
      });
    });
  });

  // $('#led_btn_red').click(function () {
  //   submitURL('/relayControl/led_rd');
  //   D_led_Circle.style.backgroundColor = 'rgb(255, 0, 0)'
  // });
  // $('#led_btn_green').click(function () {
  //   submitURL('/relayControl/led_gr');
  //   D_led_Circle.style.backgroundColor = 'rgb(0, 255, 0)'
  // });
  // $('#led_btn_blue').click(function () {
  //   submitURL('/relayControl/led_bl');
  //   D_led_Circle.style.backgroundColor = 'rgb(0, 0, 255)'
  // });
  // $('#led_btn_orange').click(function () {
  //   submitURL('/relayControl/led_or');
  //   D_led_Circle.style.backgroundColor = 'rgb(255, 72, 0)'
  // });
  // $('#led_btn_purple').click(function () {
  //   submitURL('/relayControl/led_pr');
  //   D_led_Circle.style.backgroundColor = 'rgb(140, 0, 255)'
  // });    
  // $('#led_btn_rainbow').click(function () {
  //   submitURL('/relayControl/led_rb');
  //   D_led_Circle.style.backgroundColor = 'rgb(255, 0, 255)'
  // });


  s.addEventListener("input", function () {
    UpdateCircle();
  });
  $('body').bootstrapMaterialDesign();
});