<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 태그 - 스크립트 태그</title>
</head>
<!-- 전역 공간 -->
<%!
	int count = 0;  //전역 변수 선언(값을 유지, 공유)
%>
<body>
	<h2>스크립트릿 태그 예제</h2>
	<%
	    //변수 생성 및 계산
		int n1 = 10, n2 = 20;
		out.println("두 수의 합: " + (n1 + n2) + "<br>");
		
		//배열
		int[] arr = {1, 2, 3, 4};
		
		for(int i = 0; i < arr.length; i++){
			out.println(arr[i]);
		}
		out.println("<br>");
		
		//ArrayList 
		List<String> fruits = new ArrayList<>();
		
		//과일 저장
		fruits.add("사과");
		fruits.add("배");
		fruits.add("바나나");
		
		for(String fruit : fruits)
			out.println(fruit);
	%>
	
	<h3>두 수의 합:<%= n1 + n2 %></h3>
	<h3>사이트 방문은 <%= ++count %>번째 입니다.</h3>
</body>
</html>