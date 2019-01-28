<!doctype html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
  <title>Evil-Corp</title>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/links.html')
  <link rel="stylesheet" type="text/css" href="/static/control.css">
  <script src="static/snow.js"></script>
  <script src="static/control.js"></script>  <!-- must be after snow.js -->
</head>
<body>

  <div class="pos-f-t">
    <div class="collapse" id="navbarToggleExternalContent">
      <div class="p-4" style="background-color: #1e1e1e">
        <h3 style="color: #ffffff"><b>Let It Snow :)</b></h3>
      </div>
    </div>
  </div>

  <nav class="navbar navbar-expand-lg navbar-dark">
      <a class="navbar-brand" href="/" style="font-size: 30px;">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Fireicon07.svg/2000px-Fireicon07.svg.png" width="30" height="30" alt="" style="padding-bottom: 5px">
        <b>Heat pi</b>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto flex-md-column flex-lg-row">
          <li class="nav-item">
            <a class="nav-link" href="control">Control</a>
          </li>
          <li class="nav-item">
            <a class="nav-link navWhite" href="shopping" >Shopping List</a>
          </li>
          <li class="nav-item dropdown">
            <a class="dropdown-toggle nav-link navWhite" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">other</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="whatsmyip">Whats my IP</a>
              <a class="dropdown-item" href="textrepeater">Text Repeater</a>
              <a class="dropdown-item" href="ytdl">YT download</a>
              <a class="dropdown-item" href="snow">SNOW</a>
              <!-- <div class="dropdown-divider"></div> -->
            </div>
          </li>
          <button class="btn btn-lg otherbtn my-primary-w remMarginSm" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="true" aria-label="Toggle navigation" style="margin: auto 5px auto 20px; max-width: 200px;">about</button>
        </ul>
      </div>
    </nav>
    
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script>
        var _urlpath = $(location).attr('pathname').split('/').pop(); // Gets url path, splits it by the slashes
        $('nav li').each(function(){ 
          var _this = $(this);
          var _str = _this.find('a').attr('href'); // then compares that with the href of the nav buttons
          if (_str == "/") _str = "";
          // _str !== _urlpath ? _this.removeClass('navActive') : _this.addClass('navActive');
          if (_str !== _urlpath) { // if they dont match it makes it look normal
            _this.children().removeClass('navActive')
            _this.children().addClass('navWhite')
          } else { // if they do match it makes the button appear active
            _this.children().removeClass('navWhite')
            _this.children().addClass('navActive')
          }
        });
    </script>
    
  <canvas id="canvas" style="width: 100%; height: 100%"></canvas>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/bottom.html')
</body>
</html>