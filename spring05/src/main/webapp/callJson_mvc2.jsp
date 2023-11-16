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
		$('#b3').click(function() {
					$('#result').empty()
					$.ajax({
						url : "jsonbbs",
						success : function(array) {
							console.log(array)
							/* $(array).each(function(i, json) {
								console.log(json)
								id_value = json.id
								title_value = json.title
								content_value = json.content
								writer_value = json.writer

								data = id_value + " " + title_value + " "
										+ content_value + " " + writer_value + "<br>"
								$('#result').append(data)
							}) */
						}// success
					})//ajax
				})//#b3
	})// body
</script>

</head>
<body>
	<button id="b3">JSON array 으로 받아와보자.!</button>
	<hr color="red">
	<div id="result"
		style="background: yellow; width: 800px; height: 800px">ajax통신
		결과들어가는 곳.</div>
</body>
</html>