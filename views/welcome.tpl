<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
</head>
<body>
<p><strong>Welcome to the movie DataBase query program!</strong></p>
<p> You have different options to query the movie, please choose:</p>

<form action="/movieByTitle" method="POST">
Title of the movie:
<input type="text" name="cim" size="40" value=""><br>
<input type="submit" value="Search"><br>
</form>
<br>

<form action="/movieByActor" method="POST">
Actor plays in the movie:
<input type="text" name="szinesz" size="40" value=""><br>
<input type="submit" value="Search"><br>
</form>
<br>

<form action="/movieByDirector" method="POST">
Director of the movie:
<input type="text" name="rendezo" size="40" value=""><br>
<input type="submit" value="Search"><br>
</form>
<br>
<br>
</form>
</body>
</html>