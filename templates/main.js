const text = 'Reiss Edler';
const createLetterArray = (string) => {
  return string.split('');
}

const createLetterLayers = (array) => {
  return array.map((letter) => {
      let layer = '';
      //specify # of layers per letter
      for (let i = 1; i <= 2; i++) {
        // if letter is a space
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
      document.getElementById('text').innerHTML = createLetterContainers(createLetterLayers(createLetterArray(text))).join('');
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