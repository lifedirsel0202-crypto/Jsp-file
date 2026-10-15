<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("userID");  // 받고싶은 데이터의 name 을 받아오는것 파라미터
		String pwd = request.getParameter("userPwd");
		%>
		
		이름 : <%=name %>
		비밀번호 : <%=pwd %>
</body>
</html>