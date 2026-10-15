<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 태그</title>
</head>
<body>
이름 <input type ="text"><br><br>
<!-- id name, value, placeholder, readonly, disabled, maxlength(최대입력길이)-->
<!--readonly : 값을 전달 o(submit 시 value값 전달, 수정만 x) // disabled : 값 전달 x -->
<!--  id는 겺치면 안됨/ autofocus : 커서 지정 / required - 필수입력 / -->
<label for="exampleColorInput" class="form-label">form</label>
<input type="color" class="form-control form-control-color" id="exampleColorInput" value="#563d7c" title="Choose your color">
<br><br>
<input type="radio" id = "rdo_1" value="m" checked>남자
<input type="radio" id = "rdo_2" value="w">여자<br><br>
<input type="checkbox" id="chk_1" value ="apple"><label for ="chk_1">사과</label>
<input type="password"><br>
<input type="hidden" name="inputHdn" value ="hidden123"><!-- 안보이지만 값은 넘어가는 요소 -->
<input type="reset" value="초기화">
</body>
</html>