<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 객체 등록: 공유영역.setAttribute("이름","값");
	// 객체 조회: 공유영역.getAttribute("이름");
	// 공유영역 4가지: pageContext, request, session, application

	// pageContext영역에 msg 이름으로 "pageContext영역에 저장"으로 객체 등록
	pageContext.setAttribute("msg", ""); // "pageContext영역에 저장");
	String message = (String)pageContext.getAttribute("msg");
	
	request.setAttribute("msg", "request영역에 저장");
	request.setAttribute("id", "hong");
	
	out.println(message);

%>

<%-- <c:set var="test" value="test1"/> --%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	<c:set var="test" value="test234235235111"/>
//	 alert('<%= "tt" %>');
	 var a = <%= "tt" %>;
	 alert(<c:out value="ddd"/>);
//	 alert(a);

</script>
</head>
<body>
	<br/><br/>
	empty msg: ${ empty msg }<br/><br/>
	
	page msg: <%=message %><br/>
	msg: ${ msg }<br/><br/>
	id: ${ id }<br/><br/>
	
	<!-- 
		EL에서 4가지 공유 영역: pageScope, requestScope, sessionScope, applicationScope
	 -->

	page msg: ${pageScope.msg }<br/>
	req msg: ${requestScope.msg }<br/><br/>
	
	request msg: <%=request.getAttribute("msg") %><br/>
	request id: ${ request.id }<br/><br/>
	
	${ test }
</body>
</html>