<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="id" value="hong dddddddggg" scope="request" />
	msg : <%=msg %><br/>
	<h2>인클루드전</h2>
	파라미터 미설정 호출<br/>
	<c:import url="one.jsp"/>
	파라미터 설정 호출<br/>
	<c:import url="one.jsp">
		<c:param name="id" value="hong"/> 
		<c:param name="age" value="23"/>
	</c:import>
	<h2>인클루드후</h2>
	<h2>다음사이트 인클루드</h2>
	<c:import url="http://www.daum.net"/>
	
</body>
</html>