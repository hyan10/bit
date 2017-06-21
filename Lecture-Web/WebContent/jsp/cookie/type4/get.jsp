<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Cookie[] cookies = request.getCookies();

	StringBuilder sb = new StringBuilder();

	if(cookies != null){
		for(Cookie c : cookies){
			
			String name = URLDecoder.decode(c.getName(),"utf-8");
			String value = URLDecoder.decode(c.getValue(),"utf-8");
			
			sb.append("쿠키이름: "+name+", ");
			sb.append("쿠키값: "+value+"<br/>");
		}
	}else {
		sb.append("설정된 쿠키 없음");
	}
	
	pageContext.setAttribute("cookies", cookies);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설정된 쿠키 정보</h2>
 	<c:forEach var="cookie" items="${cookies}">
		${cookie.name} <br/>
	</c:forEach>
	
	<%= sb.toString() %>
	
	<a href="remove.jsp">쿠키 삭제</a>
</body>
</html>