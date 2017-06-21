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
	<h2>결과화면</h2> <!-- forward를 만나 함수처럼 실행되는 순간 다 없애고 page url로 요청이 아예 넘어감 - 출력 안됨 -->

	<c:if test="${ param.id eq 'admin'}">
		<jsp:forward page="admin.jsp"/>
	</c:if>
	<c:if test="${ param.id ne 'admin'}">
		<h2>${param.id}님 환영</h2>
		<c:set var="id" value="${param.id }" scope="request"/>
		<jsp:forward page="user.jsp">
			<jsp:param name="id" value="${param.id}"/>
		</jsp:forward>
	</c:if>
	
	<h2>결과화면 종료</h2> <!-- include일 경우에는 출력이 된다. -->
</body>
</html>