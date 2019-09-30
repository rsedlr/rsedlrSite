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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" media="none" onload="if(media!='all')media='all'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"></noscript>
  <!-- <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" media="nxone" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"></noscript> -->
  <script src="static/scrollMagic/ScrollMagic.min.js"></script>
  <!-- <script src="static/scrollMagic/plugins/debug.addIndicators.min.js"></script> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  % import os ; mainJS = os.path.getsize("assets/main/main.js") ; backgroundJS = os.path.getsize("assets/main/background.js") ; mainCSS = os.path.getsize("assets/main/main.css")
  <script type='text/javascript' src='/static/main/main.js?filever={{mainJS}}'></script>
  <script type='text/javascript' src='/static/main/background.js?filever={{backgroundJS}}'></script>
  <link rel="stylesheet" type="text/css" href="/static/main/main.css?filever={{mainCSS}}">
</head>

<body id="page-top">

  % include('assets/main/modal.html')

  <header id="wallpaper"></header>
  <section id="titleSection">
    <div class="container h-100">
      <div class="row h-100">
        <div style="margin: 25% auto auto;">
          <div class="hideSmall hover" id="titleDiv">
            <div class="header-content Mac-main" id="mainText">Reiss Edler</div>
            <div class="header-content Mac-sec" id="secText">personal portfolio</div>
          </div>
          <div class="showSmall" id="smallTitleDiv">
            <h1 style="font-size: 4rem; font-weight: 800;">Reiss Edler</h1>
            <h2 style="font-size: 3rem; font-weight: 400;">personal portfolio</h2>
          </div>
          <div style="margin: auto; text-align: center">
            <button class="btn title-btn box-shadow" id="codeBtn" type="button" onclick="codeBackground()">New Background</button>
            <span class="spacer" style="height: 11px;"></span>
            <a class="btn title-btn js-scroll-trigger box-shadow" id="scrollDown" href="#about">See my work</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
    <div class="container nav-cont">
      <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-size: 22px">HOME</a>
      <p style="color: black; margin: auto">(in development)</p>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
        aria-label="Toggle navigation">Menu</button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger mainNav" href="#about" id="navAbout">about</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger mainNav" href="#experience" id="navProjects">projects</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger mainNav" href="#contact" id="navContact">contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <section class="bg-primary text-center" id="about">
    <div class="container">
      <h1 class="sectionTitle">About</h1>
      <div class="fade">
        <h1 class="secHead">
          I'm an A-level student, based in London. Currently studying Computer Science, Maths and Physics at Beths Grammar school.
        </h1>
      </div>
      <div class="fade">
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
  </section>
  <section class="bg-secondary text-center" id="experience">
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
  <section class="bg-third text-center" id="contact">
    <div class="container" style="max-width: 800px;">
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
          <button type="submit" id="form-submit" class="btn proj-btn main-btn btn-lg"
            style="margin: 10px;">Submit</button>
          <div id="msgSubmit" class="h5 text-center boxCol fit-content"></div>
        </div>
      </form>
      <div class="boxCol fit-content fade" style="margin-top: 40px; padding-bottom: 15px" >
        <div class="tooltip" style="text-align: center !important;">
          <h3 style="color: white" id="emailTxt">Or send me an email directly at:<br><a id="emailCopy" href="javascript:void(null);"
              style="color: var(--other-orange);">rsedlr@protonmail.com</a></h3>
          <span class="tooltiptext white" id="emailTooltip">Email Copied!</span>
        </div>
      </div>
    </div>
  </section>
  <section class="bg-footer" id="socials">
    <div class="fade" style="text-align: center;">
      <a href="https://github.com/rsedlr"><img alt="GitHub" src="static/pic/socials/GitHub-Mark-Light-120px-plus.png" width="90" height="90"></imgborder></a>
      <a href="https://stackoverflow.com/users/8750548/rsedlr"><img alt="stack overflow" src="static/pic/socials/so-icon.png" width="130" height="130"></imgborder></a>
      <a href="https://www.instagram.com/rsedlr/"><img alt="Instagram" src="static/pic/socials/instaWhite.png" width="85" height="85"></imgborder></a>
    </div>
  </section>
  <!-- <script src="/static/mainPage/jquery.min.js"></script> -->
  <script src="/static/mainPage/bootstrap.bundle.min.js"></script>
  <script src="/static/mainPage/jquery.easing.min.js"></script>
  <script src="/static/main/scroll.js"></script>
</body>
</html>

<!-- scripts should all be moved from header to footer -->