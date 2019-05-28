
$(document).ready(function () {
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
    // console.log(this.value+"Img");
    document.getElementById("modalImg").src = document.getElementById(this.value + "Img").src;
  });
  $(".img-close").click(function() {
    $(".modal-content").hide();
    imgModal.scrollIntoView()
    imgModal.style.display = "none";
    document.body.classList.remove('noScroll');
  });
  $("#moreBtn").click(function() {
    if ($("#hiddenTable:first").is(":hidden")) {
      var delay = 1900;
      $("#hiddenTable").slideDown(delay, "easeInOutSine");
      $(this).text('Show Less');
      AOS.refresh();
      setTimeout(function() { AOS.refresh(); }, delay);
    } else {
      document.getElementById("scrollMarker").scrollIntoView(true)  // {behavior:'smooth'}
      $("#hiddenTable").slideUp(delay-200, "easeInOutSine");
      $(this).text('Show More');
      AOS.refresh();
      setTimeout(function() { AOS.refresh(); }, delay-200);
    }
  });

  $("#HeatDemoBtn").click(function() {
    window.location.href = '/heatDemo';
  });
  $("#othBtn").click(function() {
    window.location.href = '/ComputingProject/';
  }); 
  $("#christmasCardBtn").click(function() {
    window.location.href = '/christmasDemo';
  }); 
  $("#pyGameBtn").click(function() {
    window.location.href = 'https://github.com/MegaHertz3/OOP_game';
  });
  $("#thisSiteBtn").click(function() {
    $('#thisSiteTooltip').show()
    setTimeout(function() { $('#thisSiteTooltip').hide() }, 2000);
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
  $("#emailCopy").click(function() {
    // this.text.select();
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val(this.text).select();
    document.execCommand("copy");
    $temp.remove();
    $('#emailTooltip').show()
    setTimeout(function() { $('#emailTooltip').hide() }, 2000);
    // this.tooltip(title="copied: " + this.text)
  });

  $("#contactForm").submit(function(event){
    event.preventDefault();
    submitForm();
  });

  function submitForm(){
    $("#msgSubmit").text('sending...');
    $("#msgSubmit").css('visibility', 'visible');
    var name = $("#name").val();
    var email = $("#email").val();
    var message = $("#message").val();
    $.ajax({
      type: "POST",
      url: "/contact",
      data: "name=" + name + "&email=" + email + "&message=" + message,
      success: function(data) {
        $("#msgSubmit").text('Thanks, message submitted');
        $("#msgSubmit").css('visibility', 'visible');
      },
      error: function(data) {
        $("#msgSubmit").text('Error, try again');
        $("#msgSubmit").css('visibility', 'visible');
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
});