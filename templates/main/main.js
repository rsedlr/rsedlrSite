
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
    console.log(this.value+"Img");
    document.getElementById("modalImg").src = document.getElementById(this.value + "Img").src;
  });

  $("#moreBtn").click(function() {
    if ($("#hiddenTable:first").is(":hidden")) {
      $("#hiddenTable").slideDown(1900, "easeInOutSine");
      $(this).text('Show Less');
      AOS.refresh();
      setTimeout(function() { AOS.refresh(); }, 1900);
    } else {
      document.getElementById("scrollMarker").scrollIntoView({behavior:'smooth'})
      $("#hiddenTable").slideUp(1700, "easeInOutSine");
      $(this).text('Show More');
      AOS.refresh();
      setTimeout(function() { AOS.refresh(); }, 1700);
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
  $(".img-close").click(function() {
    imgModal.style.display = "none";
    document.body.classList.remove('noScroll');
    $(".modal-content").hide();
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
});