<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	msg: <%=msg %><br/>
	pageContext msg: ${msg}<br/>
	<h2>인클루드전</h2>
	<%@ include file="one.jsp" %>
	<h2>인클루드후</h2>

</body>
</html>