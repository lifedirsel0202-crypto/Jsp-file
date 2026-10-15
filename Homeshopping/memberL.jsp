<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.MemberR"%>
<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>
<%
	request.setCharacterEncoding("utf-8");
		 String serial=request.getParameter("serial");		//등록번호
		 String userId=request.getParameter("userId");		//아이디
		 String pwd=request.getParameter("pwd");			//비밀번호
		 String name=request.getParameter("name");		//이름
		 String birth=request.getParameter("birth");		//생년월일
		 String phone1=request.getParameter("phone1");		//핸드폰번호
		 String phone2=request.getParameter("phone2");		//핸드폰번호
		 String phone3=request.getParameter("phone3");
		 String phone= phone1+"-"+phone2+"-"+phone3;//핸드폰번호
		 String address=request.getParameter("address");		//주소
		 String cityCode=request.getParameter("cityCode");		//도시코드
		 
		 User user= new User();
		 
		 user.setSerial(serial);
		 user.setUserId(userId);
		 user.setPwd(pwd);
		 user.setName(name);
		 user.setBirth(birth);
		 user.setAddress(address);
		 user.setPhone(phone);
		 user.setCityCode(cityCode);
		 
		 if(user.getSerial() !=null){
		 MemberR mr = new MemberR();
		 mr.addMember(user);}
		 
%>
<main class="listBox">
<h3 class="memberList_h3"> 회원 목록</h3>
<%
	MemberR member = new MemberR();
	ArrayList<User> uList = member.getMember();
%>
<table>
<tr>
<th>등록번호</th>
<th>아이디</th>
<th>비밀번호</th>
<th>이름</th>
<th>생년월일</th>
<th>핸드폰번호</th>
<th>주소</th>
<th>도시코드</th></tr>
<%
for (User userL: uList){
%>
<tr>
<td><%=userL.getSerial()%></td>
<td><%=userL.getUserId()%></td>
<td><%=userL.getPwd() %></td>
<td><%=userL.getName() %></td>
<td><%=userL.getBirth() %></td>
<td><%=userL.getPhone() %></td>
<td><%=userL.getAddress() %></td>
<td><%=userL.getCityCode()%></td>
<td><a href="memberA.jsp"><button class="editBtn">수정</button></a></td>
</tr>
<%} %>

</table>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>