<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RESTful app</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
function getLocation() {if (navigator.geolocation){navigator.geolocation.getCurrentPosition(showPosition, showError);} 
else{document.getElementById('#err').innerHTML = "Geolocation is not supported by this browser."; }}
function showPosition(position) {document.getElementById('url2').innerHTML='http://maps.googleapis.com/maps/api/geocode/json?latlng='+
		String(position.coords.latitude)+'%20,'+String(position.coords.longitude)+'&sensor=true';
if(position.coords.accuracy < 50) var sugg="<i>(good)</i>"; else if(position.coords.accuracy > 50) var sugg="<i>(not good)</i>"; 
document.getElementById("demo").innerHTML="Latitude : "+String(position.coords.latitude)+ " &Rarr; " +" Longitude : "+String(position.coords.longitude)+
" &Rarr;  Accuracy : "+String(position.coords.accuracy)+" m "+sugg+" &Rarr; Speed : "+(position.coords.speed);}
function showError(error) {
    switch(error.code) {
        case error.PERMISSION_DENIED:
            x.innerHTML = "User denied the request for Geolocation."
            break;
        case error.POSITION_UNAVAILABLE:
            x.innerHTML = "Location information is unavailable."
            break;
        case error.TIMEOUT:
            x.innerHTML = "The request to get user location timed out."
            break;
        case error.UNKNOWN_ERROR:
            x.innerHTML = "An unknown error occurred."
            break;
    }
}
function addr(){url=String(document.getElementById('url2').innerHTML);var xmlhttp = new XMLHttpRequest();xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {myFunction(xmlhttp.responseText);}};xmlhttp.open("GET", url, true);xmlhttp.send();
function myFunction(response) {var arr=JSON.parse(response);document.getElementById('address').innerHTML=" &#8623;<br> "+arr['results'][0]['formatted_address'];
}}

</script>
</head>
<body onload="getLocation()">
<h1>${text} </h1>
<p id="err"></p>
<p id="url2" style="visibility:hidden;"></p>
<p id="demo" style="font-family:'Open Sans Condensed',sans-serif;text-align:center;font-size: 21px;"></p>
<button class="btn btn-danger" onclick="addr()" style="margin-left:44%">getAddress()</button>
<br><p id="address" align="center"></p>
</body>

</html>
