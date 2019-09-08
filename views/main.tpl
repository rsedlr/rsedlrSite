<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Portfolio of an computer science student.">
    <meta name="keywords" content="Portfolio, Reiss Edler">
    <meta name="author" content="Reiss Edler - rsedlr@protonmail.com">
    <title>Reiss Edler - Personal Portfolio</title>
    <link rel="icon" href="/static/pic/favicon.png" type="image/x-icon">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" media="none" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"></noscript> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" media="none" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"></noscript>
    <!-- <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" media="nxone" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"></noscript> -->
    <script src="static/scrollMagic/ScrollMagic.min.js"></script>
    <!-- <script src="static/scrollMagic/plugins/debug.addIndicators.min.js"></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    % import os ; mainJS = os.path.getsize("assets/main/main.js") ; mainCSS = os.path.getsize("assets/main/main.css")
    <script type='text/javascript' src='/static/main/main.js?filever={{mainJS}}'></script>
    <link rel="stylesheet" type="text/css" href="/static/main/main.css?filever={{mainCSS}}">
  </head>
  <body id="page-top">

    % include('assets/main/nav.html')
    % include('assets/main/modal.html')

    <header class="masthead">
      <div class="container h-100">
        <div class="row h-100">
          <div class="hideSmall hover" style="margin: auto auto 150px 0;" id="titleDiv">
            <div class="header-content Mac-main" id="mainText">
              <span id="main1">Reiss</span> <span id="main2">Edler</span>
            </div>
            <div class="header-content Mac-sec" id="secText">
              <span id="main4">personal</span> <span id="main3">portfolio</span>
            </div>
          </div>
          <div class="showSmall" style="text-align: center; margin-top: 30%" id="backupTitleContainer">
            <h1 style="font-size: 6rem; font-weight: 800; padding-left: 5px; color: white">Reiss Edler</h1>
            <h2 style="font-size: 4rem; font-weight: 400; padding-left: 8px; color: white">personal portfolio</h2>
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
      <div class="container">
        <div class="row">
          <div class="col-md-10 mx-auto fade">
            <h1 class="sectionTitle">About</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-10 mx-auto" style="text-align: left !important;">
            <div class="fade">
              <h1 class="secHead">
                I'm a Computer Science student, based in London. Currently studying A-levels at Beths Grammar school.
              </h1> <!-- <span style="font-size: 70px">Hi,</span> -->
            </div>
            <div class="fade">
              <!-- <h1 class="mainQuote">
                "He showed great technical abilities, aptitude and intelligence and was not afraid to ask questions to 
                further his understanding of the development processes we employed." - simon brown (work experience team manager)
              </h1> -->
              <h1 class="mainQuote">
                "He showed great technical abilities, aptitude and intelligence ...
                <span class="spacer"></span>
                ... was a punctual, responsible and personable young man. Capable of thinking on his feet and handling a
                variety of situations."
                <span class="spacer"></span>
                - Simon Brown (NOWTV work experience manager)
              </h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="bg-secondary text-center mainSection" id="experience">
      <div class="container">
        <div class="row">
          <div class="col-md-10 mx-auto fade">
            <h1 class="sectionTitle">Projects</h1>
          </div>
        </div>

        % include('assets/main/projects.html')

        <div class="fade">
          <button class="btn proj-btn main-btn" id="moreProjBtn" type="button" style="margin-top: 25px">Show More</button>
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
              <label for="name" class="h1 bold">Name</label>
              <input type="text" class="form-control" id="name" placeholder="" required>
            </div>
            <div class="form-group col-sm-6">
              <label for="email" class="h1 bold">Email</label>
              <input type="email" class="form-control" id="email" placeholder="" required>
            </div>
          </div>        
          <div class="form-group fade">
            <label for="message" class="h1 bold">Message</label>
            <textarea id="message" class="form-control" rows="6" placeholder="" required></textarea>
          </div>
          <div class="fade">
            <button type="submit" id="form-submit" class="btn proj-btn main-btn btn-lg" style="margin: 10px;">Submit</button>
            <div id="msgSubmit" class="h5 text-center boxCol fit-content"></div>
          </div>
        </form>
        <div class="boxCol fit-content fade" style="margin-top: 40px; padding-bottom: 15px">
          <div class="tooltip" style="text-align: center !important;">
            <h3 style="color: white">Or send me an email directly at:<br><a id="emailCopy" href="javascript:void(null);" style="color: red;">rsedlr@protonmail.com</a></h3> 
            <span class="tooltiptext white" id="emailTooltip">Email Copied!</span>
          </div>
        </div>
        <!-- <div class="fade">
          <div style="margin-top: 70px;">
            <a href="https://github.com/rsedlr"><img alt="GitHub" src="static/pic/socials/GitHub-Mark-120px-plus.png" width="90" height="90"></imgborder></a>
            <a href="https://stackoverflow.com/users/8750548/rsedlr"><img alt="stack overflow" src="static/pic/socials/so-icon.png" width="130" height="130"></imgborder></a>     
            <a href="https://www.instagram.com/rsedlr/"><img alt="Instagram" src="static/pic/socials/insta.png" width="85" height="85"></imgborder></a>
          </div>
        </div> -->
      </div>
      <!-- <div class="fade">
        <button class="btn proj-btn main-btn btn-lg" style="margin-top: 50px; margin-bottom: 0">Back to top</button>
      </div> -->
    </section>
    <footer>
      <div> <!-- class="fade" -->
          <div>
            <a href="https://github.com/rsedlr"><img alt="GitHub" src="static/pic/socials/GitHub-Mark-Light-120px-plus.png" width="90" height="90"></imgborder></a>
            <a href="https://stackoverflow.com/users/8750548/rsedlr"><img alt="stack overflow" src="static/pic/socials/so-icon.png" width="130" height="130"></imgborder></a>     
            <a href="https://www.instagram.com/rsedlr/"><img alt="Instagram" src="static/pic/socials/instaWhite.png" width="85" height="85"></imgborder></a>
          </div>
        </div>
    </footer>
    <script src="/static/mainPage/jquery.min.js"></script>
    <script src="/static/mainPage/bootstrap.bundle.min.js"></script>
    <script src="/static/mainPage/jquery.easing.min.js"></script>
    <script src="/static/mainPage/main.min.js"></script>
  </body>
</html>

<!-- scripts should all be moved from header to footer -->