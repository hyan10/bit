<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] names = {"가나", "다라", "마바", "사아", "자차카"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length",names.length);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	1-10사이의 정수 출력<br/>
	<c:forEach var="i" begin="1" end="10">
		${i}&nbsp; 
	</c:forEach>
	<br/>
	
	년도 선택:
	<select>
		<c:forEach var="year" begin="1990" end="2017" step="1">
			<option>${year }</option>
		</c:forEach>
	</select>
	
	<br/><br/>
	
	index : count : first : last : element<br/>
	<c:forEach var="name" items="${names}" varStatus="loop">
		${ loop.index } : ${ loop.count } : ${ loop.first } : ${ loop.last } : ${ name }<br/>
	</c:forEach>
	
	<br/>
	
	varStatus-first : 
	<c:forEach var="name" items="${names}" varStatus="loop">
		<c:if test="${ not loop.first }">,</c:if>
		${ name }
	</c:forEach>
	<br/>
	
	varStatus-last : 
	<c:forEach var="name" items="${names}" varStatus="loop">
		${ name }
		<c:if test="${ not loop.last }">,</c:if>
	</c:forEach>
	<br/><br/>

	
	index : 
	<c:forEach var="i" begin="0" end="${length-1}" varStatus="loop">
		<%-- ${loop.first} --%>
		${names[i]}<c:if test="${ i < (length-1) }">,</c:if>
	</c:forEach>
	
	<br/>

	set cnt :
	<c:set var="cnt" value="1"/>
	<c:forEach var="name" items="${names }">
		<c:if test="${ cnt ne 1 }">,</c:if>
		${name}
		<c:set var="cnt" value="${cnt+1 }"/>
		<%-- <c:if test="${ name != names[length-1] }">
			,
		</c:if> --%>
	</c:forEach>
	<c:remove var="cnt" scope="page"/>
	
</body>
</html>