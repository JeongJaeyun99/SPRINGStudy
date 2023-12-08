<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

</head>
<body>
	<h3>전체 글 수 : ${count}개</h3>
	<%
		int pages = (int)request.getAttribute("pages");
		for(int i = 1;i <= pages;i++){
	%>
		<a href="list2?page=<%= i %>"><button><%= i %></button></a>
	<% 
	
		}
		
	%>
	<table border="1" width="500" height="500">
		<tr bgcolor="lime">
			<td>번호</td>
			<td>id</td>
			<td>제목</td>
			<td>내용</td>
			<td>작성자</td>
		</tr>
		<c:forEach items="${list1}" var="vo">
			<tr>
				<td>${vo.bbs_no}</td>
				<td>${vo.id}</td>
				<td>${vo.title}</td>
				<td>${vo.content}</td>
				<td>${vo.writer}</td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>
