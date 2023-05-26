<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>


div{border: 3px solid black;
width: 400px; height: 400px;
text-align: center;
margin-top: 50px;
margin-left: 400px;
background-color: aqua;}

h2{background-color: aqua;
}

</style>
<body>
<div>
<form action="save" method="post">

<h2>Name<input type="text" name="name" > </h2><br>
<h2>Phone<input type="tel" name="phone"></h2><br>
<h2>Password<input type="password" name="password"></h2><br>
<h2><input type="submit" value="Register"></h2>
</form>
</div>
</body>
</html>