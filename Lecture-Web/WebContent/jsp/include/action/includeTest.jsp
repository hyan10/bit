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
	<%
		pageContext.setAttribute("id", "hong");
		request.setAttribute("id1", "hong");
	%>
	
	msg: <%=msg %><br/>
	pageContext msg: ${msg}<br/>
	<h2>인클루드전</h2>
	파라미터 미설정 호출<br/>
	<jsp:include page="one.jsp" />
	파라미터 설정 호출<br/>
	<h2>인클루드후</h2>
	<jsp:include page="one.jsp">
		<jsp:param name="id2" value="hong2"/>
		<jsp:param name="age" value="23"/>
	</jsp:include>
	id: ${id}<br/>
	id1: ${id1}<br/>
	phone: ${ phone }<br/>
	
</body>
</html>