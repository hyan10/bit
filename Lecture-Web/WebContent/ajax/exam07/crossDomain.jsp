<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#searchResult {
		border: 1px solid red;
		width: 70%;
		height: 800px;
	}
</style>
<script src="/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script>
/* 남의 웹서버꺼 이용할라믄 dataType:"jsonp" 가 필요하다. */
	$(document).ready(function(){
		$(':button').click(function(){
		$.ajax({
			url: "https://apis.daum.net/search/blog",
			type: "get",
			data: {apikey:"d641aad6acd477720fefaa24bb59a594", q:$('#search').val(), output:"json", result:5},
			dataType: "jsonp",
			success: callback,
			error: function(request, status){
				alert(request.errorType);
			},
		});
		
			
		});
		
	});
	
	function callback(jsonData){
		
		var list = jsonData.channel.item;
		var title = "";
		var description = "";
		var link = "";
		
		console.log(list);

/* 		for(var i=0; i<list.length; i++){
			var item = list[i];
			title = item.title;
			description = item.description;
			link = item.link;
			
		//	$('#searchResult').append("<hr><a href=\""+link+"\">"+title+"</a><br/> "+description+"<br/>");
			$('#searchResult').append("<hr><a href='"+link+"' target='_blank'>"+title+"</a><br/> "+description+"<br/>");
			
		} */
		
		 list.each(function(){
			title = $(this).title;
			description = $(this).description;
			link = $(this).link;
//			$('div').append(title+": "+description);
			$('#searchResult').append("<hr><a href='"+link+"' target='_blank'>"+title+"</a><br/> "+description+"<br/>");
		});
	}
</script>
</head>
<body>

	<h2>블로그 검색 페이지</h2>
	검색어 입력: <input id="search" type="text" name="searchWord"/>
	<input type="button" value="검색"/>
	<br/>
	
	<h4>검색 결과</h4>
	<div id="searchResult"></div>
</body>
</html>