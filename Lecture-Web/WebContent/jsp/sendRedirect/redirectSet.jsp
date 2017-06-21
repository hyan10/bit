<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>결과화면</h2>
	
	<!-- 응답 후 다른 url로 이동했기 때문에 request 영역 공유 안 됨 -->
	<c:set var="id" value="${param.id}" scope="request"/>

	<c:if test="${ param.id eq 'admin' }">
		<%-- <c:param name="id" value="${param.id}"/> --%> <!-- 안됨!! -->
		<% response.sendRedirect("admin.jsp"); %>	
	</c:if>
	<c:if test="${ param.id ne 'admin' }">
		<%-- <c:param name="id" value="${param.id}"/> --%>
		<% response.sendRedirect("user.jsp?id="+request.getParameter("id")); %>
	</c:if>
	
	<h2>결과화면 종료</h2> <!-- include일 경우에는 출력이 된다. -->
</body>
</html>