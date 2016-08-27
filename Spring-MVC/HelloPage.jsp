<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body onload="get()">
	<h1 align="center">Hi <span></span>..Glad you're here!</h1>
 
	<h3 align="center">${welcomeMessage}</h3>
	<br><br>
	<button class="btn btn-success" style="margin-left:44%;" onclick="window.location.assign('http://localhost:8080/helloSpring/welcome/next')">
	getLocation()</button>
 
</body>
<script>
function get(){
	var name=window.prompt("Hi there!<br>Type your name below..");
	$("span").html(name);
}
</script>
</html>
