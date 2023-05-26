<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
*{text-align: center;
justify-content: center;
background-color: black;
}
div{border: 3px solid black;
width: 400px; height: 400px;
margin-left: 450px;
margin-top:60px;
font-size: 25px;
background-color: aqua;}
h2{background-color: aqua;
font-style: italic;}
</style>
</head>
<body>
<div>
<c:choose>
		<c:when test="${u!=null }">
<h2> ID: ${u.getId()}</h2>
<h2>Name: ${u.getName()}</h2>
<h2>Phone: ${u.getPhone()}</h2>
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