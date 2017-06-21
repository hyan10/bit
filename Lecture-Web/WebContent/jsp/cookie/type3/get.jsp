<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	Cookie[] cookies = request.getCookies();
	StringBuilder sb = new StringBuilder();

	for(Cookie cookie : cookies){
		String name = URLDecoder.decode(cookie.getName(), "utf-8");
		String value = URLDecoder.decode(cookie.getValue(), "utf-8");
		
		sb.append("쿠기이름: "+name+", ");
		sb.append("쿠기값: "+value+"<br/>");
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>설정된 쿠키 정보</h2>
	<%=sb.toString() %>
	<a href="makeForm.jsp">쿠키 설정</a>
</body>
</html>