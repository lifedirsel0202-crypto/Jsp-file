<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*, com.dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<script>	
function form_va(){
	const form=document.member;
	const regex=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
	//검증할 항목정의
	const rules = [
		{field:form.userId,message:"아이디를 입력하세요."},
		{field:form.userpwd,message:"비밀번호 형식을 확인하세요.",
			test:regex.test.bind(regex)},
		{field:form.userName,message:"이름를 입력하세요."},
	];
	
	for(const {field,message,test } of rules){
		const val =field.value.trim();
		
		if(!val || (test && !test(val))){
			alert(message);
			field.focus();
			return false;
		}
	}
	return true;
	
}

</script>
</head>
<body>
<jsp:include page="m_header.jsp"/>
<form action="memberSave.jsp" name="member" method="post">
	<div class="container mt-5">
		<div class="row mb-3">
			<label class="col-1 text-start">회원번호</label>
			<div class ="col-2">
				<input type ="text" name ="userSeq" class="form-control">
			</div>
		</div>
		<div class="row mb-3">
			<label class="col-1 text-start">ID</label>
			<div class = "col-2">
				<input type="text" name="userId" class ="form-control">
			</div>
			<label class="col-1 text-start">비밀번호</label>
			<div class="col-5">
				<input type="password" name="userpwd" class="form-control" placeholder="8자이상(대,소,특수문자/숫자포함)">
			</div>
		</div>
		<div class="row mb-3">
			<label class="col-1 text-start">이름</label>
			<div class="col-2">
				<input type="text" name="userName" class="form-control">
			</div>
			<label class="col-1 text-start">생년월일</label>
			<div class="col-2">
				<input type="date" name="birth" class="form-control">
		</div>
		</div>
		<div class="row mb-3">
			<label class="col-1 text-start">나이</label>
			<div class="col-1">
				<input type="number" name="age" class="form-control" min="0" max="100">
			</div>
			<div class="col-1 text-start ms-5">성별</div>
				<div class="col-2">
					<input type="radio" name="gender" value="male">남자
					<input type="radio" name="gender" value="female" class="ms-5">여자
				</div>
		</div>	
		<div class="row mb-3">
			<label class="col-1 text-start">연락번호</label>
			<div class="col-2">
				<select name="phone1" class="form-select">
					<option>010</option>
					<option>011</option>
					<option>017</option>
					<option>018</option>
					<option>019</option>
				</select>
			</div>
			<div class="col-auto">-</div>
			<div class="col-2">
				<input type="text" name="phone2" class="form-control">
			</div>
			<div class="col-auto">-</div>
			<div class="col-2">
				<input type="text" name="phone3" class="form-control">
			</div>
		</div>
		<div class="row mb-3">
			<label class="col-1 text-start">주 소</label>
			<div class="col-5">
				<input type="text" name="address" class="form-control">
			</div>
		</div>
		<div class="row mb-3">
			<label class="col-1 text-start">E-mail</label>
			<div class="col-2">
				<input type="text" name="email1" class="form-control">
			</div>
			<div class="col-auto">@</div>
			<div class="col-3">
				<select name="email2" class="form-control">
					<option>naver.com</option>
					<option>gmail.com</option>
					<option>nate.com</option>
					<option>daum.net</option>
				</select>
			</div>
		</div>
		<div class="row mb-3">
			<label class="col-1 text-start mb-3 fw-bold">항목</label>
			<span class="me-4"></span>
			<div class="col-11 offset-1">
			<input type="radio" name="category" value="에어로빅" class="me-2">에어로빅
			<span class="me-4"></span>
			<input type="radio" name="category" value="댄스" class="me-2">댄스
			<span class="me-4"></span>
			<input type="radio" name="category" value="헬스" class="me-2">헬스
			<span class="me-4"></span>
			<input type="radio" name="category" value="요가" class="me-2">요가
			<span class="me-4"></span>
			<input type="radio" name="category" value="필라테스" class="me-2">필라테스
			<span class="me-4"></span>
			<input type="radio" name="category" value="수영" class="me-2">수영
			<span class="me-4"></span>
			</div>
		</div>
		<div class="row mb-3">
		<label class="col-1 text-start mb-3">신청개월</label>
		<div class="col-2">
		<input type="number" name="membershipMonth" class="form-control" min="0" max="36" placeholder="Month">
		</div>
		</div>
		<div class="d-flex justify-content-center gap=3">
		<button type="submit" class="btn btn-success" onclick="return form_va()">등록</button>
		<button type="reset" class="btn btn-success ms-3" >초기화</button>
		</div> 
		</div>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>