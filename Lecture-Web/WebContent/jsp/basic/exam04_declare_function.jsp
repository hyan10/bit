<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- class 멤버 변수 -->
	<%! private int sum=1; %>
	
<!-- 지역 변수 -->
	<% int sum=0; %>
	
	sum: <%= sum %> <br/>
	this.sum: <%= this.sum %> <br/>
	
	<%!
		public int add(int val1, int val2){
			int sum = 0;
			for(int i=val1; i<=val2; i++){
				sum += i;
			}
			return sum;			
		}
	%>
	
	1-10사이의 총합: <%=add(1,10) %><br/>
</body>
</html>