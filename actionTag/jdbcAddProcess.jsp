<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file= "jdbcAction.jsp"%>
<% 
	request.setCharacterEncoding("utf-8");
	
	String name= request.getParameter("userName");
	String pwd= request.getParameter("userPwd");
	try{
	out.println("이름 :"+name+"비밀번호:"+pwd);
	// String sql = "INSERT INTO student(name,password) VALUES('"+name+"','"+pwd+"')";
	//String sql= "UPDATE student SET name ='홍길순' WHERE name='"+name+"'";
	String sql= "DELETE FROM student WHERE name= '홍길순'";

	int rs= stmt.executeUpdate(sql);
	out.println(sql);
	out.print("등록된 행 수:"+ rs);
	
	}catch(Exception e){
		out.print("정상등록안됨");
		
		%>
		<script> alert("오류입니다. 관리자에게 문의하세요")</script>
		<% 
	}
	%>
</body>
</html>