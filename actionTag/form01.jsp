<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
<script type="text/javascript">
	function form_submit(){
	let id=document.member.id.value;
	let memberForm = document.querySelector("#member123");
	let pwd=document.member.passwd.value;
	<%--let id2=memberForm.id.value;--%>
	const regex=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
	
	if(id==""){
		alert("id값 입력되지 않았습니다.");
		return false;
	}
	if(!regex.test(pwd)){
		alert("비밀번호 형식이 잘못되었습니다.");
		return false;
	}
		alert("아이디는:"+id);
}
</script>
</head>
<body>
	<h3>회원가입</h3>
	<form action="form01_process1.jsp" id="member123" name="member" method="post" onsubmit="retrun false">
	<p> 아 이 디 : <input type= "text" name="id"> <input type ="button" value="아이디 중복검사">
	<p> 비밀번호 : <input type="password" name="passwd">
	<p> 이  름 : <input type= "text" name="name">
	<p> 연 락 처 : <select name= "phone1">
				<option value = "010" selected>010</option>
				<option value = "011">011</option>
				<option value = "017">017</option>
	</select>
	- <input type="text" maxlength="4" size="4" name="phone2"> - <input type="text" maxlength="4" size="4" name="phone3">
	<p> 성  별 : <input type = "radio" name="sex" value="남성" checked>남성
				<input type= "radio" name ="sex" value= "여성"> 여성
	<p> 취  미 : 독서 <input type="checkbox" name = "hobby" value = "독서" checked>
			운동  <input type="checkbox" name = "hobby" value = "운동">
			영화  <input type="checkbox" name = "hobby" value = "영화">
	<p><textarea name="comment" cols="30" rows="3" placeholder="가입인사를 입력해주세요"></textarea>
	<p> <input type="submit" value = "가입하기" onclick="return form_submit()">
		 <input type="reset" value = "다시쓰기">
	</form>
</body>
</html>