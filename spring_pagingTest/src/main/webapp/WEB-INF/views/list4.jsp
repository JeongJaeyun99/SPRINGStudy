<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

</head>
<body>
	<h3>전체 자동차의 종류 수 : ${count}개</h3>
	<%
		int pages = (int)request.getAttribute("pages");
		for(int i = 1;i <= pages;i++){
	%>
		<a href="list4?page=<%= i %>"><button><%= i %></button></a>
	<% 
	
		}
		
	%>
	<table border="1" width="500" height="500">
		<tr bgcolor="lime">
			<td>id</td>
			<td>email</td>
			<td>car</td>
		</tr>
		<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.id}</td>
				<td>${vo.email}</td>
				<td>${vo.car}</td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>
