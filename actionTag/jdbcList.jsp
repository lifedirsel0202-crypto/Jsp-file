<%@page import="java.sql.*"%>
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

	Connection conn=null;
	Statement stmt= null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JSPBookDB","root","admin");
		
		stmt =conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from student");
		while(rs.next()){
			String id = String.valueOf(rs.getInt(1));	
		
	%>	
			
		<ul>
		<li><%=id%></li>
		<li><%=rs.getString(2) %></li>
		<li><%=rs.getString(3) %></li></ul>
<% 
		}
	}catch(Exception e){
		out.print(e.getMessage());
	}
%>

</body>
</html>