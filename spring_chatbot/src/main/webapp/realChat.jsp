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
		var socket = new SockJS("${pageContext.request.contextPath}/chat")
		stompClient = Stomp.over(socket)
		stompClient.connect({}, function(frame) {
			console.log("연결됨." + frame)
			stompClient.subscribe("/topic/messages",function(messageOutput){
				console.log(JSON.parse(messageOutput.body))
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
		var from = document.getElementById("from").value
		var text = document.getElementById("text").value
		stompClient.send("/app/chat",{},JSON.stringify({
			"from" : from,
			"text" : text
		}))
	}
</script>
</head>
<body>
	<br>
	<br>
	<div>
		<div class="input-group mb-3 input-group-lg">
			<span class="input-group-text">닉네임 입력:</span> <input type="text"
				class="form-control" id="from">
		</div>
		<br />
		<div>
			<button id="connect" onclick="connect();" class="btn btn-danger"
				style="width: 200px">Connect</button>
			<button id="disconnect" disabled="disabled" onclick="disconnect();"
				style="width: 200px" class="btn btn-danger">Disconnect</button>
		</div>
		<br />
		<div id="conversationDiv">
			<input type="text" id="text" placeholder="Write a message..."
				class="form-control" />
			<button id="sendMessage" onclick="sendMessage();"
				class="btn btn-primary">Send</button>

			<p id="response" class="alert alert-success">
			<p>현준-누누티비 시즌2나온대요(11:15)</p>
			</p>
		</div>
	</div>
</body>
</html>