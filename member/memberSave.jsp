<%@page import="com.dto.Member"%>
<%@page import="com.dao.MemberRepasitory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSava</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");


 			//회원고유번호 "USER0001"
 	String userName =request.getParameter("userName");	//회원명
 	String userId = request.getParameter("userId");		//회원아이디
 	String userpwd= request.getParameter("userPwd");		//회원비밀번호
	int age=Integer.parseInt(request.getParameter("age"));			//회원연령
	String address=request.getParameter("address");		//회원주소
 	String birth=request.getParameter("birth");		//회원생년월일 text
 	String gender=request.getParameter("gender");		//성별 //radio button name같게
 	String phone1=request.getParameter("phone1"); 		//핸드폰번호 칸 2- 앞 select 010 뒤 8자리 text
 	String phone2=request.getParameter("phone2"); 		//핸드폰번호 칸 2- 앞 select 010 뒤 8자리 text
 	String phone3=request.getParameter("phone3");
 	String phone=phone1+"-"+phone2+"-"+phone3;//핸드폰번호 칸 2- 앞 select 010 뒤 8자리 text
 	String email1=request.getParameter("email1");		//e-mail 칸2- 앞 text /뒤는 select
 	String email2=request.getParameter("email2");
 	String email=email1+"@"+email2;//e-mail 칸2- 앞 text /뒤는 select
 	int membershipMonth=Integer.parseInt(request.getParameter("membershipMonth"));			//몸무게
	 String category=request.getParameter("category");	//항목 checkbox
	 
	Member member = new Member();
	 
	
	 member.setUserName(userName);
	 member.setUserId(userId);
	 member.setUserpwd(userpwd);
	 member.setAge(age);
	 member.setAddress(address);
	 member.setBirth(birth);
	 member.setEmail(email);
	 member.setGender(gender);
	 member.setPhone(phone);
	 member.setCategory(category);
	 member.setmembershipMonth(membershipMonth);
	 
	 MemberRepasitory mr= new MemberRepasitory();
	 
	 mr.addMember(member);
	 
	 %>
<jsp:forward page="memberList.jsp"></jsp:forward>
</body>
</html>