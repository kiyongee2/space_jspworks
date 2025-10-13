<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 유효시간 설정</title>
</head>
<body>
	<h3>세션 유효시간 변경전</h3>
	<%
		// 30*60(초) = 1800초
		int time = session.getMaxInactiveInterval();
	    out.println(time + "초<br>");
	    
	    time = time / 60; //초을 분으로 환산
	    out.println(time + "분<br>");
	%>
	
	<h3>세션 유효시간 변경후</h3>
	<%
		//유효시간 - 5분 설정
		session.setMaxInactiveInterval(5*60);
	
		time = session.getMaxInactiveInterval();
		out.println(time + "초<br>");
		
		time = time / 60; //초을 분으로 환산
	    out.println(time + "분<br>");
	%>
	
</body>
</html>





