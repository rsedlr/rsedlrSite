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

    % include('templates/main/nav.html')
    % include('templates/main/modal.html')

    <header class="masthead">
      <div class="container h-100">
        <div class="row h-100">
          <div class="col-md-9 col-sm-12" style="margin: auto auto 0 0;">
            <div class="hideSmall" style="margin-bottom: 100px; margin-top: 50px">
              <div class="header-content" id="mainText" ><!-- text added through js --></div>
              <div class="header-content" id="secText" ><!-- text added through js --></div>
            </div>
            <div class="showSmall my-auto" style="text-align: center;">
              <h1 style="font-size: 6.1rem; font-weight: 800; padding-left: 5px; color: white">Reiss Edler</h1>
              <h2 style="font-size: 4rem; font-weight: 400; padding-left: 8px; padding-right: 20px; color: white">personal portfolio</h2>
            </div>
            <p style="color: white; margin-top: 100px;">(currently in development)</p>
            <!-- <a href="#contact" class="btn btn-outline btn-xl js-scroll-trigger">move</a> -->
          </div>
          <div class="col-lg-12" style="margin-top: auto; margin-bottom: 20px;">
            <div class="round rot90" style="margin: auto auto 0px">
              <a href="#about" class="js-scroll-trigger">
                <div id="cta" style="width: 50px; height: 50px;">
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
            <div data-aos="fade-up" data-aos-offset="150" data-aos-delay="300" style="margin: 5rem auto auto;"> 
              <h2 class="secHead">I'm a computer science student,<br>based in London.</h2>
            </div>
            <div data-aos="fade-up" data-aos-offset="50" data-aos-delay="600" style="margin: 6rem auto auto;"> 
              <h2 class="secHead" style="font-size: 2.6rem;">Currently studying Computer Science, Maths and Physics A-levels at Beths Grammar.</h2>
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

        % include('templates/main/projects.html')

        <div data-aos="fade-up" data-aos-offset="150">
          <button class="btn proj-btn main-btn" id="moreBtn" type="button" style="margin-top: 25px">Show More</button>
        </div>
      </div>
    </section>
    <section class="bg-third text-center mainSection" id="contact">
      <div class="container" style="max-width: 700px;">
        <div data-aos="fade-up" class="col-md-10 mx-auto">
          <h1 class="sectionTitle" style="margin-bottom: 50px; color: white">Contact</h1>
        </div>
        <form role="form" id="contactForm">
          <div data-aos="fade-up" data-aos-offset="150" data-aos-delay="150" class="row">
            <div class="form-group col-sm-6">
              <label for="name" class="h2 white bold">Name</label>
              <input type="text" class="form-control" id="name" placeholder="Enter name" required>
            </div>
            <div class="form-group col-sm-6">
              <label for="email" class="h2 white bold">Email</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" required>
            </div>
          </div>        
          <div data-aos="fade-up" data-aos-offset="100" data-aos-delay="250" class="form-group">
            <label for="message" class="h2 white bold">Message</label>
            <textarea id="message" class="form-control" rows="5" placeholder="Enter message" required></textarea>
          </div>
          <div data-aos="fade-up" data-aos-offset="50" data-aos-delay="400">
            <button type="submit" id="form-submit" class="btn proj-btn main-btn btn-lg pull-right">Submit</button>
            <div id="msgSubmit" class="h5 text-center boxCol dis-none fit-content"></div>
          </div>
        </form>
        <div data-aos="fade-up" data-aos-offset="0" data-aos-delay="550" class="boxCol fit-content" style="margin-top: 30px; padding-bottom: 15px">
          <div class="tooltip" style="text-align: center !important">
            <h3>Or send me an email directly at:<br><a id="emailCopy" href="javascript:void(null);" style="color: red;">rsedlr@protonmail.com</a></h3> 
            <span class="tooltiptext" id="emailTooltip">Email Copied!</span>
          </div>
        </div>
        <div data-aos="fade-up" data-aos-offset="-10" data-aos-delay="700">
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
        startEvent: 'load', // name of the event dispatched on the document, that AOS should initialize on  original: DOMContentLoaded
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