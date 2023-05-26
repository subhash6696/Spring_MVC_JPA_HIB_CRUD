<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{background-color: black;
text-align: center;
align-items: center;
justify-content: center;
}
div{border: 3px solid red;
width: 1000px; height: 600px;
margin-top: 25px;
margin-left: 200px;
background-color: aqua;}
h2{background-color: aqua;}
a{text-decoration: none;
background-color: aqua;
font-size: 30px;
font-style: italic;}
</style>
</head>
<body>
<div>

<c:choose>
		<c:when test="${u!=null }">
		
<h1 style="background-color: aqua; font-family: fantasy; font-size: 50px;font-style: inherit;" > Welcome to Spring MVC Home page </h1> <br>
<h2> <a href="register.jsp">New registration</a></h2><br>
<h2> <a href="viewuser.jsp">View User</a></h2><br>
<h2> <a href="update.jsp">Update User</a></h2><br>
<h2> <a href="delete?id=${u.getId() }">Delete User</a></h2><br>
<h2> <a href='logout'>Logout</a></h2>
	
		</c:when>
		<c:otherwise>
			<%
			response.sendRedirect("login.jsp");
			%>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>