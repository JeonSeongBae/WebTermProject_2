<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.regex.Matcher"%>
<%@ page import="java.util.regex.Pattern"%>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>checkSubmit_제출하기 확인</title>
</head>
<body>
	<%
		String answer = ""; // 초기값 == 형식에 맞지 않음
		String ID = request.getParameter("ID");
		String Password = request.getParameter("Password");
		String Name = request.getParameter("Name");
		String Email = request.getParameter("Email");

		// 각 입력창에 빈칸이 있는지 확인
		if (ID == "")
			answer = "blankID";
		else if (Password == "")
			answer = "blankPassword";
		else if (Name == "")
			answer = "blankName";
		else if (Email == "")
			answer = "blankEmail";

		String checkID = "^[a-zA-Z0-9]{6,10}$";
		// 		String checkPassword = "^((?=.*[a-z])+(?=.*[A-Z])+(?=.*\\d)+(?=.*\\W)).{6,20}$"; // 대문자 소문자 숫자 특수기호 포함
		String checkPassword = "^[a-zA-Z0-9]{6,10}$";
		Pattern pattern = Pattern.compile(checkPassword);
		Matcher matcher = pattern.matcher(Password);
		if (!matcher.find()) // 비밀번호 확인
			answer = "checkPassword";

		pattern = Pattern.compile(checkID);
		matcher = pattern.matcher(ID);
		if (!matcher.find()) // ID 확인
			answer = "checkID";

		// 응답을 전해줄 객체를 생성하여 전해줌
		PrintWriter printWriter = response.getWriter();
		printWriter.print(answer);
		printWriter.flush();
		printWriter.close();
	%>
</body>
</html>