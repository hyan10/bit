<%@page import="kr.co.bit.board.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO b = new BoardVO();
	b.setNo(1);
	b.setTitle("test");
	
	pageContext.setAttribute("board", b);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>객체 표현 방식 - 자바빈즈클래스</title>
</head>
<body>
	
	no: <%= b.getNo() %><br/>
	title: <%= b.getTitle() %><br/><br/>
	
	page no: <%= ((BoardVO)pageContext.getAttribute("board")).getNo() %> <br/>
	page title: <%= ((BoardVO)pageContext.getAttribute("board")).getTitle() %><br/><br/>
	
	<!-- 등록한 객체 이름으로 접근한다. -->
	el no: ${ pageScope.board.no }<br/>
	el no: ${ board.no }<br/>   <!-- getter 생략된 형태 -->
	el title: ${ board.title }<br/>
	
	<!-- getter가 없으므로 에러남 -->
	<%-- el aaa: ${ board.aaa }<br/> --%>
	
</body>
</html>