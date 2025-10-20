<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<section id="container">
		<h2>회원 목록</h2>
		<p>
			<span style="color: blue">[${sessionId}]</span>님 환영합니다. | 
			<a href="/member?action=logout">로그아웃</a>
		</p>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>성별</th>
					<th>가입일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${memberList}" var="member" varStatus="i">
				<tr>
				    <td>${i.count}</td>
					<td>
						<a href="/member?action=info&mid=${member.mid}">${member.mid}</a> 
					</td>
					<td>${member.name}</td>
					<td>${member.gender}</td>
					<td>${member.joinDate}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
</body>
</html>