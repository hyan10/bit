<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Cookie[] cookies = request.getCookies();

	StringBuilder sb = new StringBuilder();

	if(cookies != null){
		for(Cookie c : cookies){
			out.println(c.getName()+": "+c.getValue());
			
			sb.append("쿠키이름: "+c.getName()+"<br/>");
			sb.append("쿠키값: "+c.getValue()+"<br/>");
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
<%--  	<c:forEach var="cookie" items="${cookies}">
		${cookie.getName()} <br/>
	</c:forEach> --%>
	
	<%= sb.toString() %>
	
	<a href="makeForm.jsp">쿠키설정 이름</a>
</body>
</html>