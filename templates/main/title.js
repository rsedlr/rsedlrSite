$(document).ready(function () {
  const phrases = ['Reiss Edler', 'personal portfolio'];
  const divs = ['mainText', 'secText']; 

  function createText(delay) {
    for (var x = 0; x < phrases.length; x++) {  // split the array into characters and generate the html
      const createLetterArray = (string) => {
        return string.split('');
      }
      const createLetterLayers = (array) => {  
        return array.map((letter) => {
          let layer = '';
          for (let i = 1; i <= 2; i++) {
            if (letter == ' ') {
              layer += '<span class="titleSpans space"></span>';
            } else {
              layer += '<span class="titleSpans letter-'+i+'">'+letter+'</span>';
            }
          }
          return layer;
        });
      }
      const createLetterContainers = (array) => {
        return array.map((item) => {
          let container = '';
          container += '<div class="wrapper">' + item + '</div>';
          return container;
        });
      }
      const outputLayers = new Promise(function(resolve, reject) {
        document.getElementById(divs[x]).innerHTML = createLetterContainers(createLetterLayers(createLetterArray(phrases[x]))).join('');
        resolve();
      });
      const spans = Array.prototype.slice.call(document.getElementsByClassName('titleSpans'));
      outputLayers.then(() => {
        return spans.map((span) => {
          setTimeout(() => {
            span.parentElement.style.width = span.offsetWidth + 'px';
            span.parentElement.style.height = span.offsetHeight + 'px';
          }, 250);
        });  
      }).then(() => {
        let time = delay;  //250
        return spans.map((span) => {
          time += 75;
          setTimeout(() => {
            span.parentElement.style.top = '0px';
          }, time);
        });
      });
    }
  }

  function hideTitle() {    
    if ($(document).width() > 998) {
      if ($('#titleDiv').css('display') == 'none') {
        $('#titleDiv').css("display", "block");
        createText(100);
      }
    } else {
      $('#titleDiv').css("display", "none");
    }
    if ($(document).width() < 768) {
      $('#backupTitleContainer').css("max-width", "450px");
      $('.p-5').attr("style", "padding: 2rem 1rem !important");
    } else {
      $('#backupTitleContainer').css("max-width", "none");
      $('.sectionTitle').attr("style", "font-size: 5rem");
    }
    if ($(document).width() < 768 && $(document).width() > 500) {
      $('.sectionTitle').attr("style", "font-size: 4.2rem");
    } else if ($(document).width() < 500) {
      $('.sectionTitle').attr("style", "font-size: 3.3rem");
    } else {
      $('.p-5').attr("style", "padding: 3rem !important");
    }
  }

  window.addEventListener('resize', hideTitle);
  hideTitle();
  createText(700);
});
