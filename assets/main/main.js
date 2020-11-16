$(document).ready(function () {
  var isMac = navigator.platform.toUpperCase().indexOf('MAC') >= 0
  var mainText = document.getElementById('mainText')
  var secText = document.getElementById('secText')
  var picModal = document.getElementById('picModal')
  var modalIndicators = document.getElementById('modalIndicators')
  var modalInner = document.getElementById('modalInner')
  var contactClicked = false
  var anim

  var imgCount = {
    heatDemo: 1,
    othello: 2,
    wikiRace: 1,
    christmasCard: 2,
    thisSite: 1,
    unity: 1,
    rcCar: 1,
    bl: 1,
    plantWaterer: 1,
    pyGame: 1,
    tempImg: 1,
  }

  if (isMac) {
    mainText.className += ' Mac-main'
    secText.className += ' Mac-sec'
  }

  var controller = new ScrollMagic.Controller()

  var revealElements = document.getElementsByClassName('fade')
  for (var i = 0; i < revealElements.length; i++) {
    // create a scene for each element
    new ScrollMagic.Scene({
      triggerElement: revealElements[i], // y value not modified, so we can use element as trigger as well
      offset: -100, // start a little later
      triggerHook: 0.85,
    })
      .setClassToggle(revealElements[i], 'visible') // add class toggle
      // .addIndicators() // add indicators (requires plugin)
      .addTo(controller)
  }

  // $('.hover').mouseenter(function() {
  //   clearTimeout(anim);
  //   $('#main1, #main4').addClass("active");
  //   anim = setTimeout(function() {
  //     $('#main2, #main3').addClass("active");
  //   }, 200);
  // }).mouseleave(function() {
  //   clearTimeout(anim);
  //   $('#main2, #main3').removeClass("active");
  //   anim = setTimeout(function() {
  //     $('#main1, #main4').removeClass("active");
  //   }, 200);
  // });

  $('.main-pic').click(function (e) {
    e.preventDefault()
    var value = this.id.slice(0, -3)
    var count = imgCount[value]
    for (var i = 0; i < count; i++) {
      $(
        '<li data-target="#modalSlides" data-slide-to="' + i + '"></li>'
      ).appendTo('#modalIndicators')
      $(
        '<div class="carousel-item"><img class="d-block w-100" src="static/pic/' +
          value +
          '-c-' +
          (i + 1) +
          '.png"></div>'
      ).appendTo('#modalInner')
    }
    $('#modalIndicators > li').first().addClass('active')
    $('.carousel-item').first().addClass('active')
    // $('#modalSlides').carousel();
    document.getElementById('caption').innerHTML = this.alt
    picModal.style.display = 'block'
    // document.body.classList.add('noScroll');
  })

  $('.img-close').click(function () {
    // picModal.scrollIntoView()
    picModal.style.display = 'none'
    document.body.classList.remove('noScroll')
    while (modalIndicators.firstChild)
      modalIndicators.removeChild(modalIndicators.firstChild)
    while (modalInner.firstChild) modalInner.removeChild(modalInner.firstChild)
  })

  $('#moreProjBtn').click(function () {
    if ($('#hiddenTable').is(':hidden')) {
      // #hiddenTable:first
      $('#hiddenTable').slideDown(800, 'easeInSine') // 1000
      $(this).text('Show Less')
    } else {
      $('html, body').animate(
        { scrollTop: $('#scrollMarker').offset().top },
        1100
      ) // 1400
      // $('#scrollMarker')[0].scrollIntoView({
      //   behavior: 'smooth',
      // })
      $('#hiddenTable').slideUp(1100, 'easeInOutSine') // 1500
      $(this).text('Show More')
    }
  })

  $('#thisSiteBtn').click(function () {
    $('#thisSiteTooltip').show()
    setTimeout(function () {
      $('#thisSiteTooltip').hide()
    }, 2000)
  })

  $('.btn-no-scroll').click(function () {
    document.body.classList.add('noScroll')
  })

  $('.close').click(function () {
    this.parentElement.parentElement.parentElement.style.display = 'none'
    document.body.classList.remove('noScroll')
  })

  $('.modal').click(function () {
    this.style.display = 'none'
    document.body.classList.remove('noScroll')
  })

  $('.modal-content').click(function () {
    event.stopPropagation()
  })

  $('#emailCopy').click(function () {
    // this.text.select();
    var $temp = $('<input>')
    $('body').append($temp)
    $temp.val(this.text).select()
    document.execCommand('copy')
    $temp.remove()
    $('#emailTooltip').show()
    setTimeout(function () {
      $('#emailTooltip').hide()
    }, 2000)
    // this.tooltip(title="copied: " + this.text)
  })

  $('#contactForm').submit(function (event) {
    event.preventDefault()
    submitForm()
  })

  function submitForm() {
    var submitMsg = $('#msgSubmit')
    if (contactClicked) {
      submitMsg.text(
        'If you would like to submit another message, please refresh the page'
      )
    } else {
      submitMsg.text('sending...')
      submitMsg.css('visibility', 'visible')
      contactClicked = true
      var name = $('#name').val()
      var email = $('#email').val()
      var message = $('#message').val()
      $.ajax({
        type: 'POST',
        url: '/contact',
        data: 'name=' + name + '&email=' + email + '&message=' + message,
        success: function (data) {
          submitMsg.text('Thanks, message submitted')
          submitMsg.css('visibility', 'visible')
        },
        error: function (data) {
          submitMsg.text('Error, try again')
          submitMsg.css('visibility', 'visible')
        },
      })
    }
  }
})

// ! function (e) {
//   "use strict";
//   e('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
//     if (location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, "") && location.hostname == this.hostname) {
//       var a = e(this.hash);
//       if ((a = a.length ? a : e("[name=" + this.hash.slice(1) + "]")).length) return e("html, body").animate({
//         scrollTop: a.offset().top - 48
//       }, 1e3, "easeInOutExpo"), !1
//     }
//   }), e(".js-scroll-trigger").click(function () {
//     e(".navbar-collapse").collapse("hide")
//   }), e("body").scrollspy({
//     target: "#mainNav",
//     offset: 54
//   });
//   // var a = function () {
//   //   100 < e("#mainNav").offset().top ? e("#mainNav").addClass("navbar-shrink") : e("#mainNav").removeClass("navbar-shrink")
//   // };
//   a(), e(window).scroll(a)
// }(jQuery);

// update pls
