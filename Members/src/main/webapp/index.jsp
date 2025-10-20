<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome!</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<section id="container">
		<div id="main">
			<h2>Good Mall에 오신 것을 환영합니다.</h2>
			
			<div class="main-pic">
				<img alt="상점" src="/resources/images/store.png">
			</div>
			
			<p>
				<a href="/member?action=memberList">회원 목록</a> |
				<a href="/member?action=addForm">회원 가입</a> |
				<c:if test="${empty sessionId}">
					<a href="/member?action=loginForm">로그인</a>
				</c:if>
				<c:if test="${not empty sessionId}">
					<a href="/member?action=logout">로그아웃</a>
				</c:if>
			</p>
		</div>
	</section>
</body>
</html>






