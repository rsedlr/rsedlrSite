<!doctype html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/links.html')
	<title>Shopping list</title>
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
      <div style="padding: 2% 3%;">
        <table class="table table-dark table-hover table-striped">
          <tr class="table-header">
            <th>Company</th>
            <th>Contact</th>
            <th>Country</th>
          </tr>
          <tr>
            <td>Alfreds Futterkiste</td>
            <td>Maria Anders</td>
            <td>Germany</td>
          </tr>
          <tr>
            <td>Centro comercial Moctezuma</td>
            <td>Francisco Chang</td>
            <td>Mexico</td>
          </tr>
          <tr>
            <td>Ernst Handel</td>
            <td>Roland Mendel</td>
            <td>Austria</td>
          </tr>
          <tr>
            <td>Island Trading</td>
            <td>Helen Bennett</td>
            <td>UK</td>
          </tr>
          <tr>
            <td>Laughing Bacchus Winecellars</td>
            <td>Yoshi Tannamuri</td>
            <td>Canada</td>
          </tr>
          <tr>
            <td>Magazzini Alimentari Riuniti</td>
            <td>Giovanni Rovelli</td>
            <td>Italy</td>
          </tr>
        </table>
      </div>
		</div>
		<footer class="footer">
			<div class="container" style="position: left;">
			</div>
    </footer>
    <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    % include('templates/bottom.html')
	</body>
</html>
