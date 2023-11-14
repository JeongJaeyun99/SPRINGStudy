<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
북마크 추가 요청되었음...<br> 글쓰기한 행 개수 : ${result}<hr>
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