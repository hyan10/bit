<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("cName");
			name = URLEncoder.encode(name,"utf-8");
	String value = request.getParameter("cValue");
			value = URLEncoder.encode(value, "utf-8");
	String age = request.getParameter("cAge");

	Cookie cookie = new Cookie(name, value);
	
	// 분단위 유효시간 설정
	if(age != null && age.trim().length() >0){
		cookie.setMaxAge(Integer.parseInt(age)*60);
	}
	
	cookie.setMaxAge(Integer.parseInt(age!=null?age:"-1/60")*60);
	
	response.addCookie(cookie);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>쿠키설정 완료</h2><br/>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>