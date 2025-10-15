<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 저장 - Model</title>
</head>
<body>
	<!-- 날짜와 시간 출력 -->
	<%
		LocalDateTime datetime = LocalDateTime.now();
	%>
	<p>스크립트 출력: <%=datetime %>
	
	<jsp:useBean id="now" class="java.util.Date" />
	<p>EL 출력: ${now}</p>
	
	<!-- request에 데이터 저장 -->
	<%
		request.setAttribute("name", "한강");
		request.setAttribute("age", 25);
	%>
	<p>이름: ${name}</p>
	<p>나이: ${age}</p>
	<hr>
	
	<!-- 배열 저장 -->
	<%
		String[] fruits={"사과", "바나나", "포도"};
	    //"fruits"를 뷰에 보내줌
	    request.setAttribute("fruits", fruits);
	%>
	<p>${fruits[0]}</p>
	<p>${fruits[2]}</p>
	
	<!-- Map 자료 저장 -->
	<%
		Map<String, String> map = new HashMap<>();
		map.put("k1", "korea");
		map.put("j1", "japan");
		//화면(view)에 "maps"를 보냄
		request.setAttribute("maps", map);
	%>
	
	<p>${maps.k1}</p> <!-- korea -->
	<p>${maps.j1}</p> <!-- korea -->
	
</body>
</html>







