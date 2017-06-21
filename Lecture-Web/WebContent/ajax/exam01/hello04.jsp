<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#msgView {
		border : 1px solid red;
		height: 200px;
		width: 500px;
	}
</style>
<script src="/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script>
	/* 
		$.ajax 파라미터 json 형식
		url		: 요청 주소 (문자열)
		type	: 메소드 (문자열, 생략시 기본값 get)
		data	: 파라미터(문자열, 객체, 생략가능)
		success	: 수신 성공 (함수)
		error	: 수신 실패 (함수)
		async	: 동기/비동기 설정 (기본값 true)
		
	*/
	$(document).ready(function(){
		$(':button').click(function(){
			// alert('ajax 통신');
			$.ajax({
				url : "hello.jsp",
				success: function(data){
					// $('#msgView').html(data);
					$('#msgView').append(data);
				}
			});
		});
	});
</script>
</head>
<body>
	<h2>서버에서 받은 메시지</h2>
	<div id="msgView">
	</div>
	<br/>
	<input type="button" value="서버에 자료 요청"/>
</body>
</html>