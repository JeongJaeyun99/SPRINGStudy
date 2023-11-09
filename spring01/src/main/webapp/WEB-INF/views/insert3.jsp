<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<h3>상품 등록 요청 되었음</h3>
	<br> 등록된 상품의 행의 갯수 : ${result}개
	<br>
	<%
	int result = (int)request.getAttribute("result");
	if(result == 1){
%>
	<img src="resources/img/ok.jpg">
<% 		
	}else{
		%>
		<img src="resources/img/no.png">	
	<%
	}
%>
	<a href="product.jsp">상품 등록 페이지로 돌아가기</a>
</body>
</html>