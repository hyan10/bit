<%@page import="kr.co.bit.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${not empty member }">
			id: ${ member.id }<br/>
			password: ${ member.password }<br/>
		</c:when>
		<c:otherwise>
			설정된 세션 정보 없음<br/>
		</c:otherwise>
	</c:choose>
	
	<hr/>
	
	<% if(member!=null){ %>
		id: <%=member.getId() %><br/>
		password: ${ member.password }<br/>
	<% } else {
	%>	
		설정된 세션 정보 없음<br/>	
<%	} %>

	
	<br/>
	
	<a href="remove.jsp">세션삭제</a>
</body>
</html>