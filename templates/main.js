
$(document).ready(function () {
  const phrases = ['Reiss Edler', 'personal portfolio'];
  const divs = ['mainText', 'secText']; 
  
  for (var x = 0; x < phrases.length; x++) {
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
      let time = 1000;  //250
      return spans.map((span) => {
        time += 75;
        setTimeout(() => {
          span.parentElement.style.top = '0px';
        }, time);
      });
    });
  }
  fitText(document.querySelector(".fitText"), 2);
  // window.fitText( document.getElementById(".fitText"), 1.2 ); 
});