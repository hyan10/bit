<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<hr/>
id: ${id}<br/>
id1: ${id1}<br/>
<h2> 날아온 파라미터 정보</h2>
id2: ${param.id2}<br/>
age: ${param.age }<br/>
<h2>인클루드된 내용</h2>	
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<h2>인클루드된 내용</h2>
<hr/>

<%
	request.setAttribute("phone", "010-111-11");
	
%>