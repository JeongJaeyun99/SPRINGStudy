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
		$('#fruit').click(function(){
			$.ajax({
				url : "fruit",
				data : {
					fruit1 : "사과",
					fruit2 : "바나나",
					fruit3 : "메론",
					fruit4 : "딸기",
					fruit5 : "참외"
				},
				success : function(x){
					$('#result').html(x)
				}//success
			})//ajax
		})//fruit
		$('#travel').click(function(){
			$.ajax({
				url : "travel",
				data : {
					travel1 : "제주도",
					travel2 : "미국 동부",
					travel3 : "미국 서부",
					travel4 : "홍콩",
					travel5 : "평창"
				},
				success : function(x){
					$('#result').html(x)
				}//success
			})//ajax
		})//travel
	})//$
</script>
</head>
<body>
	<button id="fruit">과일 목록을 가지고 와보자</button>
	<button id="travel">여행 목록을 가지고 와보자</button>
	<hr color="red">
	<div id="result"></div>	
</body>
</html>