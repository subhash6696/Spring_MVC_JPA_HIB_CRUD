<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{background-color:gray;
align-items: center;}

div{border: 3px solid red;
width: 500px; height: 500px;
margin-left: 400px;
margin-top: 50px;
background-color: aqua;}
form{
margin-top: 50px;
text-align: center;
background-color: aqua;}
input{padding: 12px 20px;
margin: 8px 0;
display: inline-block;
border: 1px solid black;
box-sizing: border-box;
text-align: center;
color: white;
margin-top: 30px;
background-color: black;}
button {color: red;}
h3{margin-top: 90px;
text-align: center;
background-color: aqua;
}
a{text-decoration: none;
color: black;
background-color: aqua;}
</style>
</head>
<body>

<h2> ${ msg } </h2>
<div>
<form action="login" method="post">
<input type="tel" name="phone" placeholder="Enter the phone number"><br>
<input type="password" name="password" placeholder="Enter Password"><br><br>

<button type="submit" value="login">Login</button>
</form>
<h3><a href="register.jsp">Click here to Register</a></h3>
</div>

</body>
</html>