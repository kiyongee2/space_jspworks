<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중 조건문 - choose</title>
</head>
<body>
	<h2>학점 계산 프로그램</h2>
	<c:set var="score" value="79" />
	<h3>시험 점수: ${score}점</h3>
	<c:choose>
		<c:when test="${score >= 90} and ${score <= 100}">
			<h3>학점: A</h3>
		</c:when>
		<c:when test="${score >= 80}">
			<h3>학점: B</h3>
		</c:when>
		<c:when test="${score >= 70}">
			<h3>학점: C</h3>
		</c:when>
		<c:when test="${score >= 60}">
			<h3>학점: D</h3>
		</c:when>
		<c:otherwise>
			<h3>학점: F</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>