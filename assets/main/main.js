$(document).ready(function () {
   var isMac = navigator.platform.toUpperCase().indexOf('MAC') >= 0;
   var mainText = document.getElementById('mainText');
   var secText = document.getElementById('secText');
   var picModal = document.getElementById('picModal');
   var modalIndicators = document.getElementById('modalIndicators');
   var modalInner = document.getElementById('modalInner');

   var imgCount = {
      chorinator: 1,
      heatDemo: 1,
      othello: 2,
      wikiRace: 1,
      christmasCard: 2,
      carAI: 1,
      thisSite: 1,
      rcCar: 1,
      plantWaterer: 1,
   };

   if (isMac) {
      mainText.className += ' Mac-main';
      secText.className += ' Mac-sec';
   }

   var controller = new ScrollMagic.Controller();

   var revealElements = document.getElementsByClassName('fade');
   for (var i = 0; i < revealElements.length; i++) {
      // create a scene for each element
      new ScrollMagic.Scene({
         triggerElement: revealElements[i], // y value not modified, so we can use element as trigger as well
         offset: -100, // start a little later
         triggerHook: 0.85,
      })
         .setClassToggle(revealElements[i], 'visible') // add class toggle
         // .addIndicators() // add indicators (requires plugin)
         .addTo(controller);
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
      e.preventDefault();
      var value = this.getElementsByTagName('img')[0].id.slice(0, -3);
      var count = imgCount[value];

      if (value == 'chorinator') {
         $(
            '<video class="img-fluid" controls autoplay loop muted preload="auto" poster="/static/pic/chorinator-c-1.webp"><source src="/static/pic/Reiss-Edler-Web-Dev-Coursework2.mov" type="video/mp4" /></video>'
         ).appendTo('#modalInner');
         $('#modalSlides > a').hide();
         document.querySelector('video').playbackRate = 1.5;
      } else {
         for (var i = 0; i < count; i++) {
            if (count > 1) {
               $(
                  '<li data-target="#modalSlides" data-slide-to="' + i + '"></li>'
               ).appendTo('#modalIndicators');
            }
            $(
               '<div class="carousel-item"><img class="d-block w-100" src="static/pic/' +
                  value +
                  '-c-' +
                  (i + 1) +
                  '.webp"></div>'
            ).appendTo('#modalInner');
         }
         if (count > 1) {
            $('#modalSlides > a').show();
         } else {
            $('#modalSlides > a').hide();
         }
      }
      $('#modalIndicators > li').first().addClass('active');
      $('.carousel-item').first().addClass('active');

      document.getElementById('caption').innerHTML =
         this.getElementsByTagName('img')[0].alt;
      picModal.style.display = 'block';
      document.documentElement.classList.add('noScroll');
      // $('html').addClass('noScroll');
   });

   $('.img-close').click(function () {
      picModal.style.display = 'none';
      document.documentElement.classList.remove('noScroll');
      while (modalIndicators.firstChild)
         modalIndicators.removeChild(modalIndicators.firstChild);
      while (modalInner.firstChild) modalInner.removeChild(modalInner.firstChild);
   });

   $('#moreProjBtn').click(function () {
      if ($('#hiddenTable').is(':hidden')) {
         $('#hiddenTable').slideDown(800, 'easeInSine'); // 1000
         $(this).text('Show Less');
      } else {
         // $('html, body').animate({ scrollTop: $('#scrollMarker').offset().top + 150 }, 900) // 1100
         $('html, body').animate(
            { scrollTop: $('#scrollMarker').offset().top - ($(window).height() * 2) / 3 },
            900
         ); // 1100
         // alternative method:
         // var offset = $('#scrollMarker').offset()
         // $('html, body').animate(
         //   { scrollTop: offset.top, scrollLeft: offset.left },
         //   1000
         // )
         $('#hiddenTable').slideUp(1100, 'easeInOutSine'); // 1500
         $(this).text('Show More');
      }
   });

   $('#thisSiteBtn').click(function () {
      $('#thisSiteTooltip').show();
      setTimeout(function () {
         $('#thisSiteTooltip').hide();
      }, 2000);
   });

   // $('.btn-no-scroll').click(function () {
   //    document.body.classList.add('noScroll');
   // });

   $('.close').click(function () {
      this.parentElement.parentElement.parentElement.style.display = 'none';
      document.documentElement.classList.remove('noScroll');
   });

   $('.modal').click(function () {
      this.style.display = 'none';
      document.documentElement.classList.remove('noScroll');
   });

   $('.modal-content').click(function () {
      event.stopPropagation();
   });

   $('#emailCopy').click(function () {
      // var e = $('<input>');
      // $('body').append(e);
      // e.val('reissedler@gmail.com').select();
      // document.execCommand('copy');
      // e.remove();
      navigator.clipboard.writeText('reissedler@gmail.com');
      $('#emailTooltip').show();
      setTimeout(function () {
         $('#emailTooltip').hide();
      }, 2e3);
   });

   //   $('#contactForm').submit(function (event) {
   //     event.preventDefault()
   //     submitForm()
   //   })
   //
   //   function submitForm() {
   //     var submitMsg = $('#msgSubmit')
   //     if (contactClicked) {
   //       submitMsg.text(
   //         'If you would like to submit another message, please refresh the page'
   //       )
   //     } else {
   //       submitMsg.text('sending...')
   //       submitMsg.css('visibility', 'visible')
   //       contactClicked = true
   //       var name = $('#name').val()
   //       var email = $('#email').val()
   //       var message = $('#message').val()
   //       $.ajax({
   //         type: 'POST',
   //         url: '/contact',
   //         data: 'name=' + name + '&email=' + email + '&message=' + message,
   //         success: function (data) {
   //           submitMsg.text('Thanks, message submitted')
   //           submitMsg.css('visibility', 'visible')
   //         },
   //         error: function (data) {
   //           submitMsg.text('Error, try again')
   //           submitMsg.css('visibility', 'visible')
   //         },
   //       })
   //     }
   //   }
});

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
