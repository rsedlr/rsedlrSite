<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="google" content="notranslate" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="Portfolio of a Computer Science student." />
    <meta name="keywords" content="Portfolio, Reiss Edler, Software, Developer" />
    <meta name="author" content="Reiss Edler - reissedler@gmail.com" />
    <meta property="og:title" content="Reiss Edler - Software Developer" />
    <meta property="og:description" content="Portfolio of a Computer Science student." />
    <meta
      property="og:image:secure_url"
      content="https://rsedlr.xyz/static/pic/thisSite-c-1.webp"
    />
    <meta property="og:image" content="http://rsedlr.xyz/static/pic/thisSite-c-1.webp" />
    <title>Reiss Edler - Software Developer</title>
    <link rel="icon" href="/static/pic/favicon.png" type="image/x-icon" />
    <link
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap"
      rel="stylesheet"
    />

    <script src="static/scrollMagic/ScrollMagic.min.js"></script>
    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous"
    ></script>
    <script src="/static/main/main.min.js?v=1.02"></script>
    <script src="/static/main/background.min.js?v=1.02"></script>
    <link rel="stylesheet" type="text/css" href="/static/main/main.min.css?v=1.07" />
  </head>
  <body id="page-top">
    % include('assets/main/modal.min.html')
    <header id="wallpaper"></header>
    <section id="titleSection">
      <div class="container h-100">
        <div class="row h-100">
          <div id="titleContainer">
            <div class="hideSmall hover" id="titleDiv" onclick="codeBackground()">
              <div class="header-content Mac-main" id="mainText">Reiss Edler</div>
              <div class="header-content Mac-sec" id="secText">Software Developer</div>
            </div>
            <div class="showSmall" id="smallTitleDiv" onclick="codeBackground()">
              <h1 style="font-size: 70px; font-weight: 800; line-height: 1">
                <span style="letter-spacing: 11px">Reiss</span>
                <span style="letter-spacing: 11px; margin-left: 1px">Edler</span>
              </h1>
              <h2 style="font-size: 35px; font-weight: 400; line-height: 1.1">
                <span style="margin-left: 3px; letter-spacing: 3px">Software</span>
                <span style="letter-spacing: -1px">Developer</span>
              </h2>
            </div>
            <div class="container bg-footer text-center" id="about-container">
              <h1 class="secHead" style="margin-bottom: 0">
                I'm a 2<sup>nd</sup> year Computer Science student, <br />
                on track for a first class degree from the University of Warwick.
              </h1>
            </div>
            <div id="main-down-arrow">
              <a
                class="btn title-btn js-scroll-trigger box-shadow"
                id="scrollDown"
                href="#experience"
              >
                <div>
                  <div class="main-arrow down"></div>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
      <div class="container nav-cont">
        <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-size: 21px"
          >HOME</a
        >
        <button
          class="navbar-toggler navbar-toggler-right"
          type="button"
          data-toggle="collapse"
          data-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          Menu
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a
                class="nav-link js-scroll-trigger mainNav"
                href="#experience"
                id="navProjects"
                >projects</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger mainNav" href="#about" id="navAbout"
                >about</a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link js-scroll-trigger mainNav"
                href="#contact"
                id="navContact"
                >contact</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <section class="bg-footer text-center" id="experience">
      <div class="container">
        <div class="row">
          <div class="col-md-10 mx-auto fade">
            <h1 class="sectionTitle" style="margin-bottom: 15px">Projects</h1>
          </div>
        </div>
        % include('assets/main/projects.min.html')
        <div class="fade" style="padding-top: 25px">
          <button class="btn proj-btn main-btn white-bg" id="moreProjBtn" type="button">
            Show More
          </button>
        </div>
      </div>
    </section>
    <section class="bg-footer text-center" id="about">
      <div class="container">
        <div class="col-md-10 mx-auto fade">
          <h1 class="sectionTitle" style="margin-bottom: 20px">About</h1>
        </div>
        <!-- <div class="fade">
          <h1 class="secHead">
            I'm a 2<sup>nd</sup> year Computer Science student, on track for a first class
            degree at the University of Warwick.
          </h1>
        </div> -->
        <div class="fade">
          <h1 class="secHead">
            I have experience in Full Stack Web Development, App Development, AI, Data
            Structures and work with a range of languages and technologies including
            JavaScript, React.js, Python, Java and SQL.
          </h1>
        </div>
        <div class="fade">
          <h1 class="mainQuote">
            "He showed great technical abilities, aptitude and intelligence ...
            <br />
            ... was a punctual, responsible and personable young man. Capable of thinking
            on his feet and handling a variety of situations." <br />
            - Simon Brown (NowTV work experience manager)
          </h1>
        </div>
        <div class="fade">
          <button
            class="btn proj-btn main-btn white-bg"
            id="cvBtn"
            type="button"
            onclick="window.open('static/Reiss-Edler-Resume.pdf', '_blank'); return false;"
            style="margin-top: 30px"
          >
            See my CV
          </button>
        </div>
      </div>
    </section>
    <section class="bg-footer socials" id="contact">
      <div class="mx-auto fade" style="text-align: center">
        <a href="https://www.linkedin.com/in/rsedlr/">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="64"
            height="64"
            viewBox="0 0 24 24"
            class="socialButton"
          >
            <path
              d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"
            />
          </svg>
        </a>
        <div class="tooltip" style="text-align: center !important">
          <a href="javascript:void(null);" id="emailCopy">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="64"
              height="64"
              viewBox="0 0 122.88 122.88"
              class="socialButton"
            >
              <path
                d="M25.2,0H97.68a25.27,25.27,0,0,1,25.2,25.2V97.68a25.27,25.27,0,0,1-25.2,25.2H25.2A25.27,25.27,0,0,1,0,97.68V25.2A25.27,25.27,0,0,1,25.2,0Zm4.1,37.59L62,64.26,93.33,37.59ZM27.19,82.48l23.3-23.37-23.3-19V82.48ZM53.06,61.21,29,85.29H93.65l-23-24.08-7.57,6.45h0a1.66,1.66,0,0,1-2.12,0l-7.94-6.48ZM73.2,59.07,95.69,82.66V39.9L73.2,59.07Z"
              />
            </svg>
          </a>
          <span class="tooltiptext" id="emailTooltip">Email Copied!</span>
        </div>

        <a href="https://github.com/rsedlr">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="64"
            height="64"
            viewBox="0 0 24 24"
            class="socialButton"
          >
            <path
              d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-4.466 19.59c-.405.078-.534-.171-.534-.384v-2.195c0-.747-.262-1.233-.55-1.481 1.782-.198 3.654-.875 3.654-3.947 0-.874-.312-1.588-.823-2.147.082-.202.356-1.016-.079-2.117 0 0-.671-.215-2.198.82-.64-.18-1.324-.267-2.004-.271-.68.003-1.364.091-2.003.269-1.528-1.035-2.2-.82-2.2-.82-.434 1.102-.16 1.915-.077 2.118-.512.56-.824 1.273-.824 2.147 0 3.064 1.867 3.751 3.645 3.954-.229.2-.436.552-.508 1.07-.457.204-1.614.557-2.328-.666 0 0-.423-.768-1.227-.825 0 0-.78-.01-.055.487 0 0 .525.246.889 1.17 0 0 .463 1.428 2.688.944v1.489c0 .211-.129.459-.528.385-3.18-1.057-5.472-4.056-5.472-7.59 0-4.419 3.582-8 8-8s8 3.581 8 8c0 3.533-2.289 6.531-5.466 7.59z"
            />
          </svg>
        </a>
        <a href="https://stackoverflow.com/users/8750548/rsedlr">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="64"
            height="64"
            viewBox="0 0 24 24"
            class="socialButton"
          >
            <path
              d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-8.512 8.272l5.532 3.243-.686 1.162-5.533-3.243.687-1.162zm-1.456 3.113l6.185 1.739-.332 1.23-6.204-1.667.351-1.302zm-.672 2.813l6.498.65-.117 1.28-6.504-.586.123-1.344zm-.193 2.469h6.667v1.333h-6.667v-1.333zm8.833 3.333h-11v-7h1v6h9v-6h1v7zm-.852-8.704l-3.56-5.219 1.115-.76 3.559 5.219-1.114.76zm1.356-.841l-1.08-6.224 1.328-.231 1.082 6.224-1.33.231z"
            />
          </svg>
        </a>

        <!-- <a href="https://www.instagram.com/rsedlr/">
               <span style="display: inline">
                  <svg
                     xmlns="http://www.w3.org/2000/svg"
                     width="64"
                     height="64"
                     viewBox="0 0 24 24"
                     class="socialButton"
                  >
                     <path
                        d="M15.233 5.488c-.843-.038-1.097-.046-3.233-.046s-2.389.008-3.232.046c-2.17.099-3.181 1.127-3.279 3.279-.039.844-.048 1.097-.048 3.233s.009 2.389.047 3.233c.099 2.148 1.106 3.18 3.279 3.279.843.038 1.097.047 3.233.047 2.137 0 2.39-.008 3.233-.046 2.17-.099 3.18-1.129 3.279-3.279.038-.844.046-1.097.046-3.233s-.008-2.389-.046-3.232c-.099-2.153-1.111-3.182-3.279-3.281zm-3.233 10.62c-2.269 0-4.108-1.839-4.108-4.108 0-2.269 1.84-4.108 4.108-4.108s4.108 1.839 4.108 4.108c0 2.269-1.839 4.108-4.108 4.108zm4.271-7.418c-.53 0-.96-.43-.96-.96s.43-.96.96-.96.96.43.96.96-.43.96-.96.96zm-1.604 3.31c0 1.473-1.194 2.667-2.667 2.667s-2.667-1.194-2.667-2.667c0-1.473 1.194-2.667 2.667-2.667s2.667 1.194 2.667 2.667zm4.333-12h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm.952 15.298c-.132 2.909-1.751 4.521-4.653 4.654-.854.039-1.126.048-3.299.048s-2.444-.009-3.298-.048c-2.908-.133-4.52-1.748-4.654-4.654-.039-.853-.048-1.125-.048-3.298 0-2.172.009-2.445.048-3.298.134-2.908 1.748-4.521 4.654-4.653.854-.04 1.125-.049 3.298-.049s2.445.009 3.299.048c2.908.133 4.523 1.751 4.653 4.653.039.854.048 1.127.048 3.299 0 2.173-.009 2.445-.048 3.298z"
                     />
                  </svg>
               </span>
            </a> -->
      </div>
    </section>
    <section class="bg-footer socials">
      <div class="mx-auto fade" style="text-align: center">
        <span style="font-weight: normal">&copy; Reiss Edler 2018-2021</span>
      </div>
    </section>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
      integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm"
      crossorigin="anonymous"
    ></script>
    <script src="/static/mainPage/jquery.easing.min.js"></script>
    <script src="/static/main/scroll.min.js"></script>
  </body>
</html>
