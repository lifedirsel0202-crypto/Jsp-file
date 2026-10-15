<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.*,com.dto.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
<jsp:include page="m_header.jsp"/>
<%
	MemberRepasitory mR= new MemberRepasitory();
	ArrayList<Member> userList = mR.getUser();
%>
<table  cellpadding="10" cellspacing="0" width="90%" style="margin:auto">
	<tr>
		<th>회원번호</th>
		<th>ID</th>
		<th>이름</th>
		<th>생년월일</th>
		<th>나이</th>
		<th>성별</th>
		<th>연락번호</th>
		<th>주소</th>
		<th>E-mail</th>
		<th>등록항목</th>
		<th>등록개월수</th>
	</tr>
	<%
		for(Member member:userList){
	%>
	<tr>
		<td><%=member.getUserSeq()%></td>
		<td><%=member.getUserId()%></td>
		<td><%=member.getUserName()%></td>
		<td><%=member.getBirth()%></td>
		<td><%=member.getAge()%></td>
		<td><%=member.getGender()%></td>
		<td><%=member.getPhone()%></td>
		<td><%=member.getAddress()%></td>
		<td><%=member.getEmail() %></td>
		<td><%=member.getCategory()%></td>
		<td><%=member.getmembershipMonth() %></td>
		</tr>
		
		<%
		}
		%>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>