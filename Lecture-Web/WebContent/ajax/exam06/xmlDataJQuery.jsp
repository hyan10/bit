<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/Lecture-Web/js/httpRequest.js"></script>
<script src="/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script>
 
	function sendOnClick(){
		sendProcess("POST", "sample.xml", null, callback);
	}
	
		var httpRequest = getXMLHttpRequest();
	function callback(){
		var msg='';
		
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				alert('서버 응답 완료');
				
				var xmlDoc = $.parseXML(httpRequest.responseText);
				console.log(xmlDoc);
				var memberList = $(xmlDoc).find("member");
				console.log(memberList);
				msg+= '회원수: '+memberList.length+'명\n';
				
				memberList.each(function(index) {
					console.log(index+":"+this);
					var id = $(this).find('id').text();
					var name = $(this).find('name').text();
					console.log(id+"("+name+")");
					msg += id+"("+name+")\n";
				});
				
			}
		}
		
		debugTrace(msg);
	}
	
	function clearOnClick(){
		var debug = document.getElementById("debug");
		debug.value = "";		
	}
	
	function debugTrace(msg){
		var debug = document.getElementById("debug");
		debug.value += msg;
	}
</script>
</head>
<body>
	<h2>XML Data (JQuery) 응답 예제</h2>
	
	<form>
		<textarea rows="10" cols="80" id="debug"></textarea><br/>
		<input type="button" value="서버에 자료 요청" onclick="sendOnClick()"/>
		<input type="button" value="초기화" onclick="clearOnClick()"/>
	</form>
</body>
</html>