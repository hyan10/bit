<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=d641aad6acd477720fefaa24bb59a594"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(document).ready(function(){
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	$('#btn01').click(function(){
		setBounds();
	});
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	 
	 // 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
	var points = [
	    new daum.maps.LatLng(33.452278, 126.567803),
	    new daum.maps.LatLng(33.452671, 126.574792),
	    new daum.maps.LatLng(33.451744, 126.572441)
	];
	
	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	var bounds = new daum.maps.LatLngBounds();    
	
	var i, marker;
	for (i = 0; i < points.length; i++) {
	    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
	    marker =     new daum.maps.Marker({ position : points[i] });
	    marker.setMap(map);
	    
	    // LatLngBounds 객체에 좌표를 추가합니다
	    bounds.extend(points[i]);
	}
	
	function setCenter() {
	    // 이동할 위도 경도 위치를 생성합니다 
	     var moveLatLon = new daum.maps.LatLng(37.494866, 127.027561);
	    
	    // 지도 중심을 이동 시킵니다
	    map.setCenter(moveLatLon);
	}
	
	function setBounds() {
	    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
	    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
	
	    map.setBounds(bounds);
	}
});
</script>
</head>
<body>
	<h2>지도 서비스</h2>
	<div id="map" style="width:500px; height:400px"></div><br/>
	<button id="btn01">비트 위치 보기</button>
</body>
</html>