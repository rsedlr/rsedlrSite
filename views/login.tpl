<!doctype html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/links.html')
  <title>login</title>
	<body>
		<script src="//code.jquery.com/jquery-1.12.4.js"></script>
     % include('templates/Header.html')
    <form class="form-signin" style="width: 20em; margin: 10% auto; align-items: center;" action="/heatDemo/login" method="post">
      <h1 class="h3 mb-3 font-weight-normal red" style="text-align: center;">Please sign in</h1>
      <span class="bmd-form-group">
        <input type="user" id="inputUser" name="username" class="form-control textInput-r" style="margin: 20px auto 20px 0px; text-align: center" placeholder="Username" required autofocus>
      </span>
      <span class="bmd-form-group">
        <input type="password" id="inputPassword" name="password" class="form-control textInput-r" style="margin: 20px auto 20px 0px; text-align: center" placeholder="Password" required>
      </span>
      <button class="btn my-primary-w btn-lg" type="submit" style="margin: 15px auto; display: block;">Sign in</button>
    </form>
    <h2 style="color: red; text-align: center; margin-top: 50px">Username: user</h2>
    <h2 style="color: red; text-align: center; margin-top: 20px">Password: password</h2>
    %if error:
      <h1 style="color: red; text-align: center">{{error}}</h1>
    %end
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/bottom.html')
	</body>
</html>
