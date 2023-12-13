<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/sockjs-0.3.4.js"></script>
<script type="text/javascript" src="resources/js/stomp.js"></script>
<script type="text/javascript"
	src="resources/js/webSocketSendToUserApp.js"></script>
<script type="text/javascript">
	var stompClient = null;
	function connect() {
		var socket = new SockJS("${pageContext.request.contextPath}/chat2")
		stompClient = Stomp.over(socket)
		stompClient.connect({}, function(frame) {
			console.log("연결됨." + frame)
			stompClient.subscribe("/topic/messages2",function(messageOutput){
				console.log(JSON.parse(messageOutput.body))
				json = JSON.parse(messageOutput.body)
				$('#response').append(json.menu + "<br>")
			}) // 채팅방 가입(채팅방 이름)
			
		})
	}
	function disconnect() {
		if (stompClient != null) {
			stompClient.disconnect()
			console.log("연결 끊어짐")
		}
	}
	function sendMessage() {
		var from = document.getElementById("guest").value
		var text = document.getElementById("text").value
		stompClient.send("/app/chat2",{},JSON.stringify({
			"guest" : guest,
			"text" : text
		}))
		$('#text').val("")
	}
</script>
</head>
<body onload="disconnect()">
	<br>
	<br>
	<img src="resources/img/chat3.png" width="500" height="200">
	<h3>다사 쇼핑몰에 오신것을 환영합니다.</h3>
	<div>
		<div class="input-group mb-3 input-group-lg">
			<span class="input-group-text">닉네임 입력:</span> <input type="text"
				class="form-control" id="guest">
		</div>
		<hr color="red">
		<br />
		<div>
			<button id="connect" onclick="connect();" class="btn btn-danger"
				style="width: 200px">Connect</button>
			<button id="disconnect" disabled="disabled" onclick="disconnect();"
				style="width: 200px" class="btn btn-danger">Disconnect</button>
		</div>
		<br />
		<div id="conversationDiv">
			<input type="text" id="text" placeholder="번호를 선택해 주세요."
				class="form-control" />
			<button id="sendMessage" onclick="sendMessage();"
				class="btn btn-primary">Send</button>
			<div>챗봇 >> 1)상품소개 2)주문확인</div>
			<p id="response" class="alert alert-success">

			</p>
		</div>
	</div>
</body>
</html>