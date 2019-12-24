<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Merry Christmas Dad!</title>
    <style>
      body {
        padding: 15px 15%;
        align-content: center;
      }
      h1 {
        font-size: 3.5rem;
        text-align: center;
      }
      .carousel {
        width: 100%;
      }
    </style>
  </head>
  <body>
    <h1>We are going to <a href="https://www.google.com/maps/place/Machynlleth/@52.5922887,-3.8520898,15z/data=!3m1!4b1!4m5!3m4!1s0x48655da7b2726727:0xe8ed8fbd7ed14480!8m2!3d52.590273!4d-3.853485">Wales</a>!</h1>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        % for i in range(2,29):
        <li data-target="#carouselExampleIndicators" data-slide-to="{{i}}"></li>
        % end
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="/static/pic/dadsGift/1.jpg" class="d-block w-100" alt="">
        </div>
        % for i in range(2,29):
        <div class="carousel-item">
          <img src="/static/pic/dadsGift/{{i}}.jpg" class="d-block w-100" alt="">
        </div>
        % end
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>