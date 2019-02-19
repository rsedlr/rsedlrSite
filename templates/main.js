
$(document).ready(function () {
  const phrases = ['Reiss Edler', 'personal portfolio'];
  const divs = ['mainText', 'secText']; 
  var isMac = navigator.platform.toUpperCase().indexOf('MAC')>=0;
  var mainText = document.getElementById('mainText');
  var secText = document.getElementById('secText');
  var imgModal = document.getElementById('picModal');

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

  // $('.main-pic').click(function() {
  //   imgModal.style.display = "block";
  //   document.getElementById("modalImg").src = this.src;
  //   // document.getElementById("caption").innerHTML = this.alt;
  // });

  $('.more-btn').click(function() {
    document.getElementById(this.value + "Modal").style.display = "block";
    imgModal.style.display = "block";
    console.log(this.value+"Img");
    document.getElementById("modalImg").src = document.getElementById(this.value + "Img").src;
  });

  $("#moreBtn").click(function() {
    if ($("#hiddenTable:first").is(":hidden")) {
      $("#hiddenTable").slideDown(3500);
      $(this).text('Show Less');
    } else {
      $("#hiddenTable").slideUp(2000);
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
  $("#pyGameBtn").click(function() {
    window.location.href = 'https://github.com/MegaHertz3/OOP_game';
  });
  $(".btn-no-scroll").click(function() {
    document.body.classList.add('noScroll');
  });
  $(".close").click(function() {
    this.parentElement.parentElement.parentElement.style.display = "none";
    document.body.classList.remove('noScroll');
  });
  $(".modal").click(function() {
    this.style.display = "none";
    document.body.classList.remove('noScroll');
  });
  $(".modal-content").click(function() {
    event.stopPropagation();
  });
  $(".img-close").click(function() {
    imgModal.style.display = "none";
    document.body.classList.remove('noScroll');
    $(".modal-content").hide();
  });

  $("#contactForm").submit(function(event){
    event.preventDefault();
    submitForm();
});

function submitForm(){
  var name = $("#name").val();
  var email = $("#email").val();
  var message = $("#message").val();
  $.ajax({
    type: "POST",
    url: "/contact",
    data: "name=" + name + "&email=" + email + "&message=" + message,
    success: function(data) {
      $("#msgSubmit").text('Thanks, message submitted');
      $("#msgSubmit").show();
    },
    error: function(data) {
      $("#msgSubmit").text('Error, try again');
      $("#msgSubmit").show();
    },
  });
}


  // window.onclick = function(event) {
  //   if (event.target == modal) {
  //     modal.style.display = "none";
  //   }
  // }

  function slide(id, duration=2000) {
    if ($(id).is(":hidden")) {
      $(id).slideDown(duration);
    } else {
      $(id).slideUp(duration);
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