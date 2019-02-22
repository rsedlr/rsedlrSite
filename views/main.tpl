<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <meta name="description" content=""> -->
    <meta name="author" content="Reiss Edler - rsedlr@protonmail.com">
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

    <div id="picModal" class="img-modal" style="height: 100%;">
      <span class="img-close">&times;</span>
      <img class="img-modal-content" id="modalImg">
      <!-- <div id="caption"></div> -->
      <div class="modal-content" id="heatModal">
        <div class="modal-header">
          <!-- <span class="close">&times;</span> -->
          <h2>Remote Heating Control</h2>
        </div>
        <div class="modal-body">
          <p>
            Around the time i started this project, hive heating systems were first being advertised (for quite a price may i add) so i wondered if the same functionality could be achieved for a lot less. <br>
            The site is hosted on one of my Raspberry Pi 3's located above my boiler. When a functional button is pressed a signal is sent asynchronously (meaning in the background, without a page refresh) to the server, which then does what is required to fulfil the task. Sometimes this is as simple as toggling a GPIO pin which is connected to a relay, thus turning whatever the relay is wired to on (like the main heating button). Other times it could be more complicated than this, such as sending a command to another raspberry Pi located in another room (or even another house) which then in turn carries out its own procedure to complete the task.<br>
            In its current state, my home control system allows control of:<br>
            -My heating (along with temperature control through an arduino which controls a stepper motor connected to a heating knob)<br>
            -My mothers heating (located elsewhere so my Pi has to send commands over an SSH connection)<br>
            -The lights in my room (also connected to another Pi so commands have to be sent through SSH again)<br>
            -A set of addressable LEDs around my monitors in my room (can be turned on, off and have the colour changed also. The colour is changed through sending commands across a USB serial connection)<br>
            -My desktop PC can be turned on or off (through a relay connected the header of its motherboard which toggles for 1 second, recreating a button press)<br>
            -Some spare PC fans i had after building my PC which are now suspended above my monitors to keep me cool in the summer
          </p>
        </div>
      </div>
      <div class="modal-content" id="unityModal">
        <div class="modal-header">
          <h2>Android and IOS Games</h2>
        </div>
        <div class="modal-body">
          <br>
          <p>blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</p>
          <br><br><br>
          <p>blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</p>
          <br><br>
          <p>blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</p>
          <br><br>
          <p>blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</p>
          <br><br><br>
          <p>blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</p>
          <br><br><br>
          <p>blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</p>
          <br><br><br>
          <p>blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</p>
          <br><br><br>
          <p>blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah</p>
        </div>
      </div>
      <div class="modal-content" id="pyGameModal">
          <div class="modal-header">
            <h2>Text Based Python Game</h2>
          </div>
          <div class="modal-body">
              To grasp Object Oriented Programming concepts more thoroughly, we decided to make a short text based game in python; after all the best way to learn in programming is by doing.<br>
              In all honesty, the hardest part about making the game was coming up with names for characters and what they should say, particularly when doing it on something with such a massive fanbase of devoted enthusiasts like the lord of the rings.<br>
              As it was a text based game, we had to come up with a less conventional movement and interaction system compared to modern 3D visual games that we see commonly today. <br>
              Another problem we faced was difficulty, the player is not required to skillfully maneuver a car around a racetrack or shoot a baddie in the face from afar as its a text game; so how do we stop it from becoming boring due to a lack of challenge? <br>
              Our solution was to not reveal excessive information, to keep the player thinking, and to make it perma-death with one wrong move instantly causing the end for your character and a fresh start required, so that there is still a buzz about getting through a section.<br>     
          </div>
        </div>
        <div class="modal-content" id="christmasCardModal">
        <div class="modal-header">
          <h2>Virtual Christmas Cards</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
        </div>
      </div>
      <div class="modal-content" id="instaBotModal">
        <div class="modal-header">
          <h2>Instagram Bot</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
        </div>
      </div>
      <div class="modal-content" id="rfidDoorModal"> 
        <div class="modal-header">
          <h2>RFID Door Lock</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
        </div>
      </div>
      <div class="modal-content" id="plantWatererModal">
        <div class="modal-header">
          <h2>Automated Plant Waterer</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
        </div>
      </div>
      <div class="modal-content" id="rcCarModal" >
        <div class="modal-header">
          <h2>Autonomous RC Car</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
        </div>
      </div>
      <div class="modal-content" id="raspiModal">
        <div class="modal-header">
          <h2>Raspberry Pi Obsession</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
        </div>
      </div>
      <div class="modal-content" id="networkModal">
        <div class="modal-header">
          <h2>Basic Networking</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
        </div>
      </div>
      <div class="modal-content" id="blModal">
        <div class="modal-header">
          <h2>Building Status Report System</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
        </div>
      </div>
      <div class="modal-content" id="linuxModal">
        <div class="modal-header">
          <h2>Linux Interest</h2>
        </div>
        <div class="modal-body">
          <br><br><br>
          <p>content</p>
          <br><br><br>
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
              <h2 style="font-size: 4rem; font-weight: 400; padding-left: 8px; padding-right: 20px; color: white">personal portfolio</h2>
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
              <h1 class="mainHead">Hi,</h1>
              <!-- <div style="height: 100px; width: 300px; display: inline-block; border-bottom: 4px solid transparent;"></div> -->
            </div>
            <!-- <h5 style="display: block; margin: 5px 6px;">(blanks yet to be decided)</h5> -->
            <div data-aos="fade-up" data-aos-offset="150" data-aos-delay="450" style="margin: 5rem auto auto;"> 
              <h2 class="secHead">I'm a computer science student,<br>based in London.</h2>
            </div>
            <div data-aos="fade-up" data-aos-offset="50" data-aos-delay="900" style="margin: 6rem auto auto;"> 
              <h2 class="secHead" style="font-size: 42px;">Currently studying Computer Science, Maths and Physics A-levels at Beths Grammar.</h2>
            </div>
            <!-- <br><br><br>
            <p>and some witty comments i suppose</p>
            <br><br><br> -->
          </div>
        </div>
      </div>
    </section>
    <section class="bg-secondary text-center mainSection" id="experience">
      <div class="container">
        <div class="row">
          <div data-aos="fade-up" class="col-md-10 mx-auto">
            <h1 class="sectionTitle">Experience</h1>
          </div>
        </div>
        <div class="container"> <!-- start -->
          <div class="row align-items-center">
            <div class="col-lg-6 order-lg-2">
              <div data-aos="fade-up-right" class="p-5" id="test">
                <img class="img-fluid round-corners main-pic" src="static/pic/heatDemo.png" alt="heat-demo control page" id="heatImg">
              </div>
            </div>
            <div class="col-lg-6 order-lg-1">
              <div data-aos="fade-up-left" class="p-5">
                <h2 class="display-4 header-title">Remote Home Control</h2>
                <p>Run on a raspberry pi (connected to an ardino for motor control) the site allows for control of my heating, lights and fans from anywhere. </p>
                <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="heatMoreBtn" type="button" value="heat">More</button>
                <button class="btn proj-btn main-btn" id="HeatDemoBtn" type="button">Example</button>
              </div>
            </div>
          </div>
        </div>
        <div class="container">  <!-- start -->
          <div class="row align-items-center">
            <div class="col-lg-6">
              <div data-aos="fade-up-left" class="p-5">
                <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="Unity games" id="unityImg">
              </div>
            </div>
            <div class="col-lg-6">
              <div data-aos="fade-up-right" class="p-5">
                <h2 class="display-4 header-title">Android And IOS Games</h2>
                <p>Initially, i developed a few phone games on the Unity engine. They havent yet been released but a demo video will be availabled soon</p>
                <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="unityMoreBtn" type="button" value="unity">More</button>
                <!-- <button class="btn proj-btn main-btn" id="unityBtn" type="button">Example</button> -->
              </div>
            </div>
          </div>
        </div>
        <div class="container">  <!-- start -->
          <div class="row align-items-center">
            <div class="col-lg-6 order-lg-2">
              <div data-aos="fade-up-right" class="p-5">
                <img class="img-fluid round-corners main-pic" src="static/pic/OOP_game.png" alt="Text based OOP python game" id="pyGameImg">
              </div>
            </div>
            <div class="col-lg-6 order-lg-1">
              <div data-aos="fade-up-left" class="p-5">
                <h2 class="display-4 header-title">Text Based Python Game</h2>
                <p>A short Lord Of The Rings themed OOP python game made by myself and a friend</p>
                <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="pyGameMoreBtn" type="button" value="pyGame">More</button>
                <button class="btn proj-btn main-btn" id="pyGameBtn" type="button">Example</button>
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
                  <img class="img-fluid round-corners main-pic" src="static/pic/ChristmasCard.png" alt="Virtual christmas cards" id="christmasCardImg">
                </div>
              </div>
              <div class="col-lg-6">
                <div data-aos="fade-up-right" class="p-5">
                  <h2 class="display-4 header-title">Virtual Christmas Cards</h2>
                  <p>Rather than write lots of cards by hand, simply add the recipients name to the end of the url and click send, if you particularly like said person a personal message can be added.</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="christmasCardMoreBtn" type="button" value="christmasCard">More</button>                
                  <button class="btn proj-btn main-btn" id="christmasCardBtn" type="button">Example</button>
                </div>
              </div>
            </div>
          </div>
          <div class="container">  <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6 order-lg-2">
                <div data-aos="fade-up-right" class="p-5">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="Instagram bot in action" id="instaBotImg">
                </div>
              </div>
              <div class="col-lg-6 order-lg-1">
                <div data-aos="fade-up-left" class="p-5">
                  <h2 class="display-4 header-title">Instagram Bot</h2>
                  <p>Adapted version of Tim Grossmann's InstaPy to like my friends posts without me having to spend too long on social media. Also sends messages to my Telegram to inform me of it's activities</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="instaBotMoreBtn" type="button" value="instaBot">More</button>
                </div>
              </div>
            </div>
          </div>
          <div class="container">  <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6">
                <div data-aos="fade-up-left" class="p-5">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="RFID door lock securing my room" id="rfidDoorImg">
                </div>
              </div>
              <div class="col-lg-6">
                <div data-aos="fade-up-right" class="p-5">
                  <h2 class="display-4 header-title">RFID Door Lock</h2>
                  <p>i always thought contactless cards were cool, so i made one to secure my room from... urm... invasion?</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="rfidDoorMoreBtn" type="button" value="rfidDoor">More</button>
                </div>
              </div>
            </div>
          </div>
          <div class="container">  <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6 order-lg-2">
                <div data-aos="fade-up-right" class="p-5">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="Plant waterer watering plants" id="plantWatererImg">
                </div>
              </div>
              <div class="col-lg-6 order-lg-1">
                <div data-aos="fade-up-left" class="p-5">
                  <h2 class="display-4 header-title">Automated Plant Waterer</h2>
                  <p>I wasnt always around to water my plant, why not have an arduino do it for me.</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="plantWatererMoreBtn" type="button" value="plantWaterer">More</button>
                </div>
              </div>
            </div>
          </div>
          <div class="container">  <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6">
                <div data-aos="fade-up-left" class="p-5">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="Autonomous RC car navigating (or should i say crashing into) the terrain" id="rcCarImg">
                </div>
              </div>
              <div class="col-lg-6">
                <div data-aos="fade-up-right" class="p-5">
                  <h2 class="display-4 header-title">Autonomous RC Car</h2>
                  <p>I heard google was making one so i thought i should have a go too.</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="rcCarMoreBtn" type="button" value="rcCar">More</button>
                </div>
              </div>
            </div>
          </div>
          <div class="container"> <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6 order-lg-2">
                <div data-aos="fade-up-right" class="p-5" id="test">
                  <img class="img-fluid round-corners main-pic" src="static/pic/raspiDesktop.png" alt="One of the server PI's delivering this website to you" id="raspiImg">
                </div>
              </div>
              <div class="col-lg-6 order-lg-1">
                <div data-aos="fade-up-left" class="p-5">
                  <h2 class="display-4 header-title">Raspberry Pi Obsession</h2>
                  <p>You may have noticed me mention raspberryPi's in other projects, that's because I use them loads and have got a decent understanding from it. Even this website is hosted on one in my house.</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="raspiMoreBtn" type="button" value="raspi">More</button>
                  <!-- <button class="btn proj-btn main-btn" id="blDemoBtn" type="button">Example</button> -->
                </div>
              </div>
            </div>
          </div>
          <div class="container">  <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6">
                <div data-aos="fade-up-left" class="p-5">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="a network?" id="networkImg">
                </div>
              </div>
              <div class="col-lg-6">
                <div data-aos="fade-up-right" class="p-5">
                  <h2 class="display-4 header-title">Basic Networking</h2>
                  <p>I've picked up a bit here and there, particulary from my dad who knows quite a lot about networks, but i wouldnt say its my strongest field</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="networkMoreBtn" type="button" value="network">More</button>
                  <!-- <button class="btn proj-btn main-btn" id="christmasCardBtn" type="button">Example</button> -->
                </div>
              </div>
            </div>
          </div>
          <div class="container"> <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6 order-lg-2">
                <div data-aos="fade-up-right" class="p-5" id="test">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="Montiroing system display page" id="blImg">
                </div>
              </div>
              <div class="col-lg-6 order-lg-1">
                <div data-aos="fade-up-left" class="p-5">
                  <h2 class="display-4 header-title">Building Status Report System</h2>
                  <p>Back in 2017 I made a web based system where workers of the Sky office in london could report the status of certain items in the building so that the maintenance workers had an easier time locating and fixing the issues.</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="blMoreBtn" type="button" value="bl">More</button>
                  <!-- <button class="btn proj-btn main-btn" id="blDemoBtn" type="button">Example</button> -->
                </div>
              </div>
            </div>
          </div>
          <div class="container">  <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6">
                <div data-aos="fade-up-left" class="p-5">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="use of Linux OS's" id="linuxImg">
                </div>
              </div>
              <div class="col-lg-6">
                <div data-aos="fade-up-right" class="p-5">
                  <h2 class="display-4 header-title">Linux Interest</h2>
                  <p>Linux is my favorite OS, particularly Fedora and Arch although I grew up on Ubuntu so I definitely have a soft spot for buntie too. Oh and dont forget raspbianOS on all of my PI's.</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="linuxMoreBtn" type="button" value="linux">More</button>
                  <!-- <button class="btn proj-btn main-btn" id="christmasCardBtn" type="button">Example</button> -->
                </div>
              </div>
            </div>
          </div>
          <div class="container">  <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6">
                <div data-aos="fade-up-left" class="p-5">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="RFID door lock securing my room" id="subMentImg">
                </div>
              </div>
              <div class="col-lg-6">
                <div data-aos="fade-up-right" class="p-5">
                  <h2 class="display-4 header-title">Subject Mentour</h2>
                  <p>I am a subject mentour for Computer science at my school for the lower years. This mainly involves helping them with their GCSE coursework code or theory.</p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="rfidDoorMoreBtn" type="button" value="subMent">More</button>
                </div>
              </div>
            </div>
          </div>
          <div class="container">  <!-- start -->
            <div class="row align-items-center">
              <div class="col-lg-6 order-lg-2">
                <div data-aos="fade-up-right" class="p-5">
                  <img class="img-fluid round-corners main-pic" src="static/pic/tempImg.png" alt="Plant waterer watering plants" id="enrichmentImg">
                </div>
              </div>
              <div class="col-lg-6 order-lg-1">
                <div data-aos="fade-up-left" class="p-5">
                  <h2 class="display-4 header-title">Various Clubs and Enrichments</h2>
                  <p>Helping run a raspberry pi club and taking part in a robotics club during my free time at Beths Grammar to </p>
                  <button class="btn proj-btn main-btn btn-no-scroll more-btn" id="plantWatererMoreBtn" type="button" value="enrichment">More</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div data-aos="fade-up">
          <button class="btn proj-btn main-btn" id="moreBtn" type="button" style="margin-top: 20px">Show More</button>
        </div>
      </div>
    </section>
    <section class="bg-third text-center mainSection" id="contact">
      <div class="container" style="max-width: 700px;">
        <div data-aos="fade-up" class="col-md-10 mx-auto">
          <h1 class="sectionTitle" style="margin-bottom: 50px; color: white">Contact</h1>
        </div>
        <form role="form" id="contactForm">
          <div class="row">
            <div data-aos="fade-up" class="form-group col-sm-6">
              <label for="name" class="h2 white bold">Name</label>
              <input type="text" class="form-control" id="name" placeholder="Enter name" required>
            </div>
            <div data-aos="fade-up" class="form-group col-sm-6">
              <label for="email" class="h2 white bold">Email</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" required>
            </div>
          </div>        
          <div data-aos="fade-up" class="form-group">
            <label for="message" class="h2 white bold">Message</label>
            <textarea id="message" class="form-control" rows="5" placeholder="Enter message" required></textarea>
          </div>
          <div data-aos="fade-up">
            <button type="submit" id="form-submit" class="btn proj-btn main-btn btn-lg pull-right">Submit</button>
            <div id="msgSubmit" class="h5 text-center boxCol dis-none fit-content"></div>
          </div>
        </form>
        <!-- <div class="row">
          <div class="col-md-10 mx-auto">
            <h1>call me :p</h1>
            <br><br><br>
            <p>  </p>
          </div>
        </div> -->
        <div data-aos="fade-up" class="boxCol fit-content" style="margin-top: 30px; padding-bottom: 15px">
          <div class="tooltip" style="text-align: center !important">
            <h3>Or send me an email directly at:<br><a id="emailCopy" href="javascript:void(null);" style="color: red;">rsedlr@protonmail.com</a></h3> 
            <span class="tooltiptext" id="emailTooltip">Email Copied!</span>
          </div>
        </div>
        <div data-aos="fade-up">
          <h1 class="sectionHead" style="margin-top: 50px; color: white">GitHub</h1>
          <div style="margin-top: 30px;">
            <a href="https://github.com/MegaHertz3"><img alt="GitHub" src="static/pic/github/GitHub-Mark-Light-120px-plus.png" width="100" height="100"></imgborder></a>
          </div>
        </div>
      </div>
    </section>
    <footer>
      <div class="container">
        <!-- <p>&copy; Reiss Edler 2018</p> -->
        footer
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