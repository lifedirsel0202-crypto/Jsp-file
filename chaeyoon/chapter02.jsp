<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag:시작페이지만들기</title>
</head>
<%-- 선언문태그 [메소드] --%>

<%! int count = 0; %> <%-- ,전역변수 count 를 0으로 초기화 --%>

<body>
	page Count is :	<%-- 스크립틀릿 태그 --%>
	<%
		out.println(++count);%>
		<br>
	<%
		out.println(myMethod(0));%> <%-- 전역메소드 myMethod() 호출 --%>
	
	<%! public int myMethod(int count){
		return ++count;
	}
		%>
		<br>
		<%! int data = 50; %>   <%-- 전역변수 : jsp 전체에서 사용가능함. --%>
		<% 
			out.println("Value of the variable is :" +data);%>
			
			<br>
			<%! int sum(int a, int b){
					return a+b;} %>  <%-- 전역메소드 --%>
			<% 
				out.println("2+3="+sum(2,3));%>
		<br>
		<%-- 전역 메서드 --%>
		<%! String makeItLower(String data){	
			return data.toLowerCase();
		}
			%>
			
			<% out.println(makeItLower("Hello, World")); %>
	<br>
	<%
		int a = 2;
		int b = 3;
		int sum = a + b;
		out.println ("2 + 3 = " + sum);
	%>
	<br>
	<%-- 0~10까지 짝수 추력하는 스클립틀릿 태그 --%>
	<%
		for (int i=0; i<=10; i++){
			if (i%2==0)
			out.println(i + "<br>");}%>
			
	<%-- 표현문 태그--%>
	PAGE COUNT IS 
	<%=++count %> <br>
	
</body>
</html>