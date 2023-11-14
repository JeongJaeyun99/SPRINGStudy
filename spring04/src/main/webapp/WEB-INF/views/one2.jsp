<%@page import="com.multi.mvc04.MovieDTO"%>
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
<body>
	<%
		MovieDTO bag = (MovieDTO) request.getAttribute("bag2");
	%>
	<div class="container mt-4">
		<table border="1" font-align="center" class="table">
			<tr>
				<th scope="col">아이디 :</th>
				<th scope="col">제목 :</th>
				<th scope="col">평점 :</th>
				<th scope="col">개봉일 :</th>
				<th scope="col">IMG :</th>
			</tr>
			<tr>
				<td><%=bag.getId()%></td>
				<td><%=bag.getTitle()%></td>
				<td><%=bag.getRate()%></td>
				<td><%=bag.getDate()%></td>
				<td><%=bag.getImg()%> <br></td>
			</tr>
		</table>
	</div>
	<a href="movie.jsp"><button class="btn btn-primary">첫 화면으로...</button></a>
	<a href="list2"><button class="btn btn-primary">영화 목록 화면으로...</button></a>
</body>
</html>