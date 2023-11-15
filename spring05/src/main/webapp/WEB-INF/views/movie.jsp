<%@page import="java.util.Random"%>
<%@page import="com.multi.mvc05.MovieVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MovieVO vo = (MovieVO)request.getAttribute("vo");
%>
<table border="1">
		<thead>
			<tr>
				<th>영화제목</th>
				<th>영화가격</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${ vo.title }</td>
				<td>${ vo.price }</td>
			</tr>
			<tr>
				<td colspan="2"><a href="" id="text">문자인증받기</a></td>
			</tr>
		</tbody>
	</table>
</body>
</html>