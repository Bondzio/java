<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
<script type="text/javascript">
var xhr = null; // 

function load(url){ // url='msg.txt'
	console.log(url);
	if (window.ActiveXObject) {//Explorer 4~10이전 버전 
		console.log('Explorer');	
		try {
			xhr = new ActiveXObject('Msxml2.XMLHTTP');	
		} catch(e) {
			xhr = new ActiveXObject('Microsoft.XMLHTTP');
		}
	} else if (window.XMLHttpRequest) { // Chrome이나 Explorer 11이상
		console.log('Chrome 혹은 Explorer 11 ');
		xhr = new XMLHttpRequest();
	
	} else {
		console.log('ajax  implementation not available');
	}
	console.log('readyState : ' + xhr.readyState);
	xhr.open('GET', url, true); // get방식, url 경로, true 비동기방식
	console.log('readyState : ' + xhr.readyState);
	
	xhr.onreadystatechange = function(){  //readystate가 바뀔때마다 callback function 이 계속 수행됨
		console.log('readyState : ' + xhr.readyState);
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {// 정상상태인지 확인 
				document.getElementById('rcvMsg').innerHTML = xhr.responseText; // 서버에서 응답한 내용이 저장되어 있고, responseText 로 꺼냄 
			}
		}
	}
	xhr.send(null); // 클라이언트쪽에서 서버로 요청을 날린다. 
}

</script>
</head>

<body>
<input type="button" value="get text" onclick="load('msg.txt')" />
<div id="rcvMsg"></div>
<input type="button" value="get text" onclick="load('msg.jsp')" /> // 프로그램도 로드할 수 있다. 
<div id="rcvMsg"></div>
</body>
</html>