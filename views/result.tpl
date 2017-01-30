<!DOCTYPE hml>
<html>
<head>
<title>Result</title>
</head>
<body>
<p><strong>
Query for the movie : {{word}}</strong>
<p>
<ul>
%for x,y in movie.items():
<li><strong>{{x}}</strong>:{{y}}</li> 
%end

<br>





<p>Press submit to query another movie!</p>
</ul>
<form action="/" method="GET">
<input type="submit" value="Submit"><br>
</form>
</body>
</html>