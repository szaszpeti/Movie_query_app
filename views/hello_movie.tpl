<!DOCTYPE hml>
<html>
<head>
<title>search</title>
</head>
<body>
<p><strong>
You query gives following movies for the word "{{word}}":</strong>
<p>
<ul>
%for x in details:
<li><strong>{{x['title']}}</strong></li> 
<form action="/result" method="POST">
<em>Please copy the title of the movie here:</em>
<input type="text" name="filmcim" size="40" value=""><br>
<input type="Submit" value="Query movie"><br>
</form>
%end

<br>
<p>Press submit to query another movie!</p>
</ul>
<form action="/" method="GET">
<input type="submit" value="Submit"><br>
</form>
</body>
</html>
