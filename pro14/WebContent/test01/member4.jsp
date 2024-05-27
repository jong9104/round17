<%@ page language="java" contentType="text/html; charset=UTF-8"
	import = "java.util.*, sec01.ex01.*"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean" />
<jsp:setProperty name="m1" property="*" />
<jsp:useBean id="membersList" class="java.util.ArrayList" />
<%
	MemberBean m2 = new MemberBean("son", "1234", "손흥민", "son@test.com");
	membersList.add(m1);
	membersList.add(m2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
<%		for (int i=0; i<membersList.size();i++){ %>		
		<tr align="center">
			<td>${membersList[i].id}</td>
			<td>${membersList[i].pwd}</td>
			<td>${membersList[i].name}</td>
			<td>${membersList[i].email}</td>
<%
		}
%>
		</tr>
	</table>
</body>
</html>