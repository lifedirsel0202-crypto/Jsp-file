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
	String id= request.getParameter("id");
	String passwd= request.getParameter("passwd");
	String name= request.getParameter("name");
	String phone1= request.getParameter("phone1");
	String phone2= request.getParameter("phone2");
	String phone3= request.getParameter("phone3");
	String sex= request.getParameter("sex");
	String[] hobby= request.getParameterValues("hobby");
	String commet= request.getParameter("commet");
	%>
	
	<h2>환영합니다</h2>
	<p><%=id%>[<%=name %>]님의 가입이 정산적으로 되었습니다.</p>
	<p><%=passwd %>[<%=passwd %>]님의 비번입니다.
	<p>
	<%
		 if(hobby != null){
			 for (String h:hobby){
				 out.println(" "+h);
			 }
		 }
	
	%>
	</p>
</body>
</html>