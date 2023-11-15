<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function(){
		$('#b1').click(function(){
			$.ajax({
				url : "computer",
				data : {
					com : $('#com').val(),
					price1 : $('#price1').val(),
					mouse : $('#mouse').val(),
					price2 : $('#price2').val()
				},
				success : function(x) {
					$('#result').html(x)
				}
			})
		})
	})//body($)
	
</script>
</head>
<body>
	컴퓨터 종류 : <input id="com" value="맥"><br>
	컴퓨터 가격 : <input id="price1" value="2000"><br>
	마우스 종류 : <input id="mouse" value="로지텍"><br>
	마우스 가격 : <input id="price2" value="1000"><br>
	<button id="b1">컴퓨터 구매 항목 확인</button><br>
	<hr color="red">
	<div id="result"> ----결과 들어가는곳---- </div>
</body>
</html>