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
<script>
	var httpRequest = null;
	
	function requestMsg(){
		
		// 1. XMLHttpRequest 객체 생성
		if(window.XMLHttpRequest){			
			httpRequest = new XMLHttpRequest();
		}else if(window.ActiveXObject){
			httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
		}else {
			httpRequest = null;
		}
		
		console.log(httpRequest);
	//	alert(httpRequest);
		
		
		// 2. 콜백함수 설정
		httpRequest.onreadystatechange = responseMsg;  // 콜백함수에 함수명 대입. 변수마냥ㅋㅋ
		
		// 3. 서버에게 비동기 요청 (httpMethod(post/get), url, t(asyn)/f(syn))
			// get방식은 url에 파라미터 보내므로 send(null)
			// post방식은 send(파라미터들)
		httpRequest.open("GET","/Lecture-Web/Hello",true); // 비동기면 true
		httpRequest.send(null);
		
	
	}
	
	function responseMsg(){
		// 4. 서버에서 응답 완료
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				//alert('서버 응답 완료');
				console.log(httpRequest.responseText);
				var view = document.getElementById("msgView");
				view.innerHTML += httpRequest.responseText;
			}
		}
	}
</script>
</head>
<body>
	<h2>서버에서 받은 메시지</h2>
	<div id="msgView">
		
	</div>
	<br/>
	<input type="button" value="서버에 자료 전송" onclick="requestMsg()"/>
</body>	
</html>