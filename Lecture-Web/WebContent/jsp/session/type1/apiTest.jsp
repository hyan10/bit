<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 
	// 내장객체로 존재하므로 JSP에서는 안만들어도 된다.
	HttpSession session = request.getSession();
 */
 	
 	String id = session.getId();
 	int interval = session.getMaxInactiveInterval();
 	
 	session.setMaxInactiveInterval(60);
 	int interval2 = session.getMaxInactiveInterval();
 	
 	long lastTime = session.getLastAccessedTime();
 	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
 	String accessTime = sdf.format(new Date(lastTime));  // Date 클래스는 현재시간, long형 시간을 쓸 때만 이용 -> cal 클래스로 바뀜
 	
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	id(Session ID): <%= id %><br/>
	유효시간: <%=interval %>초<br/>
	변경된 유효시간: <%= interval2 %>초<br/>
	마지막 접근시간: <%= accessTime %><br/>
</body>
</html>