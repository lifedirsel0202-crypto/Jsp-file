<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first.jsp</title>
</head>
<body>
<h1> 이 파일은 first.jsp입니다.</h1>
	<jsp:useBean id="member" class="com.dto.MemberBean" scope="request"/>
	
	<jsp:setProperty name="member" property="id" value="20260929" />
	<jsp:setProperty name="member" property="name" value="ParkChaeYoon"/> <!-- member.setId(20260929); -->
	
	<jsp:getProperty name="member" property="id"/>
	<!-- member.getId() 하는것과 같다 -->
	<jsp:getProperty name="member" property="name"/>
	
	<%=member.getId() %>
	<%=member.getName() %>
</body>
</html>