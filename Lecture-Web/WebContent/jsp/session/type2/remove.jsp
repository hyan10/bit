<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	session.removeAttribute("id");
	session.removeAttribute("password");
 	*/

 	session.invalidate();  // 세션 삭제
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 삭제 완료</h2>
	<a href="get.jsp">설정된 세션 보기</a>
</body>
</html>