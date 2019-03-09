<!doctype html>
<html lang="en">
  <head>|
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>recipe maker</title>
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    % import os ; mainCSS = os.path.getsize("templates/main/main.css")
    <link rel="stylesheet" type="text/css" href="/static/main/main.css?filever={{mainCSS}}">
  </head>
  <body>
    <div id="main" class="boxCol" style="padding: 50px 80px;">
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
          <button type="submit" id="form-submit" class="btn proj-btn main-btn btn-lg" style="margin: 10px;">Submit</button>
          <div id="msgSubmit" class="h5 text-center boxCol fit-content" style="visibility: hidden;">.</div>
        </div>
      </form>
    </div>
  </body>
</html>
