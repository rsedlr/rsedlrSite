<!doctype html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <head>
    <title>login</title>
  </head>   
  <body> 
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/links.html')
    <style>
      html, body {
        background-color: whitesmoke;
      }
    </style>
    <form class="form-signin" style="width: 20em; margin: 10% auto; align-items: center;" action="/recipe-maker/" method="post">
      <h1 class="h3 mb-3 font-weight-normal red" style="text-align: center;">Enter Password</h1>
      <span class="bmd-form-group">
        <input type="password" id="inputPassword" name="password" class="form-control textInput-r" style="margin: 20px auto 20px 0px; text-align: center" placeholder="Password" required>
      </span>
      <button class="btn my-primary-w btn-lg" type="submit" style="margin: 15px auto; display: block;">Submit</button>
    </form>
    % if error:
      <h1 style="color: red; text-align: center">{{error}}</h1>
    % end
    % include('templates/bottom.html')
	</body>
</html>
