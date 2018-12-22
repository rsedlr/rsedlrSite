
$(document).ready(function () {
  const phrases = ['Reiss Edler', 'personal portfolio'];
  const divs = ['mainText', 'secText']; 
  var isMac = navigator.platform.toUpperCase().indexOf('MAC')>=0;
  var mainText = document.getElementById('mainText');
  var secText = document.getElementById('secText');
  if (isMac) {
    mainText.className += ' Mac-main';
    secText.className += ' Mac-sec';  
  }

  $( "#moreBtn" ).click(function() {
    if ($( "#hiddenTable:first").is(":hidden") ) {
      $("#hiddenTable").slideDown(3000);
    } else {
      $("#hiddenTable").slideUp(3000);
    }
    // $( "#hiddenTable" ).slideDown("slow");
    // $("#hiddenTable").toggleClass('vis');
  });
  $( "#HeatDemoBtn" ).click(function() {
    window.location.href = '/heatDemo';
  });
  
  function hide(id) {
    var e = document.getElementById(id);
    if (e.style.display == 'block') {
      e.style.display = 'none';  // or visibility: 'hidden'
    } else {
      e.style.display = 'block';  // or visibility: 'visible'
    }
  }
  for (var x = 0; x < phrases.length; x++) {  // split the array into characters and generate the html
    const createLetterArray = (string) => {
      return string.split('');
    }
    const createLetterLayers = (array) => {  
      return array.map((letter) => {
        let layer = '';
        for (let i = 1; i <= 2; i++) {
          if(letter == ' '){
            layer += '<span class="space"></span>';
          }else{
            layer += '<span class="letter-'+i+'">'+letter+'</span>';
          }
        }
        return layer;
      });
    }
    const createLetterContainers = (array) => {
      return array.map((item) => {
        let container = '';
        container += '<div class="wrapper">'+item+'</div>';
        return container;
      });
    }
    const outputLayers = new Promise(function(resolve, reject) {
      document.getElementById(divs[x]).innerHTML = createLetterContainers(createLetterLayers(createLetterArray(phrases[x]))).join('');
      resolve();
    });
    const spans = Array.prototype.slice.call(document.getElementsByTagName('span'));
    outputLayers.then(() => {
      return spans.map((span) => {
        setTimeout(() => {
          span.parentElement.style.width = span.offsetWidth+'px';
          span.parentElement.style.height = span.offsetHeight+'px';
        }, 250);
      });  
    }).then(() => {
      let time = 1200;  //250
      return spans.map((span) => {
        time += 75;
        setTimeout(() => {
          span.parentElement.style.top = '0px';
        }, time);
      });
    });
  }
});