<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	String password = (String)session.getAttribute("password");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	id: ${ sessionScope.id }<br/>
	password: <%= password %><br/>
	
	<hr/>
	id: ${id }<br/>
	password: ${ sessionScope.password }<br/>
	
	<br/>
	
	<a href="remove.jsp">세션삭제</a>
</body>
</html>