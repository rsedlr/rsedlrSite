<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- <meta name="description" content="">
  <meta name="author" content=""> -->
  <title>RsEdlr</title>
  <!-- <link rel="icon" href="/static/favicon.ico" type="image/x-icon"> -->
  <!-- <link rel="icon" type="image/png" sizes="32x32" href="/static/icon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/static/icon/favicon-16x16.png"> -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css">
  <!-- <script src="/static/main.js"></script> -->
  % import os ; mainJS = os.path.getsize("templates/main.js") ; mainCSS = os.path.getsize("templates/main.css")
  <script type='text/javascript' src='/static/main.js?filever={{mainJS}}'></script>  
  <link rel="stylesheet" type="text/css" href="/static/main.css?filever={{mainCSS}}">
</head>
<body id="page-top">
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger bolder" href="#page-top" style="font-size: 22px">Home</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu</button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger bolder mainNav" href="#about">about</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger bolder mainNav" href="#experience">experience</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger bolder mainNav" href="#contact">contact</a>
          </li>
          <!-- temporary until main page is sorted -->
          <!-- <li class="nav-item">
            <a class="nav-link js-scroll-trigger bolder mainNav" href="/heatDemo">HeatingDemo</a>
          </li> -->
        </ul>
      </div>
    </div>
  </nav>

  <div id="heatModal" class="modal"> 
    <div class="modal-content">
      <div class="modal-header" style="">
        <span class="close">&times;</span>
        <h2>Remote Heating Control</h2>
      </div>
      <div class="modal-body">
        <br><br><br>
        <p>content</p>
        <br><br><br>
      </div>
      <div class="modal-footer">
        <h3 style="margin-right: auto;">Time taken: lots</h3>
      </div>
    </div>
  </div>
  <div id="unityModal" class="modal"> 
    <div class="modal-content">
      <div class="modal-header" style="">
        <span class="close">&times;</span>
        <h2>Android and IOS Games</h2>
      </div>
      <div class="modal-body">
        <br><br><br>
        <p>content</p>
        <br><br><br>
      </div>
      <div class="modal-footer">
        <h3 style="margin-right: auto;">Time taken: lots</h3>
      </div>
    </div>
  </div>
  <div id="pyGameModal" class="modal"> 
    <div class="modal-content">
      <div class="modal-header" style="">
        <span class="close">&times;</span>
        <h2>Text based python game</h2>
      </div>
      <div class="modal-body">
        <br><br><br>
        <p>content</p>
        <br><br><br>
      </div>
      <div class="modal-footer">
        <h3 style="margin-right: auto;">Time taken: lots</h3>
      </div>
    </div>
  </div>
  <div id="christmasCardModal" class="modal"> 
    <div class="modal-content">
      <div class="modal-header" style="">
        <span class="close">&times;</span>
        <h2>Virtual Christmas Cards</h2>
      </div>
      <div class="modal-body">
        <br><br><br>
        <p>content</p>
        <br><br><br>
      </div>
      <div class="modal-footer">
        <h3 style="margin-right: auto;">Time taken: lots</h3>
      </div>
    </div>
  </div>
  <div id="instaBotModal" class="modal"> 
    <div class="modal-content">
      <div class="modal-header" style="">
        <span class="close">&times;</span>
        <h2>Instagram Bot</h2>
      </div>
      <div class="modal-body">
        <br><br><br>
        <p>content</p>
        <br><br><br>
      </div>
      <div class="modal-footer">
        <h3 style="margin-right: auto;">Time taken: lots</h3>
      </div>
    </div>
  </div>
  <div id="rfidDoorModal" class="modal"> 
    <div class="modal-content">
      <div class="modal-header" style="">
        <span class="close">&times;</span>
        <h2>RFID door lock</h2>
      </div>
      <div class="modal-body">
        <br><br><br>
        <p>content</p>
        <br><br><br>
      </div>
      <div class="modal-footer">
        <h3 style="margin-right: auto;">Time taken: lots</h3>
      </div>
    </div>
  </div>
  <div id="plantWatererModal" class="modal"> 
    <div class="modal-content">
      <div class="modal-header" style="">
        <span class="close">&times;</span>
        <h2>Automated Plant Waterer</h2>
      </div>
      <div class="modal-body">
        <br><br><br>
        <p>content</p>
        <br><br><br>
      </div>
      <div class="modal-footer">
        <h3 style="margin-right: auto;">Time taken: lots</h3>
      </div>
    </div>
  </div>
  <div id="rcCarModal" class="modal"> 
    <div class="modal-content">
      <div class="modal-header" style="">
        <span class="close">&times;</span>
        <h2>Autonomous RC car</h2>
      </div>
      <div class="modal-body">
        <br><br><br>
        <p>content</p>
        <br><br><br>
      </div>
      <div class="modal-footer">
        <h3 style="margin-right: auto;">Time taken: lots</h3>
      </div>
    </div>
  </div>

  <header class="masthead">
    <div class="container h-100">
      <div class="row h-100">
        <div class="col-md-9 col-sm-12" style="margin: auto auto 0 0;">
          <div class="hideSmall" style="margin-bottom: 200px">
            <div class="header-content" id="mainText" ><!-- text added through js --></div>
            <div class="header-content" id="secText" ><!-- text added through js --></div>
          </div>
          <div class="showSmall my-auto" style="text-align: center;">
            <h1 style="font-size: 6.1rem; font-weight: 800; padding-left: 5px; color: white">Reiss Edler</h1>
            <h2 style="font-size: 4rem; font-weight: 400; padding-left: 8px; color: white">personal portfolio</h2>
          </div>
          <p style="color: white; margin-top: -50px;">(currently in development)</p>
          <!-- <a href="#contact" class="btn btn-outline btn-xl js-scroll-trigger">move</a> -->
        </div>
        <div class="col-lg-12" style="margin-top: auto; margin-bottom: 20px;">
          <div class="round rot90" style="margin: auto auto 0px">
            <a href="#about" class="js-scroll-trigger">
              <div id="cta">
                <span class="arrow primera next"></span>
                <span class="arrow segunda next"></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </header>
  <section class="bg-primary text-center mainSection" id="about">
    <div class="container" style="margin-top: 50px">
      <div class="row">
        <div class="col-md-10 mx-auto" style="text-align: left !important;">
          <div data-aos="fade-up">
            <h1 class="mainHead">Hi,<br></h1>
            <!-- <div style="height: 100px; width: 300px; display: inline-block; border-bottom: 4px solid transparent;"></div> -->
          </div>
          <!-- <h5 style="display: block; margin: 5px 6px;">(blanks yet to be decided)</h5> -->
          <div data-aos="fade-up" data-aos-offset="250" data-aos-delay="400"> 
            <h2>I'm a computer science student,<br>based in London</h2>
          </div>
          <!-- <br><br><br>
          <p>and some more witty comments i suppose</p>
          <br><br><br> -->
        </div>
      </div>
    </div>
  </section>
  <section class="bg-secondary text-center mainSection" id="experience">
    <div class="container">
      <div class="row">
        <div data-aos="fade-up" class="col-md-10 mx-auto">
          <h1 style="font-size: 60px;"><u>Projects</u></h1>
        </div>
      </div>
      <div class="container"> <!-- start -->
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div data-aos="fade-up-right" class="p-5" id="test">
              <img class="img-fluid round-corners" src="static/pic/norton.png" alt="">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div data-aos="fade-up-left" class="p-5">
              <h2 class="display-4 header-title">Remote Heating Control</h2>
              <p>Run on a raspberry pi (connected to an ardino for motor control) the site allows for control of my heating from anywhere. </p>
              <button class="btn btn-more" id="heatMoreBtn" type="button">More</button>
            </div>
          </div>
        </div>
      </div>
      <div class="container">  <!-- start -->
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div data-aos="fade-up-left" class="p-5">
              <img class="img-fluid round-corners" src="static/pic/norton.png" alt="">
            </div>
          </div>
          <div class="col-lg-6">
            <div data-aos="fade-up-right" class="p-5">
              <h2 class="display-4 header-title">Android and IOS Games</h2>
              <p>Initially, i developed a few phone games on the Unity engine. They havent yet been released but a demo video will be availabled soon</p>
              <button class="btn btn-more" id="unityMoreBtn" type="button" style="margin-right: 10px">More</button>
              <button class="btn btn-more" id="christmasCardBtn" type="button">Example</button>
            </div>
          </div>
        </div>
      </div>
      <div class="container">  <!-- start -->
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div data-aos="fade-up-right" class="p-5">
              <img class="img-fluid round-corners" src="static/pic/norton.png" alt="">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div data-aos="fade-up-left" class="p-5">
              <h2 class="display-4 header-title">Text based python game</h2>
              <p>A short Lord Of The Rings themed OOP python game made by me and a friend</p>
              <button class="btn btn-more" id="pyGameMoreBtn" type="button">More</button>
            </div>
          </div>
        </div>
      </div>
      <div id="scrollMarker" style="visibility: hidden;"></div>
      <div id="hiddenTable" class="dis-none">  <!-- heloooooo -->
        <div class="container">  <!-- start -->
          <div class="row align-items-center">
            <div data-aos="fade-up-left" class="col-lg-6">
              <div class="p-5">
                <img class="img-fluid round-corners" src="static/pic/norton.png" alt="">
              </div>
            </div>
            <div class="col-lg-6">
              <div data-aos="fade-up-right" class="p-5">
                <h2 class="display-4 header-title">Virtual Christmas Cards</h2>
                <p>Rather than write lots of cards by hand, simply add the recipients name to the end of the url and click send, if you particularly like said person a personal message can be added.</p>
                <button class="btn btn-more" id="christmasCardMoreBtn" type="button" style="margin-right: 10px">More</button>                
                <button class="btn btn-more" id="christmasCardBtn" type="button">Example</button>
              </div>
            </div>
          </div>
        </div>
        <div class="container">  <!-- start -->
          <div class="row align-items-center">
            <div class="col-lg-6 order-lg-2">
              <div data-aos="fade-up-right" class="p-5">
                <img class="img-fluid round-corners" src="static/pic/norton.png" alt="">
              </div>
            </div>
            <div class="col-lg-6 order-lg-1">
              <div data-aos="fade-up-left" class="p-5">
                <h2 class="display-4 header-title">Instagram Bot</h2>
                <p>Adapted version of Tim Grossmann's InstaPy to like my friends posts without me having to spend too long on social media</p>
                <button class="btn btn-more" id="instaBotMoreBtn" type="button">More</button>
              </div>
            </div>
          </div>
        </div>
        <div class="container">  <!-- start -->
          <div class="row align-items-center">
            <div class="col-lg-6">
              <div data-aos="fade-up-left" class="p-5">
                <img class="img-fluid round-corners" src="static/pic/norton.png" alt="">
              </div>
            </div>
            <div class="col-lg-6">
              <div data-aos="fade-up-right" class="p-5">
                <h2 class="display-4 header-title">RFID door lock</h2>
                <p>i always thought contactless cards were cool, so i made one secure my room from... urm... invasion?</p>
                <button class="btn btn-more" id="rfidDoorMoreBtn" type="button">More</button>
              </div>
            </div>
          </div>
        </div>
        <div class="container">  <!-- start -->
          <div class="row align-items-center">
            <div class="col-lg-6 order-lg-2">
              <div data-aos="fade-up-right" class="p-5">
                <img class="img-fluid round-corners" src="static/pic/norton.png" alt="">
              </div>
            </div>
            <div class="col-lg-6 order-lg-1">
              <div data-aos="fade-up-left" class="p-5">
                <h2 class="display-4 header-title">Automated Plant Waterer</h2>
                <p>I wasnt always around to water my plant, why not have an arduino do it for me.</p>
                <button class="btn btn-more" id="plantWatererMoreBtn" type="button">More</button>
              </div>
            </div>
          </div>
        </div>
        <div class="container">  <!-- start -->
          <div class="row align-items-center">
            <div class="col-lg-6">
              <div data-aos="fade-up-left" class="p-5">
                <img class="img-fluid round-corners" src="static/pic/norton.png" alt="">
              </div>
            </div>
            <div class="col-lg-6">
              <div data-aos="fade-up-right" class="p-5">
                <h2 class="display-4 header-title">Autonomous RC car</h2>
                <p>I heard google was making one so i thought i should have a go too.</p>
                <button class="btn btn-more" id="rcCarMoreBtn" type="button">More</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <button class="btn btn-more" id="moreBtn" type="button" style="margin-top: 20px">Show More</button>
    </div>
  </section>
  <section class="bg-third text-center mainSection" id="contact">
    <div class="container">
      <div class="row">
        <div class="col-md-10 mx-auto">
          <h1>call me :p</h1>
          <br><br><br>
          <p>  </p>
        </div>
      </div>
    </div>
</section>
  <footer>
    <div class="container">
      <p>&copy; Reiss Edler 2018</p>
    </div>
  </footer>
  <script src="/static/mainPage/jquery.min.js"></script>
  <script src="/static/mainPage/bootstrap.bundle.min.js"></script>
  <script src="/static/mainPage/jquery.easing.min.js"></script>
  <script src="/static/mainPage/main.min.js"></script>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init({
      disable: 'mobile', // accepts following values: 'phone', 'tablet', 'mobile', boolean, expression or function
      startEvent: 'DOMContentLoaded', // name of the event dispatched on the document, that AOS should initialize on
      initClassName: 'aos-init', // class applied after initialization
      animatedClassName: 'aos-animate', // class applied on animation
      useClassNames: false, // if true, will add content of `data-aos` as classes on scroll
      disableMutationObserver: false, // disables automatic mutations' detections (advanced)
      debounceDelay: 50, // the delay on debounce used while resizing window (advanced)
      throttleDelay: 99, // the delay on throttle used while scrolling the page (advanced)
      offset: 200, // offset (in px) from the original trigger point
      delay: 0, // values from 0 to 3000, with step 50ms
      duration: 400, // values from 0 to 3000, with step 50ms
      easing: 'ease', // default easing for AOS animations
      once: false, // whether animation should happen only once - while scrolling down
      mirror: false, // whether elements should animate out while scrolling past them
      anchorPlacement: 'top-bottom', // defines which position of the element regarding to window should trigger the animation
    });
  </script>
</body>
</html>
