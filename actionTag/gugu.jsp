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
	try{
	int n = Integer.parseInt(request.getParameter("num"));
	
			if(n<10 && n>0){
		for (int i =1; i<=9; i++){
			out.println(n+"*"+i+"="+(n*i)+"<br>");
		}
		}else{ out.println("1~9 사이의 숫자 입력하세요");
		}
	}catch(NumberFormatException e){
		out.println("숫자를 입력하세요.");
	}

	%>
</body>
</html>