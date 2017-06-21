<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 변수 cnt를 공유 영역에 등록 (page) <br/>
	
	<c:set var="cnt" value="1" scope="page" />
	<c:set var="cnt" value="10" scope="request" />
	
	공유영역에 등록된 cnt 변수값을 출력<br/>
	${ pageScope.cnt }<br/><br/>
	
	cnt변수에 1을 증가<br/>
	<c:set var="cnt" value="${cnt+1}" scope="request" />
	<c:set var="cnt" value="${requestScope.cnt+1}" scope="page" />
	<c:set var="cnt" value="${requestScope.cnt + cnt}" scope="session" />
	
	page cnt: ${ cnt }<br/>
	request cnt: ${ requestScope.cnt }<br/>
	session cnt: ${ sessionScope.cnt }<br/><br/>
	
	<!-- reuest영역에 있는 cnt 변수 삭제 -->
	<c:remove var="cnt" scope="request"/>
	
	request cnt 삭제 후<br/>
	page cnt: ${ cnt }<br/>
	request cnt: ${ requestScope.cnt }<br/>
	session cnt: ${ sessionScope.cnt }<br/><br/>
	
	<!-- scope 지정하지 않고 cnt 변수 삭제 -->
	<c:remove var="cnt" />
	
	cnt 삭제 후<br/>
	page cnt: ${ cnt }<br/>
	request cnt: ${ requestScope.cnt }<br/>
	session cnt: ${ sessionScope.cnt }<br/>
		
</body>
</html>

<%--
		JSP공유영역		EL공유영역		 		JSTL공유영역
		pageContext		pageScope			page
		request			requestScope 		request
		session			sessionScope		session
		application		applicationScope	application
--%>