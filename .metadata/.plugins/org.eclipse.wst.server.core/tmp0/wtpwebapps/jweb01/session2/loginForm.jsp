<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean - 로그인</title>
<style>
  h2{margin-left: 20px;}
  ul li{
  	list-style: none;
  	margin: 10px;
  }
</style>
</head>
<body>
	<h2>로그인</h2>
	<form action="/jweb01/session" method="post">
		<ul>
			<li>
				<label for="uid">아이디</label>
				<input type="text" name="uid">
			</li>
			<li>
				<label for="passwd">비밀번호</label>
				<input type="password" name="passwd">
			</li>
			<li>
				<input type="submit" value="로그인">
			</li>
		</ul>
	
	</form>
</body>
</html>