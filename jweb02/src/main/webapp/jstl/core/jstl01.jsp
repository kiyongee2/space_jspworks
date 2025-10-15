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
	<!-- 변수 선언 - set -->
	<h3>set, out</h3>
	<c:set var="product1" value="삼성 갤럭시" />
	<c:set var="product2" value="애플 아이폰" />
	
	<p>product1: <c:out value="${product1}"></c:out>
	<p>product2: ${product2}
	<hr>
	
	<!-- if문 -->
	<h3>if</h3>
	<c:set var="checkout" value="true" />
	<c:if test="${checkout}">
		<p>주문 제품: ${product2}
	</c:if>
	
	<c:if test="${!checkout}">
		<p>주문 제품이 아님
	</c:if>
	
	<c:if test="${not empty product1}">
		<p>${product1} 이미 추가됨
	</c:if>
	<hr>
	
	<h3>반복문 - forEach</h3>
	<!-- 배열 중괄호 2개 사용 - {{}} -->
	<c:set var="intArray" value="${{10, 20, 30, 40}}" />
	<ul>
		<c:forEach var="num" items="${intArray}">
			<li>${num}</li>
		</c:forEach>
	</ul>
	
	<!-- 1 ~ 5까지 출력 -->
	<c:forEach var="i" begin="1" end="4">
		${i}번 반복<br>
	</c:forEach>
	
	<%
		String[] fruits={"사과", "바나나", "포도"};
	    //"fruits"를 뷰에 보내줌
	    request.setAttribute("fruits", fruits);
	%>
	<ul>
		<c:forEach var="fruit" items="${fruits}">
			<li>${fruit}</li>
		</c:forEach>
	</ul>
</body>
</html>






