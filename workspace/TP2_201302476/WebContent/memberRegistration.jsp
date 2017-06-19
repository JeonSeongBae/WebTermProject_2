<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>registration</title>
</head>
<body>
		<table border="2">
			<thead></thead>
			<tbody>
				<tr>
					<td>형식에 맞게 양식을 작성해주세요</td>
				</tr>
			</tbody>
			<tfoot></tfoot>
		</table>
		<table>
			<thead></thead>
			<tbody>
				<tr>
					<td>ID</td>
					<td><input id="ID" type="text" placeholder="문자 or 숫자" required><br></td>
					<td><input type="button" value="중복체크" onclick="checkID()" required></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input id="Password" type="password" placeholder="문자+숫자, 8자리 이상" required><br></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input id="Name" type="text" placeholder="문자열만 입력 가능" required><br></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input id="Email" type="email" required><br></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td></td>
					<td><input type="button" value="제출하기" onclick="checkSubmit()" required></td>
				</tr>
			</tfoot>
		</table>

</body>
</html>