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
		String sel = request.getParameter("sel");
		
		if (sel.equals("n")){
			response.sendRedirect("http://www.naver.com");
		}else if(sel.equals("g")){
			response.sendRedirect("http://www.google.com");
		}else if(sel.equals("d")){
			response.sendRedirect("http://www.daum.net");
		}
		%>
		
</body>
</html>