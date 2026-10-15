
<%@page import="com.dao.MemberR"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% MemberR r= new MemberR();
%>
<jsp:include page="header.jsp"/>
<main class="AddBox">
<h3 class="title">홈쇼핑 회원 등록</h3>
<form action="memberL.jsp" method="post">
<table>
<tr>
<td><label>등록번호 </label></td>
<td><input type="text" name="serial" value="<%=r.contNum()%>"></td>
</tr>
<tr>
<td><label> I D </label></td>
<td><input type="text" name="userId" ></td>
<td><label> 비밀번호 </label></td>
<td><input type="text" name="pwd"></td></tr>
<tr>
<td><label> 이 름 </label></td>
<td><input type="text" name="name"></td>
<td><label> 생년월일 </label></td>
<td><input type="date" name="birth"></td>
</tr>
<tr>
<td><label>연락처</label></td>
<td colspan="5"><select name="phone1">
<option>010</option>
<option>011</option>
<option>019</option>
<option>017</option>
<option>018</option>
</select>
<span> - </span>
<input type="text" name="phone2"><span> - </span>
<input type="text" name="phone3"></td>
</tr>
<tr>
<td><label> 주 소 </label></td>
<td colspan="5"><input type="text" name="address"></td>
</tr>
<tr>
<td><label>도시코드</label></td>
<td><select name="cityCode">
<optgroup label="아시아">
<option value="한국">82(한국)</option>
<option value="일본">81(일본)</option>
<option value="중국">86(중국)</option>
<option value="인도">91(인도)</option>
<option value="베트남">84(베트남)</option>
</optgroup>
<optgroup label="유럽">
<option value="러시아">7(러시아)</option>
<option value="영국">44(영국)</option>
<option value="프랑스">33(프랑스)</option>
<option value="독일">49(독일)</option>
<option value="네덜란드">31(네덜란드)</option>
</optgroup>
<optgroup label="북아메리카">
<option value="미국">1(미국)</option>
<option value="멕시코">52(멕시코)</option>
<option value="캐나다">1(캐나다)</option>
</optgroup>
</select></td>
</tr>
</table>
<div class="btn">
<button type="submit">등록</button>
<button type="reset">초기화</button>
</div>
</form>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>