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
	<%-- 
		http://localhost:8000/Lecture-Web/jsp/el/core/ifTagExam.jsp?type=XXX
	 --%>
	
	<c:if test="${ empty param.type }" >
		type 파라미터가 전송되지 않았습니다.<br/>
	</c:if>
	
	<%-- 
		http://localhost:8000/Lecture-Web/jsp/el/core/ifTagExam.jsp?type=S|U
	 --%>
	 
	<c:if test="${ param.type == 'S' }" >  <!-- 'S' "S" 똑같지만 "" 내부에서 써야하므로 ''를 씀 -->
		관리자 입니다.<br/>
	</c:if>
	 
	<c:if test="${ param.type eq 'U' }" >
		일반 사용자 입니다.<br/>
	</c:if>
	 
</body>
</html>