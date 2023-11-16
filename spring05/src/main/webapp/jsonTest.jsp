<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url : "json2.jsp",
				success : function(response) {
					$('#result').html(response)
				}
			})
		})
	})
</script>
</head>
<body>
	<button id="b1">JSON으로 받아와보자.!</button>
	<hr color="red">
	<div id="result">ajax통신 결과들어가는 곳.</div>
</body>
</html>