<%@page import="com.multi.mvc03.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap JS (optional) -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%
		BookDTO bag = (BookDTO) request.getAttribute("bag");
	%>
	<div class="container mt-4">
		<table border="1" font-align="center" class="table">
			<tr>
				<th scope="col">아이디 :</th>
				<th scope="col">이름 :</th>
				<th scope="col">URL :</th>
				<th scope="col">IMG :</th>
			</tr>
			<tr>
				<td><%=bag.getId()%></td>
				<td><%=bag.getName()%></td>
				<td><a href="<%=bag.getUrl()%>"><%=bag.getUrl()%></a></td>
				<td><%=bag.getImg()%> <br></td>
			</tr>
		</table>
	</div>
	<a href="book.jsp"><button class="btn btn-primary">첫 화면으로...</button></a>
	<a href="list"><button class="btn btn-primary">북마크 목록 화면으로...</button></a>
</body>
</html>