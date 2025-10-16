<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mvc 패턴</title>
</head>
<body>
	<h3>변수, 리스트</h3>
	<p>현재 계절: ${season}</p>
	
	<p>과일 장바구니:
	<c:forEach items="${fruits}" var="fruit">
		 ${fruit}
	</c:forEach>
</body>
</html>