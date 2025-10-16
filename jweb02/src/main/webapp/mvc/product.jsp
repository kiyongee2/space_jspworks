<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택</title>
</head>
<body>
	<section id="content">
		<h2>상품 목록</h2>
		<form action="/jweb02/product" method="get">
			<select name="fruit">
				<option value="apple">사과</option>
				<option value="banana">바나나</option>
				<option value="grape">포도</option>
			</select>
			<input type="submit" value="선택">
		</form>
	</section>
</body>
</html>