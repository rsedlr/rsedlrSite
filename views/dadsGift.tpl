<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Snow_flake.svg/2000px-Snow_flake.svg.png"> -->
    <!-- <meta name="description" content="">
    <meta name="author" content=""> -->
    <title>Merry Christmas</title>
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
  </head>
  <body>
    <style>
      html { 
        height: 100%;
        background-color: #ff4000;
      }

      body {
        font-family: Arial,Helvetica Neue,Helvetica,sans-serif; 
        align-items: center;
        height: 100%;
      }

      .container {
        padding: calc(10% - 50px) calc(30% - 80px);
        /* padding: 20%; */
      }

      .btn {
        width: 200px;
        height: 50px;
        border-radius: 30px;
        font-size: 50px;
        margin: 20px auto;
        position: relative;
      }

      .big-box {
        padding: 20px 30px;
        margin: calc(5% - 10px) 5%;
        background-color: rgba(37, 37, 37, 1);
        color: white;
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        font-size: 1rem;
        text-align: center;
        align-content: center;
      }

      @media (max-width: 550px) {
        .mainText {
          font-size: 4rem !important;
        }
      }
    </style>
    <div class="big-box">
      <h1 style="font-size: 10rem; margin: 5px" class="mainText">Hi Dad,</h1>
      <h1 style="font-size: 5rem; margin: 5px" class="mainText">Sorry i'm not there in person, but at least you can still open ur gift :)</h1>   
      <!-- <a href="https://support.image-line.com/action/profile/licenses">link</a> -->
    </div>
    <button class="btn" type="button" style="margin: 15px auto;">Recieve Gift</button>
    % include('templates/svg-christmas/index.html')
    <script src="/static/svg-christmas/js/index.js"></script>
  </body>
</html>
