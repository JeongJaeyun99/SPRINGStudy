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
							header = "<table><tr><td>아이디</td><td>제목</td><td>내용</td><td>작성자</td></tr>"
							$('#result').append(header)
							$(array).each(function(i, json) {
								console.log(json)
								id_value = json.id
								title_value = json.title
								content_value = json.content
								writer_value = json.writer
								mid= "<tr><td>" + id_value + "</td><td>" + title_value + "</td><td>" + content_value + "</td><td>" + writer_value +  "</td></tr>"
								data = id_value + " " + title_value + " "
										+ content_value + " " + writer_value + "<br>"
								$('#result').append(mid)
							})
							under = "</table>"
							$('#result').append(under)
						}// success
					})//ajax
				})//#b3
	})
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