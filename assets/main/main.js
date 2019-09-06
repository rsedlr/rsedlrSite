
$(document).ready(function () {
  var isMac = navigator.platform.toUpperCase().indexOf('MAC') >= 0;
  var mainText = document.getElementById('mainText');
  var secText = document.getElementById('secText');
  var picModal = document.getElementById('picModal');
  var modalIndicators = document.getElementById('modalIndicators');
  var modalInner = document.getElementById('modalInner');
  var contactClicked = false;
  var anim;
  
  var imgCount = {'heatDemo': 1, 'othello': 1,'wikiRace': 1, 'christmasCard': 1, 
                  'thisSite': 1, 'unity': 1, 'rcCar': 1, 'bl': 1, 
                  'plantWaterer': 1, 'pyGame': 1, 'tempImg': 1}

  if (isMac) {
    mainText.className += ' Mac-main';
    secText.className += ' Mac-sec';  
  }

  var controller = new ScrollMagic.Controller();

  var revealElements = document.getElementsByClassName("fade");
  for (var i=0; i < revealElements.length; i++) { // create a scene for each element
    new ScrollMagic.Scene({
      triggerElement: revealElements[i], // y value not modified, so we can use element as trigger as well
      offset: 0,	// start a little later
      triggerHook: 0.85,
    })
    .setClassToggle(revealElements[i], "visible") // add class toggle
    // .addIndicators() // add indicators (requires plugin)
    .addTo(controller);
  }

  $('.hover').mouseenter(function() {
    clearTimeout(anim);
    $('#main1, #main4').addClass("active");
    anim = setTimeout(function() { 
      $('#main2, #main3').addClass("active");
    }, 200);
  }).mouseleave(function() {
    clearTimeout(anim);
    $('#main2, #main3').removeClass("active");
    anim = setTimeout(function() { 
      $('#main1, #main4').removeClass("active");
    }, 200);
  });


  $('.main-pic').click(function (e) {
    e.preventDefault();
    var value = this.id.slice(0, -3);
    var count = imgCount[value];
    for (var i = 0; i < count; i++) {
      $('<li data-target="#modalSlides" data-slide-to="' + i + '"></li>').appendTo('#modalIndicators')
      $('<div class="carousel-item"><img class="d-block w-100" src="static/pic/'
        + value + '-c-' + (i + 1) + '.png"></div>').appendTo('#modalInner');
    }
    $('#modalIndicators > li').first().addClass('active');
    $('.carousel-item').first().addClass('active');
    // $('#modalSlides').carousel();  
    document.getElementById("caption").innerHTML = this.alt;
    picModal.style.display = "block";
    // document.body.classList.add('noScroll');
    // picModal.style.visibility = "visible";
  });               

  $(".img-close").click(function() {
    picModal.scrollIntoView()
    picModal.style.display = "none";
    // picModal.style.visibility = "hidden";
    document.body.classList.remove('noScroll');
    while (modalIndicators.firstChild) modalIndicators.removeChild(modalIndicators.firstChild);
    while (modalInner.firstChild) modalInner.removeChild(modalInner.firstChild);
  });   

  $("#moreProjBtn").click(function() {
    if ($("#hiddenTable:first").is(":hidden")) {
      $("#hiddenTable").slideDown(1900, "easeInOutSine");
      $(this).text('Show Less');
      // AOS.refresh();
      // setTimeout(function() { AOS.refresh(); }, 1900);
    } else {
      // document.getElementById("scrollMarker").scrollIntoView(true)  // {behavior:'smooth'}
      $('html, body').animate({ scrollTop: $('#scrollMarker').offset().top }, 1500);
      $("#hiddenTable").slideUp(1700, "easeInOutSine");
      $(this).text('Show More');
      // AOS.refresh();
      // setTimeout(function() { AOS.refresh(); }, 1700);
    }
  });    
  
  $('.github').click(function (e) {
    window.location.href = `https://github.com/rsedlr/${this.value}`;
  });   

  $("#HeatDemoBtn").click(function () {
    window.location.href = '/heatDemo';
  });   

  $("#othelloBtn").click(function () {
    window.location.href = '/othello';
  });   

  $("#wikiRaceBtn").click(function () {
    window.location.href = '/wikiRace';
  });    

  $("#christmasCardBtn").click(function() {
    window.location.href = '/christmasDemo';
  });     

  $("#pyGameBtn").click(function() {
    window.location.href = 'https://trinket.io/python/9c0a857289';
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

  $("#contactForm").submit(function(event) {
    event.preventDefault();
    submitForm();
  });            

  function submitForm(){
    var submitMsg = $("#msgSubmit");
    if (contactClicked) {
      submitMsg.text('Thanks, message submitted - If you would like to submit another message, please refresh the page');
    } else {
      submitMsg.text('sending...');
      submitMsg.css('visibility', 'visible');
      contactClicked = true;
      var name = $("#name").val();
      var email = $("#email").val();
      var message = $("#message").val();
      $.ajax({
        type: "POST",
        url: "/contact",
        data: "name=" + name + "&email=" + email + "&message=" + message,
        success: function(data) {
          submitMsg.text('Thanks, message submitted');
          submitMsg.css('visibility', 'visible');
        },
        error: function(data) {
          submitMsg.text('Error, try again');
          submitMsg.css('visibility', 'visible');
        },
      });            
    }
  }
});            