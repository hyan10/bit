<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
		http://localhost:8000/Lecture-Web/jsp/el/exam02.jsp?id=aaa&name=bbb
	-->
	
	id: <%= request.getParameter("id") %> <br/>
	id: ${ param.id } <br/>
	
	name: <%= request.getParameter("name") %> <br/>
	name: ${ param.name } <br/>
	
	param: ${param} <br/>
	
	<!--
		http://localhost:8000/Lecture-Web/jsp/el/exam02.jsp
		?id=aaa&name=bbb&hobby=reading&hobby=music
	-->
	
	<%
		String[] hobby = request.getParameterValues("hobby");
		if(hobby == null){
			hobby = new String[]{"파라미터 없음"};
		}
	%>
	
 	hobby[0]: <%= hobby[0] %> <br/> 
	hobby[0]: ${ param.hobby } <br/>
	
	paramValues: ${ paramValues } <br/>
	hobby[0]: ${ paramValues.hobby[0] } <br/>

	
	
</body>
</html>