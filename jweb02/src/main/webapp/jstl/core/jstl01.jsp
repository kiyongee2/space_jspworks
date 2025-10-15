<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - 실습</title>
</head>
<body>
	<h2>JSTL 실습 예제</h2>
	<h3>set, out</h3>
	<c:set var="product1" value="삼성 갤럭시"></c:set>
	
	<p>product1: <c:out value="${product1}"></c:out>
</body>
</html>