<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Portfolio of an computer science student.">
    <meta name="keywords" content="Portfolio, Reiss Edler">
    <meta name="author" content="Reiss Edler - rsedlr@protonmail.com">
    <title>Reiss Edler - Personal Portfolio</title>
    <link rel="icon" href="/staticIco/pic/favicon.png" type="image/x-icon">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" media="none" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"></noscript> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" media="none" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"></noscript>
    <!-- <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet"> -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet"> -->
    <!-- <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" media="nxone" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"></noscript> -->
    <script src="static/scrollMagic/ScrollMagic.min.js"></script>
    <!-- <script src="static/scrollMagic/plugins/animation.velocity.min.js"></script>  -->
    <!-- <script src="static/scrollMagic/plugins/debug.addIndicators.min.js"></script> -->
    <!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.14.2/TweenMax.min.js"></script> -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.3/plugins/animation.gsap.js"></script> -->
    % import os ; mainJS = os.path.getsize("templates/main/main.js") ; mainCSS = os.path.getsize("templates/main/main.css") ; titleJS = os.path.getsize("templates/main/title.js")
    <!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type='text/javascript' src='/static/main/main.js?filever={{mainJS}}'></script>  
    <!-- <script type='text/javascript' src='/static/main/title.js?filever={{titleJS}}'></script>   -->
    <link rel="stylesheet" type="text/css" href="/static/main/main.css?filever={{mainCSS}}">
    <!-- <link rel="stylesheet" href="/static/main/main.css?filever={{mainCSS}}" media="none" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="/static/main/main.css?filever={{mainCSS}}"></noscript> -->
  </head>
  <body id="page-top">

    % include('templates/main/nav.html')
    % include('templates/main/modal.html')

    <header class="masthead">
      <div class="container h-100">
        <div class="row h-100">
          <div class="col-lg-9 col-md-12" style="margin: auto auto 0 0;">
            <div style="margin-bottom: 100px; margin-top: 0;" id="titleDiv">
              <div class="header-content Mac-main" id="mainText">
                <div class="wrapper" style="height: 100px; width: 640px; top: 0px;">
                  <span class="titleSpans letter-1">Reiss Edler</span>
                  <span class="titleSpans letter-2">Reiss Edler</span>
                </div>
              </div>
              <div class="header-content Mac-sec" id="secText">
                <div class="wrapper" style="width: 640px; top: 0px;">
                  <span class="titleSpans letter-1">personal portfolio</span>
                  <span class="titleSpans letter-2">personal portfolio</span>
                </div>
              </div>
            </div>
            <div class="showSmall my-auto" style="text-align: center;" id="backupTitleContainer">
              <h1 style="font-size: 6.1rem; font-weight: 800; padding-left: 5px; color: white">Reiss Edler</h1>
              <h2 style="font-size: 4.85rem; font-weight: 400; padding-left: 8px; color: white">personal portfolio</h2>
            </div>
            <!-- <p style="color: white; margin-top: 100px;">(currently in development)</p> -->
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
            <div id="testTrigger" class="fade">
              <h1 class="mainHead" id="testElem">Hi,</h1>
              <!-- <div style="height: 100px; width: 300px; display: inline-block; border-bottom: 4px solid transparent;"></div> -->
            </div>
            <!-- <h5 style="display: block; margin: 5px 6px;">(blanks yet to be decided)</h5> -->
            <div style="margin: 5rem auto auto;" class="fade"> 
              <h2 class="secHead">I'm a computer science student,<br>based in London.</h2>
            </div>
            <div style="margin: 6rem auto auto;" class="fade"> 
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
          <div class="col-md-10 mx-auto fade">
            <h1 class="sectionTitle">Experience</h1>
          </div>
        </div>

        % include('templates/main/projects.html')

        <div class="fade">
          <button class="btn proj-btn main-btn" id="moreBtn" type="button" style="margin-top: 25px">Show More</button>
        </div>
      </div>
    </section>
    <section class="bg-third text-center mainSection" id="contact">
      <div class="container" style="max-width: 700px;">
        <div class="col-md-10 mx-auto fade">
          <h1 class="sectionTitle" id="contactTitle">Contact</h1>
        </div>
        <form role="form" id="contactForm">
          <div class="row fade">
            <div class="form-group col-sm-6">
              <label for="name" class="h2 white bold">Name</label>
              <input type="text" class="form-control" id="name" placeholder="Enter name" required>
            </div>
            <div class="form-group col-sm-6">
              <label for="email" class="h2 white bold">Email</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" required>
            </div>
          </div>        
          <div class="form-group fade">
            <label for="message" class="h2 white bold">Message</label>
            <textarea id="message" class="form-control" rows="5" placeholder="Enter message" required></textarea>
          </div>
          <div class="fade">
            <button type="submit" id="form-submit" class="btn proj-btn main-btn btn-lg" style="margin: 10px;">Submit</button>
            <div id="msgSubmit" class="h5 text-center boxCol fit-content" style="visibility: hidden;">.</div>
          </div>
        </form>
        <div class="boxCol fit-content fade" style="margin-top: 40px; padding-bottom: 15px">
          <div class="tooltip" style="text-align: center !important">
            <h3>Or send me an email directly at:<br><a id="emailCopy" href="javascript:void(null);" style="color: red;">rsedlr@protonmail.com</a></h3> 
            <span class="tooltiptext" id="emailTooltip">Email Copied!</span>
          </div>
        </div>
        <div class="fade">
          <h1 class="sectionHead" style="margin-top: 80px; color: white">GitHub</h1>
          <div style="margin-top: 30px;">
            <a href="https://github.com/MegaHertz3"><img alt="GitHub" src="static/pic/github/GitHub-Mark-Light-120px-plus.png" width="100" height="100"></imgborder></a>
          </div>
        </div>
      </div>
    </section>
    <footer>
      <div class="container">
        &copy; Reiss Edler 2018-2019
      </div>
    </footer>
    <script src="/static/mainPage/jquery.min.js"></script>
    <script src="/static/mainPage/bootstrap.bundle.min.js"></script>
    <script src="/static/mainPage/jquery.easing.min.js"></script>
    <script src="/static/mainPage/main.min.js"></script>
  </body>
</html>