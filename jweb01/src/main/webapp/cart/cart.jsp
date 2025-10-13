<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="../resources/css/style.css">
</head>
<body>
	<section id="container">
		<h2>장바구니</h2>
		<h3>선택한 상품 목록</h3>
		<%
			//세션 유지
			ArrayList<String> productList = 
							(ArrayList)session.getAttribute("sessionList");
		
		    //장바구니 품목 출력
		    if(productList != null){
		    	for(String product : productList)
		    		out.println(product + "<br>");
		    }
		%>
	</section>
</body>
</html>