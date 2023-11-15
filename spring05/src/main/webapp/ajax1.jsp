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
			$('result').empty()
			$.ajax({
				url : "test",
				success : function(x){
					alert("ajax통신 결과>> " + x)
					$('#result').html(x)
				}//success
			})//.ajax
			
		})//b1
		$('#b2').click(function(){
			$.ajax({
				url : 'test2',
				success : function(x){
					$('#result').html(x)
				}
			})
		})//b2
	})//body($)
	
</script>
</head>
<body>
	<button id="b1">컴퓨터 구매항목 확인1</button>
	<button id="b2">컴퓨터 구매항목 확인2</button>
	<hr color="red">
	<div id="result"> ----결과 들어가는곳---- </div>
</body>
</html>