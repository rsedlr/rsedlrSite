
$(document).ready(function () {
  var isMac = navigator.platform.toUpperCase().indexOf('MAC') >= 0;
  var mainText = document.getElementById('mainText');
  var secText = document.getElementById('secText');
  var imgModal = document.getElementById('picModal');
  var contactClicked = false;

  if (isMac) {
    mainText.className += ' Mac-main';
    secText.className += ' Mac-sec';  
  }

  var controller = new ScrollMagic.Controller();

  // var revealElements = document.getElementsByClassName("fade");
  // for (var i=0; i<revealElements.length; i++) { // create a scene for each element
	// 	var tween = new TimelineMax()
	// 		.from(revealElements[i], 1, {opacity: 0, transform: "translateX(-300px)", ease: Sine.easeInOut})
	// 		.to(revealElements[i], 3, {opacity: 1, transform: "none", ease: Sine.easeInOut});

	// 	new ScrollMagic.Scene({
	// 						triggerElement: revealElements[i],
	// 						duration: 350, // use full viewport
  //             offset: 0, // move trigger to center of element
  //             triggerHook: 0.96  // move the trigger hook to bottom
	// 					})
	// 					.setTween(tween)
	// 					// .addIndicators() // add indicators (requires plugin)
	// 					.addTo(controller);
  // }

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
  
  $('.more-btn').click(function() {
    // document.getElementById(this.value + "Modal").style.display = "block";
    imgModal.style.display = "block";
    document.getElementById("modalImg").src = document.getElementById(this.value + "Img").src;
    document.getElementById("caption").innerHTML = this.parentElement.getElementsByClassName('header-title')[0].innerHTML;
  });
  $(".img-close").click(function() {
    $(".modal-content").hide();
    imgModal.scrollIntoView()
    imgModal.style.display = "none";
    document.body.classList.remove('noScroll');
  });
  $("#moreBtn").click(function() {
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

  $("#HeatDemoBtn").click(function() {
    window.location.href = '/heatDemo';
  });
  $("#othBtn").click(function() {
    window.location.href = '/Othello';
  }); 
  $("#wikiBtn").click(function() {
    window.location.href = '/wikiRace';
  }); 
  $("#christmasCardBtn").click(function() {
    window.location.href = '/christmasDemo';
  }); 
  $("#pyGameBtn").click(function() {
    window.location.href = 'https://github.com/rsedlr/OOP_game';
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
      submitMsg.text('Thanks, message submitted - message already sent');
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