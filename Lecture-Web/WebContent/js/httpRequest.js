/**
 * Ajax와 관련된 함수 집합
 */

var httpRequest = null;

function getXMLHttpRequest(){
		
		if(window.ActiveXObject){
			return new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		if(window.XMLHttpRequest)
			return new XMLHttpRequest();
		
		return null;
	}
	
function sendRequest(method, url, param, callback){
	httpRequest.onreadystatechange = callback;
	httpRequest.open(method, url, true);
	httpRequest.send(param);
}


function sendProcess(method, url, params, callback){
	httpRequest = getXMLHttpRequest();
	httpRequest.onreadystatechange = callback;
	
	var httpMethod = method;
	
	console.log(httpMethod);
	
	if(httpMethod != 'GET' && httpMethod !='POST'){
		httpMethod = "GET"; 
	}
	
	// 파라미터 설정
	var httpParams = '';
	if(params != null && params != ''){		
		for(var key in params){
			if(httpParams != '')
				httpParams += '&';
			httpParams+= key + '='+ encodeURIComponent(params[key]);
		}
	}
	
	var httpUrl = url;
	if(httpMethod == 'GET' && httpParams !=''){
		httpUrl = httpUrl + '?' + httpParams;
	}
//	console.log(httpParams!=null?httpParams:"null");
	
	httpRequest.open("get", httpUrl , true);
	if(httpMethod == 'POST'){
		httpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	}
	httpRequest.send(httpMethod=='GET'? null:httpParams);
	
	/*
	if(method=="GET"){
		httpRequest.open(method, url+"?"+params, true);
		httpRequest.send(null);
	}else if(method=="POST"){
		
	}*/
	
}