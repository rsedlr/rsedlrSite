<!doctype html>
<html lang="en">
<meta name="robots" content="noindex">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('assets/links.html')
	<title>YT download</title>
	<script type="text/javascript">
		// $( document ).ready(function() {
		// 	function hide(id) {
		// 		var e = document.getElementById(id);
		// 		if(e.style.display == 'block') {
		// 			e.style.display = 'none';  // visibility: 'hidden'
		// 			console.log('none');
		// 		} else {
		// 			e.style.display = 'block';  // visibility: 'visible'
		// 			console.log('block');
		// 		}
		// 	}
		// 	$('#MoreOptions').click(function(){
		// 		hide('more-info');
		// 	});
		// });
	</script>
	<body>
		<script src="//code.jquery.com/jquery-1.12.4.js"></script>
			% include('assets/Header.html')
		<div class="col-md-4">
		  <form action="download-yt.php" method="post">
		    <h1 for="fname" style="color: red;"><b>Youtube link:</b></h1>
		    <input type="text" id="DL-link" name="DL-link" placeholder="www.youtube.com">
		    <input type="submit" class="btn btn-raised btn-lg otherbtn" value="Submit">
		  </form>
		</div>
		<!-- <div class="col-md-12">
			<h1 style="color: red;">The url is: </h1>
		</div> -->
		<div id="more" style="color: red;" class="col-md-12">
			<br>
			<!-- <button type="button" class="register-button" id="MoreOptions">More options</button>
			<br><br><br> -->
		</div>
		<!-- <div id="more-info" class="jumbotron" style="color: red; padding: 20px; display: none; font-size: 23px;">
    </div>  -->
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
      % include('assets/bottom.html')
	</body>
</html>

<!--
-->
