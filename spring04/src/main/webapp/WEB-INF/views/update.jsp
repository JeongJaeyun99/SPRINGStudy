<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
	<h3>북마크 수정 요청 되었음</h3>
	<br> 수정된 북마크의 행의 갯수 : ${result}개
	<br>
	<%
	int result = (int)request.getAttribute("result");
	if(result == 1){
%>
	<img src="resources/img/ok.jpg" width="100" height="100">
<%		
	}else{
%>
	<img src="resources/img/no.jpg" width="100" height="100">
<%
	}		
%>
<a href="book.jsp">첫 화면으로...</a>
</body>
</html>