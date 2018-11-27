
$(document).ready(function () {
  const TEXT1 = 'Reiss Edler';
  const TEXT12 = 'personal portfolio';
  
  const createLetterArray = (string) => {
    return string.split('');
  }

  // split the array into characters and generate the html
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
    document.getElementById('mainText').innerHTML = createLetterContainers(createLetterLayers(createLetterArray(TEXT1))).join('');
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
    let time = 250;
    return spans.map((span) => {
      time += 75;
      setTimeout(() => {
        span.parentElement.style.top = '0px';
      }, time);
    });
  });
});