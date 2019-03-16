<!doctype html>
<html lang="en">
<meta name="robots" content="noindex">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/links.html')
	<title>Text repeater</title>
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
     % include('templates/Header.html')
		<div id="main">

		</div>
		<footer class="footer">
			<div class="container" style="position: left;">
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
          % include('templates/bottom.html')
			</div>
		</footer>
	</body>
</html>
