<!doctype html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Recipe Maker</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
      <h1 style="font-weight: bolder; font-size: 50px; margin-bottom: 20px;">Recipe Maker</h1>
      <form role="form" id="contactForm">
        <div data-aos="fade-up" data-aos-offset="150" data-aos-delay="150" class="row">
          <div class="form-group col-sm-6">
            <label for="title" class="h2 white bold">Title</label>
            <input type="text" class="form-control" id="title" placeholder="e.g. 'toast'" required>
          </div>
          <div class="form-group col-sm-6">
            <label for="subtitle" class="h2 white bold">SubTitle</label>
            <input type="text" class="form-control" id="subtitle" placeholder="e.g. 'cooked bread'" required>
          </div>
        </div>        
        <div data-aos="fade-up" data-aos-offset="100" data-aos-delay="250" class="form-group">
          <label for="ingredients" class="h2 white bold">Ingredients</label>
          <textarea id="ingredients" class="form-control" rows="5" placeholder="e.g. 'bread, butter'" required></textarea>
        </div>
        <div data-aos="fade-up" data-aos-offset="100" data-aos-delay="250" class="form-group">
          <label for="method" class="h2 white bold">Method</label>
          <textarea id="method" class="form-control" rows="5" placeholder="e.g. 'put bread in toaster'" required></textarea>
        </div>
        <div data-aos="fade-up" data-aos-offset="50" data-aos-delay="400">
          <button type="submit" id="form-submit" class="btn proj-btn main-btn btn-lg" style="margin: 10px; background-color: blach; color: whitesmoke">Submit</button>
          <div id="msgSubmit" class="h5 text-center boxCol fit-content" style="visibility: hidden;">.</div>
        </div>
      </form>
    </div>
  </body>
  <script>
    $("#contactForm").submit(function(event){
      event.preventDefault();
      submitForm();
    });
    function submitForm(){
      $("#msgSubmit").text('sending...');
      $("#msgSubmit").css('visibility', 'visible');
      var title = $("#title").val();
      var subtitle = $("#subtitle").val();
      var ingredients = $("#ingredients").val();
      var method = $("#method").val();
      $.ajax({
        type: "POST",
        url: "/recipe-submit/",
        data: "title=" + title + "&subtitle=" + subtitle + "&ingredients=" + ingredients + "&method=" + method,
        success: function(data) {
          $("#msgSubmit").text('Recipe submitted');
          $("#msgSubmit").css('visibility', 'visible');
        },
        error: function(data) {
          $("#msgSubmit").text('Error, try again');
          $("#msgSubmit").css('visibility', 'visible');
        },
      });
    }
  </script>
</html>
