<!DOCTYPE html>
<html lang="en">
<head>
  <!-- add 'async' to js links -->
  <meta charset="utf-8">
  <meta name="google" content="notranslate">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Portfolio of a Computer Science student.">
  <meta name="keywords" content="Portfolio, Reiss Edler">
  <meta name="author" content="Reiss Edler - rsedlr@protonmail.com">
  <meta property="og:title" content="Reiss Edler - Personal Portfolio" />
  <meta property="og:description" content="Portfolio of a Computer Science student." />
  <meta property="og:image" content="https://rsedlr.xyz/static/pic/thisSite-c-1.png" />
  <title>Reiss Edler - Personal Portfolio</title>
  <link rel="icon" href="/static/pic/favicon.png" type="image/x-icon">
  <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" media="none" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"></noscript> -->
  <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
    media="none" onload="if(media!='all')media='all'">
  <noscript>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900">
  </noscript>
  <!-- <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" media="nxone" onload="if(media!='all')media='all'"><noscript><link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"></noscript> -->
  <script src="static/scrollMagic/ScrollMagic.min.js"></script>
  <!-- <script src="static/scrollMagic/plugins/debug.addIndicators.min.js"></script> -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"
    integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <!-- % import os ; mainJS = os.path.getsize("assets/main/main.js") ; backgroundJS = os.path.getsize("assets/main/background.js") ; mainCSS = os.path.getsize("assets/main/main.css") -->
  <script type='text/javascript' src='/static/main/main.min.js?v=1.00'></script> <!-- ?filever={{mainJS}} -->
  <script type='text/javascript' src='/static/main/background.min.js?v=1.00'></script>
  <!-- ?filever={{backgroundJS}} -->
  <link rel="stylesheet" type="text/css" href="/static/main/main.min.css?v=1.02"> <!-- ?filever={{mainCSS}}} -->
</head>

<body id="page-top">

  % include('assets/main/modal.min.html')

  <header id="wallpaper"></header>
  <section id="titleSection">
    <div class="container h-100">
      <div class="row h-100">
        <div id="titleContainer">
          <div class="hideSmall hover" id="titleDiv">
            <div class="header-content Mac-main" id="mainText">Reiss Edler</div>
            <div class="header-content Mac-sec" id="secText">personal portfolio</div>
          </div>
          <div class="showSmall" id="smallTitleDiv">
            <h1 style="font-size: 70px; font-weight: 800;">Reiss Edler</h1>
            <h2 style="font-size: 50px; font-weight: 400;">personal portfolio</h2>
          </div>
          <div style="margin: auto; text-align: center">
            <!-- <button class="btn title-btn box-shadow" id="codeBtn" type="button" onclick="codeBackground()">New Background</button> -->
            <span class="spacer" style="height: 30px;"></span>
            <a class="btn title-btn js-scroll-trigger box-shadow" style="height: 70px;" id="scrollDown" href="#about">
              <div class="main-arrow down"></div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
    <div class="container nav-cont">
      <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-size: 22px">HOME</a>
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
          I'm a Computer Science student, studing at the University of Warwick. Awarded 3 A*s in A-level Computer
          Science, Maths and Physics at Beths Grammar school.
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
  </section>
  <section class="bg-secondary text-center" id="experience">
    <div class="container">
      <div class="row">
        <div class="col-md-10 mx-auto fade">
          <h1 class="sectionTitle">Projects</h1>
        </div>
      <div>

      % include('assets/main/projects.min.html')

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
      <div class="boxCol fit-content fade" style="margin-top: 40px; padding-bottom: 15px">
        <div class="tooltip" style="text-align: center !important;">
          <h3 style="color: white; font-weight: bold" id="emailTxt">Or send me an email directly at:<br><a
              id="emailCopy" href="javascript:void(null);" style="color: var(--other-orange);">rsedlr@protonmail.com</a>
          </h3>
          <span class="tooltiptext white" id="emailTooltip">Email Copied!</span>
        </div>
      </div>
    </div>
  </section>
  <section class="bg-footer" id="socials">
    <div class="fade" style="text-align: center;">
      <a href="https://github.com/rsedlr">
        <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" viewBox="0 0 24 24" class="socialButton">
          <path
            d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-4.466 19.59c-.405.078-.534-.171-.534-.384v-2.195c0-.747-.262-1.233-.55-1.481 1.782-.198 3.654-.875 3.654-3.947 0-.874-.312-1.588-.823-2.147.082-.202.356-1.016-.079-2.117 0 0-.671-.215-2.198.82-.64-.18-1.324-.267-2.004-.271-.68.003-1.364.091-2.003.269-1.528-1.035-2.2-.82-2.2-.82-.434 1.102-.16 1.915-.077 2.118-.512.56-.824 1.273-.824 2.147 0 3.064 1.867 3.751 3.645 3.954-.229.2-.436.552-.508 1.07-.457.204-1.614.557-2.328-.666 0 0-.423-.768-1.227-.825 0 0-.78-.01-.055.487 0 0 .525.246.889 1.17 0 0 .463 1.428 2.688.944v1.489c0 .211-.129.459-.528.385-3.18-1.057-5.472-4.056-5.472-7.59 0-4.419 3.582-8 8-8s8 3.581 8 8c0 3.533-2.289 6.531-5.466 7.59z" />
        </svg>
        <!-- <img alt="GitHub" src="static/pic/socials/GitHub-Mark-Light-120px-plus.png" width="60" height="60"></imgborder> -->
      </a>
      <a href="https://stackoverflow.com/users/8750548/rsedlr">
        <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" viewBox="0 0 24 24" class="socialButton">
          <path
            d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-8.512 8.272l5.532 3.243-.686 1.162-5.533-3.243.687-1.162zm-1.456 3.113l6.185 1.739-.332 1.23-6.204-1.667.351-1.302zm-.672 2.813l6.498.65-.117 1.28-6.504-.586.123-1.344zm-.193 2.469h6.667v1.333h-6.667v-1.333zm8.833 3.333h-11v-7h1v6h9v-6h1v7zm-.852-8.704l-3.56-5.219 1.115-.76 3.559 5.219-1.114.76zm1.356-.841l-1.08-6.224 1.328-.231 1.082 6.224-1.33.231z" />
        </svg>
        <!-- <img alt="stack overflow" src="static/pic/socials/so-icon.png" width="90" height="90"></imgborder> -->
      </a>
      <a href="https://www.linkedin.com/in/rsedlr/">
        <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" viewBox="0 0 24 24" class="socialButton">
          <path
            d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z" />
        </svg>
      </a>
      <a href="https://www.instagram.com/rsedlr/">
        <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" viewBox="0 0 24 24" class="socialButton">
          <path
            d="M15.233 5.488c-.843-.038-1.097-.046-3.233-.046s-2.389.008-3.232.046c-2.17.099-3.181 1.127-3.279 3.279-.039.844-.048 1.097-.048 3.233s.009 2.389.047 3.233c.099 2.148 1.106 3.18 3.279 3.279.843.038 1.097.047 3.233.047 2.137 0 2.39-.008 3.233-.046 2.17-.099 3.18-1.129 3.279-3.279.038-.844.046-1.097.046-3.233s-.008-2.389-.046-3.232c-.099-2.153-1.111-3.182-3.279-3.281zm-3.233 10.62c-2.269 0-4.108-1.839-4.108-4.108 0-2.269 1.84-4.108 4.108-4.108s4.108 1.839 4.108 4.108c0 2.269-1.839 4.108-4.108 4.108zm4.271-7.418c-.53 0-.96-.43-.96-.96s.43-.96.96-.96.96.43.96.96-.43.96-.96.96zm-1.604 3.31c0 1.473-1.194 2.667-2.667 2.667s-2.667-1.194-2.667-2.667c0-1.473 1.194-2.667 2.667-2.667s2.667 1.194 2.667 2.667zm4.333-12h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm.952 15.298c-.132 2.909-1.751 4.521-4.653 4.654-.854.039-1.126.048-3.299.048s-2.444-.009-3.298-.048c-2.908-.133-4.52-1.748-4.654-4.654-.039-.853-.048-1.125-.048-3.298 0-2.172.009-2.445.048-3.298.134-2.908 1.748-4.521 4.654-4.653.854-.04 1.125-.049 3.298-.049s2.445.009 3.299.048c2.908.133 4.523 1.751 4.653 4.653.039.854.048 1.127.048 3.299 0 2.173-.009 2.445-.048 3.298z" />
        </svg>
        <!-- <img alt="Instagram" src="static/pic/socials/instaWhite.png" width="58" height="58"></imgborder> -->
      </a>
    </div>
  </section>
  <!-- <script src="/static/mainPage/jquery.min.js"></script> -->
  <!-- <script src="/static/mainPage/bootstrap.bundle.min.js"></script> -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
    integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm"
    crossorigin="anonymous"></script>
  <script src="/static/mainPage/jquery.easing.min.js"></script>
  <script src="/static/main/scroll.min.js"></script>
</body>

</html>

<!-- scripts should all be moved from header to footer -->