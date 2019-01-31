
$(document).ready(function () {
  const phrases = ['Reiss Edler', 'personal portfolio'];
  const divs = ['mainText', 'secText']; 
  var isMac = navigator.platform.toUpperCase().indexOf('MAC')>=0;
  var mainText = document.getElementById('mainText');
  var secText = document.getElementById('secText');
  var heatModal = document.getElementById('heatModal');
  var unityModal = document.getElementById('unityModal');
  var pyGameModal = document.getElementById('pyGameModal');
  var christmasCardModal = document.getElementById('christmasCardModal');
  var instaBotModal = document.getElementById('instaBotModal');
  var rfidDoorModal = document.getElementById('rfidDoorModal');
  var plantWatererModal = document.getElementById('plantWatererModal');
  var rcCarModal = document.getElementById('rcCarModal');
  modalBtnListeners(document.getElementsByClassName("close"), 'close');
  modalBtnListeners(document.getElementsByClassName("modal"), 'modal');
  modalBtnListeners(document.getElementsByClassName("modal-content"), 'modal-content');

  if (isMac) {
    mainText.className += ' Mac-main';
    secText.className += ' Mac-sec';  
  }

  // phoneAnims();
  // function phoneAnims() {
  //   $('#test').data('aos', "fade-up"); 
  //   console.log('done test');
  //   if ($(document).width() < 900) {
  //     $('[data-aos]').data('aos', "fade-up"); 
  //     console.log('changing aos shit');
  //   }
  // }
  // window.addEventListener("resize",function(){
  //   phoneAnims();
  // })

  var modal = document.getElementById('picModal');
  var modalImg = document.getElementById("modalImg");
  var captionText = document.getElementById("caption");
  const mainImg = ['heatDemoImg', 'unityImg', 'pyGameImg', 'christmasCardsImg', 'instaBotImg', 'RFID-img', 'plantWatererImg', 'rcCarImg']

  for (i = 0; i < mainImg.length; i++) {
    document.getElementById(mainImg[i]).onclick = function(){
      modal.style.display = "block";
      modalImg.src = this.src;
      captionText.innerHTML = this.alt;
    }
  }

  // document.getElementById('heatDemoImg').onclick = function(){
  //   modal.style.display = "block";
  //   modalImg.src = this.src;
  //   captionText.innerHTML = this.alt;
  // }

  var span = document.getElementsByClassName("img-close")[0];
  span.onclick = function() { 
    modal.style.display = "none";
  }

  $("#moreBtn").click(function() {
    if ($("#hiddenTable:first").is(":hidden")) {
      $("#hiddenTable").slideDown(2500);
      $(this).text('Show Less');
    } else {
      $("#hiddenTable").slideUp(1500);
      document.getElementById("scrollMarker").scrollIntoView({behavior: 'smooth'})
      $(this).text('Show More');
    }
  });
  $("#HeatDemoBtn").click(function() {
    window.location.href = '/heatDemo';
  });
  $("#christmasCardBtn").click(function() {
    window.location.href = '/christmas';
  });  

  $("#heatMoreBtn").click(function() {
    heatModal.style.display = "block";
  });
  $("#unityMoreBtn").click(function() {
    unityModal.style.display = "block";
  });
  $("#pyGameMoreBtn").click(function() {
    pyGameModal.style.display = "block";
  });
  $("#christmasCardMoreBtn").click(function() {
    christmasCardModal.style.display = "block";
  });
  $("#instaBotMoreBtn").click(function() {
    instaBotModal.style.display = "block";
  });
  $("#rfidDoorMoreBtn").click(function() {
    rfidDoorModal.style.display = "block";
  });
  $("#plantWatererMoreBtn").click(function() {
    plantWatererModal.style.display = "block";
  });
  $("#rcCarMoreBtn").click(function() {
    rcCarModal.style.display = "block";
  });
  $(".btn-no-scroll").click(function() {
    document.body.classList.add('noScroll');
  });

  function modalBtnListeners(bns, option) {
    for (i = 0; i < bns.length; i++) {
      bns[i].addEventListener("click", function(event) {
        if (option == 'modal') {
          this.style.display = "none";
        } else if (option == 'modal-content') {
          event.stopPropagation();
        } else if (option == 'close') {
          this.parentElement.parentElement.parentElement.style.display = "none";
        }
        document.body.classList.remove('noScroll');
      });
    }
  }

  // window.onclick = function(event) {
  //   if (event.target == modal) {
  //     modal.style.display = "none";
  //   }
  // }

  function slide(id) {
    if ($(id).is(":hidden")) {
      $(id).slideDown(2000);
    } else {
      $(id).slideUp(2000);
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
            layer += '<span class="titleSpans space"></span>';
          }else{
            layer += '<span class="titleSpans letter-'+i+'">'+letter+'</span>';
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
    const spans = Array.prototype.slice.call(document.getElementsByClassName('titleSpans'));
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