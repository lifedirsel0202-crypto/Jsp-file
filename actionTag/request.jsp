<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
<h3>request 확인하기</h3>
	<form action ="process.jsp" method ="post">
		아이디 : <input type ="text" name="userID"><br>
		비밀번호 : <input type ="password" name = "userPwd"><br>
		<input type="submit" value="전송">
	</form>
	
	<hr>
<h3>response 확인하기</h3>
		<form action ="response01_process.jsp" method ="post">
		아이디 : <input type ="text" name="userID"><br>
		비밀번호 : <input type ="password" name = "userPwd"><br>
		<input type="submit" value="전송">
	</form>
	
	<hr>
	<h3>구구단</h3>
	<form action="gugu.jsp" method="post">
	<input type ="text" name="num">
	<input type ="submit" value="확인">
	</form>
	
	<hr>
	
	<h3>연습하기</h3>
	<form action ="response_practice.jsp" method="post" target="_target">
		<select name="sel">
			<option value="" label="선택">
			<option value="n" label="네이버" selected>
			<option value="g" label="구글">
			<option value="d" label="다음">
		</select>
		<input type="submit" value="이동하기">
	</form>
</body>
</html>