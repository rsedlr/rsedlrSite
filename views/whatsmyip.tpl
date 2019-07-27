<!doctype html>
<html lang="en">
<meta name="robots" content="noindex">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('assets/links.html')
	<title>What's my IP</title>
	<script type="text/javascript">
		$( document ).ready(function() {
			function hide(id) {
				var e = document.getElementById(id);
				if(e.style.display == 'block') {
					e.style.display = 'none';  // visibility: 'hidden'
					console.log('none');
				} else {
					e.style.display = 'block';  // visibility: 'visible'
					console.log('block');
				}
			}
			$('#MoreOptions').click(function(){
				hide('more-info');
			});
		});
	</script>
	<body>
		<script src="//code.jquery.com/jquery-1.12.4.js"></script>
			% include('assets/Header.html')
		<div id="red" class="jumbotron" style="color: red; padding: 20px; padding-left: 7%;">
			<p style="font-size:28px;">Your IP isnt:</p>
			<h1 style="color: blue;">{{ip}}</h1>
		</div>
		<div id="more" style="color: red;">
			<button type="button" class="btn btn-raised btn-lg otherbtn" id="MoreOptions">More options</button>
			<br><br><br>
		</div>
		<div id="more-info" class="jumbotron" style="color: red; padding: 20px; display: none; font-size: 23px;">
			<ul>
			<li><strong>Remote Port:</strong> <span style="color: blue;">{{port}}</span></li>
			<li><strong>Request Method:</strong> <span style="color: blue;">{{method}}</span></li>
			<li><strong>Server Protocol:</strong> <span style="color: blue;">{{protocol}}</span></li>
			<!-- <li><strong>Server Host:</strong> <span style="color: blue;"></span></li> -->
			<li><strong>User Agent:</strong> <span style="color: blue;">{{usrAgent}}</span></li>
			<li><strong>Proxy: <span style="color: blue;">{{proxy}}</span></li>
			</ul>
		</div>
		<footer class="footer">
			<div class="container" style="position: left;">
				<h3 style="color: red;">It took <span style="color: blue;">x</span> seconds to share this info.</h3>
			</div>
    </footer>
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
      % include('assets/bottom.html')
	</body>
</html>
