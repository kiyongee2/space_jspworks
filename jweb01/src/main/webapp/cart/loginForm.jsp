<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<link rel="stylesheet" href="../resources/css/style.css">
</head>
<body>
	<section id="container">
		<h2>로그인</h2>
		<form action="selProduct.jsp" method="post">
			<p>
				<input type="text" name="username" placeholder="이름 입력">
				<input type="submit" value="로그인">
			</p>
		</form>
	</section>
</body>
</html>